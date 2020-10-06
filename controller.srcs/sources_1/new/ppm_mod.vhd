--
-- Copyright (C) 2014-2015 Ryan Kingsbury
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
library ieee;
	
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ppm_mod is
  generic (
    -- Number of bits for slot counter and guard counter, sets upper limit on PPM order M
	-- TOTAL_BITS and ACQ_BITS set max amount of bits in register to count how many slots for
    -- total frame and acquisition sequence, respectively
    SLOT_BITS  : integer := 8 -- was 16 
    );
  port(
    rst_in     : in  std_logic;
    clk_in     : in  std_logic;

    -- Modulation data interface
    slot_in        : in   std_logic_vector(7 downto 0); -- one bit to support data fifo 
    slot_valid_in  : in   std_logic;
    slot_ready_out : out  std_logic;

  	-- Flags 
  	data_error 	   : out std_logic;
  	mod_active     : out std_logic;
    check_out      : out std_logic;
    
    -- PPM output signals
    ppm_out        : out  std_logic;
    sym_sync_out   : out  std_logic -- asserts in slot 0
    );
end entity;


architecture rtl of ppm_mod is
  type StateType is (S_RESET,S_INIT,S_DATA,S_FRAME,S_PREFRAME,S_TRACKING,S_ENDFRAME);
  signal state      : StateType := S_RESET;
  signal state_next : StateType;

  -- Register for active slot in current symbo
  signal slot_sel_reg, slot_sel_reg_next   : std_logic_vector(7 downto 0) := (others => '0'); -- changed to 7 FROM SLOT_BITS-1 

  -- Register for accumulating bits for active slot in next symbol
  signal slot_accum_reg, slot_accum_reg_next : std_logic_vector(7 downto 0) := "00100000"; -- needed for data fifo (initializes 16-ppm)

  -- Counter for slots (both data and guard)
  signal count_reg, count_reg_next   : unsigned(SLOT_BITS-1 downto 0) := (others => '0');
  signal M_reg, M_reg_next : unsigned(7 downto 0) := "00001111"; --initialize w/ 16-ppm
  signal G_reg, G_reg_next : unsigned(7 downto 0) := "00000100"; --iniitalize w/ 16-ppm

  -- Counters for framing
  signal acq_count_reg, acq_count_reg_next	: unsigned(4 downto 0) := (others => '0');
  
  -- Array of values for framing
  type ACQ_ARRAY is array (0 to 15) of std_logic_vector(3 downto 0);
  signal acq_sequence4  : ACQ_ARRAY := ("0000","0000","0001","0011","0000","0000","0011","0001","0010","0001","0010","0000","0011","0000","0011","0010");
  signal acq_sequence8  : ACQ_ARRAY := ("0000","0001","0011","0111","0000","0001","0111","0010","0100","0010","0101","0001","0111","0001","0111","0101");
  signal acq_sequence16 : ACQ_ARRAY := ("0000","0010","0111","1110","0001","0010","1111","0101","1000","0100","1010","0010","1110","0011","1110","1011"); 

-- Each preamble contains the same number of symbols but the length is different because the length of each symbol is different.

  -- Registers for modulation
  signal ppm_reg : std_logic := '0';
  signal ppm_reg_next : std_logic := '0';
  signal sym_sync_reg : std_logic := '0';
  signal sym_sync_reg_next : std_logic := '0';

  -- Misc signals
  signal symbol, symbol_next : unsigned(7 downto 0) := (others => '0');
  signal got_data, got_data_next: std_logic := '0';
  signal load_count_reg, load_count_reg_next: unsigned(3 downto 0) := (others => '0');
  signal syms, syms_next : unsigned(1 downto 0) := "01";
  signal syms_data_reg, syms_data_reg_next : unsigned(1 downto 0) := "01";
  signal mod_sym_reg, mod_sym_reg_next : unsigned(7 downto 0) := (others =>'0');

  -- Signals for testing
  signal check_count_reg,check_count_reg_next : unsigned(6 downto 0) := (others=>'0');
  signal data_error_reg, data_error_reg_next : std_logic := '0';
  signal mod_active_reg, mod_active_reg_next : std_logic := '0';
  signal invalid_data_reg, invalid_data_reg_next : std_logic := '0';

  -- Register inputs
  signal slot_data_reg, slot_data_reg_next : std_logic_vector(7 downto 0) := (others => '0');
  signal slot_valid_reg, slot_valid_reg_next : std_logic := '0';
  signal slot_ready_reg, slot_ready_reg_next : std_logic := '0';
  

begin
  -- Infer register
  process(clk_in, rst_in)
  begin
    if ( rising_edge(clk_in) ) then
      if ( rst_in = '1' ) then
        state <= S_RESET;
        slot_sel_reg <= (others=>'0');
        count_reg <= (others=>'0');
		acq_count_reg <= (others=>'0');
        ppm_reg <= '0';  
        sym_sync_reg <= '0';
        M_reg <= (others=>'0');
        M_reg(4) <= '1';
        G_reg <= (others=>'0');
		G_reg(4) <= '1';
		slot_accum_reg <= "00100000"; -- default to 16-ppm on restart
		symbol <= "00010011";
		got_data <= '0';
		slot_data_reg <= (others=>'0');
		slot_valid_reg <= '0';
		slot_ready_reg <= '0';
        load_count_reg <= (others=>'0');
        syms <= "01";
        syms_data_reg <= "01";
        mod_sym_reg <= (others =>'0');
		-- signals for testing
		check_count_reg <= (others => '0');
		data_error_reg <= '0';
		mod_active_reg <= '0';
        invalid_data_reg <= '0';
      else
        state <= state_next;
        slot_sel_reg <= slot_sel_reg_next;
        count_reg <= count_reg_next;
		acq_count_reg <= acq_count_reg_next;
        ppm_reg <= ppm_reg_next;
        sym_sync_reg <= sym_sync_reg_next;
        M_reg <= M_reg_next;
		slot_accum_reg <= slot_accum_reg_next;
		symbol <= symbol_next;
		G_reg <= G_reg_next;
		got_data <= got_data_next;
		slot_data_reg <= slot_data_reg_next;
		slot_valid_reg <= slot_valid_reg_next;
		slot_ready_reg <= slot_ready_reg_next;
        load_count_reg <= load_count_reg_next;
        syms <= syms_next;
        syms_data_reg <= syms_data_reg_next;
        mod_sym_reg <= mod_sym_reg_next;
	  -- signals for testing
		check_count_reg <= check_count_reg_next;
		data_error_reg <= data_error_reg_next;
		mod_active_reg <= mod_active_reg_next;
        invalid_data_reg <= invalid_data_reg_next;

      end if;
    end if;
  end process;
  
  process(clk_in)
  begin
     if (rising_edge(clk_in)) then
        if(state = S_TRACKING or state = S_FRAME or state = S_DATA) then
           check_out <= '1';
         else
           check_out <= '0'; 
         end if;
     end if;
  end process;
     
  -- Next state logic
  process (state,
           count_reg,
           slot_sel_reg,
           M_reg, G_reg,
           slot_valid_in,
           slot_in,
           sym_sync_reg,
		   slot_accum_reg,
		   acq_count_reg,
           acq_sequence4,
           acq_sequence8,
           acq_sequence16,
		   got_data,
		   symbol,
		   slot_data_reg,
		   slot_valid_reg,
		   slot_ready_reg,
           load_count_reg,
           syms,
           syms_data_reg,
           mod_sym_reg,
		   check_count_reg, --testing 
		   data_error_reg,  --testing
		   mod_active_reg,   --testing
           invalid_data_reg --testing
           )
		   
	begin
    state_next <= state;
    slot_sel_reg_next <= slot_sel_reg;
	acq_count_reg_next <= acq_count_reg;
    count_reg_next <= count_reg + 1;
	ppm_reg_next <= '0'; 
    M_reg_next <= M_reg;
    G_reg_next <= G_reg;
    sym_sync_reg_next <= sym_sync_reg;
    slot_accum_reg_next <= slot_accum_reg;
	symbol_next <= M_reg + G_reg;
	got_data_next <= got_data; -- asserted when one byte is read
	slot_data_reg_next <= slot_in;
	slot_valid_reg_next <= slot_valid_in;
	slot_ready_reg_next <= slot_ready_reg;
    load_count_reg_next <= load_count_reg;
    syms_next <= syms;
    syms_data_reg_next <= syms_data_reg;
    mod_sym_reg_next <= mod_sym_reg;
	--signals for testing
	check_count_reg_next <= check_count_reg;
	data_error_reg_next <= data_error_reg;
	mod_active_reg_next <= mod_active_reg;
    invalid_data_reg_next <= invalid_data_reg;

	-- Determine which symbol to send (which slot is active) based on the PPM order
	-- and the contents of slot_sel_reg
	-- syms_next tells how many symbols have to be modulated with each loaded data byte
    case M_reg is
		when "00000011" => --4-PPM
			G_reg_next <= "00000001";
	        syms_next <= "11";
            mod_sym_reg_next(6 downto 2) <= (others=>'0');

            if (syms_data_reg = "11") then
                mod_sym_reg_next(1 downto 0) <= unsigned(slot_sel_reg(5 downto 4));
            elsif (syms_data_reg = "10") then
                mod_sym_reg_next(1 downto 0) <= unsigned(slot_sel_reg(3 downto 2));
            elsif (syms_data_reg = "01") then
                mod_sym_reg_next(1 downto 0) <= unsigned(slot_sel_reg(1 downto 0));
            else
                -- takes care of 0 case...if syms_data_reg = "00", then we will have a new symbol 
                -- (either same ppm order - stay in S_DATA - or different ppm order - go to S_FRAME)
                mod_sym_reg_next(1 downto 0) <= unsigned(slot_sel_reg(5 downto 4));
            end if;
		when "00000111" => --8-PPM
			G_reg_next <= "00000010";
            syms_next <= "10";
            mod_sym_reg_next(6 downto 3) <= (others=>'0');

            if (syms_data_reg = "10") then
                mod_sym_reg_next(2 downto 0) <= unsigned(slot_sel_reg(5 downto 3));
            elsif (syms_data_reg = "01") then
                mod_sym_reg_next(2 downto 0) <= unsigned(slot_sel_reg(2 downto 0));
            else
                -- takes care of 0 case...see above - short: gets us ready for next symbol
                mod_sym_reg_next(2 downto 0) <= unsigned(slot_sel_reg(5 downto 3));
            end if;
		when "00001111" => --16-PPM
			G_reg_next <= "00000100";
            syms_next <= "01";
            mod_sym_reg_next(6 downto 4) <= (others=>'0');
            mod_sym_reg_next(3 downto 0) <= unsigned(slot_sel_reg(3 downto 0));

		when "00011111" => --32-PPM
			G_reg_next <= "00001000";
            syms_next <= "01";
            mod_sym_reg_next(6 downto 5) <= (others=>'0');
            mod_sym_reg_next(4 downto 0) <= unsigned(slot_sel_reg(4 downto 0));

		when "00111111" => --64-PPM
			G_reg_next <= "00010000";
            syms_next <= "01";
            mod_sym_reg_next(6 downto 6) <= (others=>'0');
            mod_sym_reg_next(5 downto 0) <= unsigned(slot_sel_reg(5 downto 0));

		when "01111111" => --128-PPM
			G_reg_next <= "00100000";
            syms_next <= "01";
            mod_sym_reg_next(6 downto 0) <= unsigned(slot_sel_reg(6 downto 0));

		when others =>
			-- ERROR case
            G_reg_next <= "00000100";
            syms_next <= "01";
            mod_sym_reg_next(6 downto 4) <= (others=>'0');
            mod_sym_reg_next(3 downto 0) <= unsigned(slot_sel_reg(3 downto 0));

    end case;	

    case state is

---------------------------------------------------------------------------------------------
------
------                                        New State
------
---------------------------------------------------------------------------------------------

      when S_DATA =>

		-- determine if modulation active or inactive (inactive if frame byte or tracking byte next) 
		if slot_accum_reg(7) = '1' then
			mod_active_reg_next <= '0';
		else
		    mod_active_reg_next <= '1';
		end if;
   
		-- quick fix on data error -- keep it always at zero (assuming no count data) 
		data_error_reg_next <= '0';
	  	
        -- ppm modulation
        if (count_reg="00000000") then
          sym_sync_reg_next <= '1';
        else
          sym_sync_reg_next <= '0';
        end if;
        if (count_reg=mod_sym_reg) then
          ppm_reg_next <= '1';
        else
          ppm_reg_next <= '0';
        end if;
        
        -- logic for setting up modulator for next symbol and for next state
        if (count_reg = symbol) then
        	-- end of symbol
            count_reg_next <= (others=>'0');
            if (slot_accum_reg(7) = '1') and (syms_data_reg = "00") then
            	-- done modulating data for current byte, next byte specifies framing
                state_next <= S_PREFRAME;
                got_data_next <= '0';
                syms_data_reg_next <= syms;
                mod_active_reg_next <= '0';
            elsif (slot_accum_reg(7) = '0') and (syms_data_reg = "00") then
            	-- done modulating data for current byte and no framing
                if invalid_data_reg = '1' then
					-- FIFO went empty. Go to S_INIT and wait for new frame
                    state_next <= S_INIT;
                    invalid_data_reg_next <= '0';
                    got_data_next <= '0';
                    syms_data_reg_next <= syms;
                    mod_active_reg_next <= '0';
                else
					-- FIFO at good state. stay in S_DATA and work on next byte
                    state_next <= S_DATA;
                    got_data_next <= '0';
                    syms_data_reg_next <= syms;
                end if;
            else
            	-- not done modulating data for current byte
                state_next <= S_DATA;
            end if;

        elsif (count_reg = M_reg) then
			-- At last slot, get next symbol ready (in guard slots so won't modulate past last slot)
			-- Makes sure mod_sym_reg is set before next symbol
            syms_data_reg_next <= syms_data_reg - 1;
            if (syms_data_reg = "01") then
                slot_sel_reg_next <= slot_accum_reg;
            else
                -- nothing
            end if;
        else
            -- do nothing
        end if;

        -- loading data 
        if (slot_valid_reg = '1') and (got_data = '0') then
			-- good load
            slot_accum_reg_next <= slot_data_reg;
            slot_ready_reg_next <= '1';
            got_data_next <= '1';
        elsif (slot_valid_reg = '0') and (got_data = '0') then
			-- error case if fifo empties. go to S_INIT when done modulating symbol. Blocks and dumps data 
			-- until next frame (entire frame lost) - consider some way of sending erasures later
            invalid_data_reg_next <= '1';
            slot_ready_reg_next <= '0';
        else
            slot_ready_reg_next <= '0';
        end if;

          

---------------------------------------------------------------------------------------------
------
------                                        New State
------
---------------------------------------------------------------------------------------------
      when S_INIT =>
      -- Wait for valid data while FPGA boots up or after end of frame
      -- transition once data loaded (load_count_reg makes sure data, valid, and ready are stable before 
	  -- moving to new state)
        invalid_data_reg_next <= '0';
        check_count_reg_next <= (others=>'0');
		mod_active_reg_next <= '0';
        count_reg_next <= (others=>'0');
		if load_count_reg(3) = '1' then
			if slot_valid_reg = '1' then
				slot_sel_reg_next <= slot_data_reg;
				slot_ready_reg_next <= '1';
				state_next <= S_PREFRAME;
			else
				slot_ready_reg_next <= '0';
				state_next <= S_INIT;
			end if;
			load_count_reg_next <= (others=>'0');
		else
			state_next <= S_INIT;
			load_count_reg_next <= load_count_reg + 1;
			slot_ready_reg_next <= '0';
		end if;

		
---------------------------------------------------------------------------------------------
------
------                                        New State
------
---------------------------------------------------------------------------------------------

        when S_PREFRAME =>
            -- Get ready for framing or tracking 
            -- loads ppm order, gets next byte (if available), goes to framing or tracking
            -- load_count_reg is used to make sure the ppm order is stable before transiting to new state
			mod_active_reg_next <= '0';
            check_count_reg_next <= (others=>'0');
            count_reg_next <= (others=>'0');
            M_reg_next <= '0' & unsigned(slot_sel_reg(6 downto 0));
            if load_count_reg(3) = '1' then
                if slot_sel_reg(7) = '0' then
                    state_next <= S_INIT;
                    slot_ready_reg_next <= '0';
                else
                    if slot_valid_reg = '1' then
                        syms_data_reg_next <= syms;
                        slot_sel_reg_next <= slot_data_reg;
                        state_next <= S_FRAME;
                        slot_ready_reg_next <= '1';
                    else
                        state_next <= S_TRACKING;
                        slot_ready_reg_next <= '0';
                    end if;
                end if;
                load_count_reg_next <= (others=>'0');
            else
                state_next <= S_PREFRAME;
                load_count_reg_next <= load_count_reg + 1;
                slot_ready_reg_next <= '0';
            end if;
                
		
        

---------------------------------------------------------------------------------------------
------
------                                        New State
------
---------------------------------------------------------------------------------------------

        when S_TRACKING =>
			-- Tracking mode sends the 0th slot until more data loaded into the FIFO, and if so
			-- goes into S_PREFRAME
			mod_active_reg_next <= '0';
            if (count_reg = "00000000") then
                sym_sync_reg_next <= '1';
                ppm_reg_next <= '1';
            else
                sym_sync_reg_next <= '0';
                ppm_reg_next <= '0';
            end if;
            if (count_reg = symbol) then
                if slot_valid_reg = '1' then
                    slot_sel_reg_next <= slot_data_reg;
                    state_next <= S_PREFRAME;
                    slot_ready_reg_next <= '1';
                else
                    state_next <= S_TRACKING;
                    slot_ready_reg_next <= '0';
                end if;
                count_reg_next <= (others=>'0');
            else
                state_next <= S_TRACKING;
                slot_ready_reg_next <= '0';
            end if;



---------------------------------------------------------------------------------------------
------
------                                        New State
------
---------------------------------------------------------------------------------------------

	   when S_FRAME =>
		   -- Send framing sequence here
		   mod_active_reg_next <= '0';
           slot_ready_reg_next <= '0';
           case M_reg is 
               when "00000011" => --4-PPM
			     -- Modulate
			     if (count_reg="00000000") then
			       sym_sync_reg_next <= '1';
			     else
			       sym_sync_reg_next <= '0';
			     end if;			
			     if (count_reg=unsigned(acq_sequence4(to_integer(acq_count_reg)))) then
			       ppm_reg_next <= '1';
			     else
			       ppm_reg_next <= '0';  
			     end if;
			   when "00000111" => --8-PPM
			     if (count_reg="00000000") then
			       sym_sync_reg_next <= '1';
			     else
			       sym_sync_reg_next <= '0';
			     end if;			
			     if (count_reg=unsigned(acq_sequence8(to_integer(acq_count_reg)))) then
			       ppm_reg_next <= '1';
			     else
			       ppm_reg_next <= '0';  
			     end if;
		       when others => --16-128 PPM	
			     if (count_reg="00000000") then
			       sym_sync_reg_next <= '1';
			     else
			       sym_sync_reg_next <= '0';
			     end if;			
			     if (count_reg=unsigned(acq_sequence16(to_integer(acq_count_reg)))) then
			       ppm_reg_next <= '1';
			     else
			       ppm_reg_next <= '0';  
			     end if;
		   end case;
		   -- check for end of one framing symbol
		   if count_reg=symbol then 
			 count_reg_next <= (others=>'0');
			 if (acq_count_reg="01111") then -- don't need to nest this if statement if acq_count_reg="10000"
			 	acq_count_reg_next <= (others=>'0');
				state_next <= S_DATA;
			 else
			 	acq_count_reg_next <= acq_count_reg + 1;
			 end if;
		   else
		   	-- do nothing
		   end if;


       when S_RESET =>
		mod_active_reg_next <= '0';
        -- reset all counts to 0 and reset everything else to reflect 16-ppm
	   	state_next <= S_INIT;
        slot_sel_reg_next <= (others=>'0');
        count_reg_next <= (others=>'0');
        ppm_reg_next <= '0';
        sym_sync_reg_next <= '0';
        M_reg_next <= "00001111";
        G_reg_next <= "00000100";
		slot_accum_reg_next <= "00100000";
        symbol_next <= "00010011";
   		acq_count_reg_next <= (others=>'0');
		got_data_next <= '0';

       when others => 
        state_next <= S_INIT;
    end case;

  end process;

  -- Misc Logic

  -- Output logic
  slot_ready_out <= slot_ready_reg;
  ppm_out <= ppm_reg;
  sym_sync_out <= sym_sync_reg;

  -- Testing Output Logic
  mod_active <= mod_active_reg;
  data_error <= data_error_reg;  

end architecture;