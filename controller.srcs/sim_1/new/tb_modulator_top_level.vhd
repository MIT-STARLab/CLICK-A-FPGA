library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;

entity tb_modulator_top_level is
end tb_modulator_top_level;

architecture Structural of tb_modulator_top_level is
   signal clk, clk100, nrst, wr, rd_errors, rd_ones, ppm_tx, sym_sync, ppm_rx_async: std_logic;
   signal dIn, flags, ones_count,errors_count, data_fifo_ptr: std_logic_vector(7 downto 0);
   signal errors_fifo_ptr, ones_fifo_ptr: std_logic_vector(10 downto 0);
  -- variable f: integer := 20 ns;
  
   constant clk_L        : time             := 10.4 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk_H        : time             := 10.4 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
   constant clk100_L     : time             := 5 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk100_H     : time             := 5 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 

   constant period       : time          := clk_H + clk_L;	    --1/24e6
   constant period100    : time          := clk100_H + clk100_L;	   
   constant reset_time   : time          := 20 * period + period/3;
   constant reset_delay  : time          := reset_time;

   type StateType is (
   	reset,
     PPM4,
     PPM8,
     PPM16,
     PPM32,
     PPM64,
     PPM128,
     frame4,
     frame8,
     frame16,
     frame32,
     frame64,
     frame128,
     tracking4,
     tracking8,
     tracking16,
     tracking32,
     tracking64,
     tracking128
   );
   signal status : StateType := reset;
   
begin

modulator_top_inst: entity work.modulator_top_level
  PORT MAP (
     clk_i              => clk,
     clk100_i            => clk100,
     nrst_i             => nrst,
     -- Tx interface
     ppm_tx_o          => ppm_tx,
     ppm_rx_async_i    => ppm_rx_async,
     sym_sync_o        => sym_sync,
     
     -- data fifo interface
     din_i             => dIn,
     wr_i              => wr,
     data_fifo_ptr_o  => data_fifo_ptr,

     -- errors count fifo interface
     errors_count_o    => errors_count,
     rd_errors_i       => rd_errors,
     errors_fifo_ptr_o => errors_fifo_ptr,

     -- ones count fifo interface
     ones_count_o      => ones_count,
     rd_ones_i        => rd_ones,
     ones_fifo_ptr_o   => ones_fifo_ptr,
     
     -- parameters
     delay_i           => "00000110",--6
     flags_o           => flags 
     
  );
  
  ppm_rx_async <= transport ppm_tx after 2.9*period100;
  -- if the delay is changed, then the number of errors equals twice the number of 1s.
 -----------------------------------------------------------------------------  
 -- clock
 -----------------------------------------------------------------------------

         process 
         begin
       	    clk <= '0';
       	    wait for clk_L;
       	    clk <= '1';
       	    wait for clk_H;
       	end process;

       	process 
           begin
              clk100 <= '0';
              wait for clk100_L;
              clk100 <= '1';
              wait for clk100_H;
         end process;     	

reading_errors:process(clk)
    variable reading: std_logic := '0'; 
    variable count: std_logic_vector(3 downto 0) := "0000";
    begin  
         if(nrst = '0') then
           rd_errors <= '0';
           reading := '0';
           count := "0000";
         else            
           if (rising_edge(clk)) then
             if (reading = '1') then
               if (count < 4) then
                  rd_errors <= '1';
                  count := count + 1;
               else
                  reading := '0';
                  rd_errors <= '0';
                  count := "0000";
               end if;
             else
                if (errors_fifo_ptr >= 4) then
                  reading := '1';
                end if;
             end if;
            end if;
      end if;
    end process;

reading_ones:process(clk)
        variable reading: std_logic := '0'; 
        variable count: std_logic_vector(3 downto 0) := "0000";
        begin  
          if(nrst = '0') then
            rd_ones <= '0';
            reading := '0';
            count := "0000";
          else            
              if (rising_edge(clk)) then
                 if (reading = '1') then
                   if (count < 4) then
                      rd_ones <= '1';
                      count := count + 1;
                   else
                      reading := '0';
                      rd_ones <= '0';
                      count := "0000";
                   end if;
                 else
                    if (ones_fifo_ptr >= 4) then
                      reading := '1';
                    end if;
                 end if;
              end if;
          end if;
        end process; 
process
 
  begin
  	-- test reset
	status <= reset;
    nrst  <= '0';
    dIn <= (others => 'Z');
    wr <= '0';
     
    -- reset off
    wait for 4*period; -- el DCIM necesita al menos un reset de 3 ciclos de clock
	nrst <= '1';
    wait until flags(1) = '1'; -- locked
    wait for 2*period;
    wait until rising_edge(clk);


    -- note: if the mode is set without sending data, then the core gets into tracking mode, in order to send [preamble + data] the mode must be set again
    -- otherwise, if I'm sending data and I want to go to tracking mode, then I need to set the mode again without sending new data.
	-- test 32 ppm
	-- first byte
    wr <= '1';
    dIn <= X"9F";               -- nota: 9F es 1001 1111, sacando el primer uno de preambulo, queda 1 1111 = 31 => PPM32
	wait for period;
	dIn <= X"01";  -- 1 slot
	status <= frame32;
	wait for period;
	dIn <= X"02";  -- 2 slot
	wait for period;
	dIn <= X"03";  -- 2 slot
    wait for period;
    dIn <= X"9F";
    wait for period;
    wr <= '0'; 
    wait for 5 us; 
    wait until rising_edge(clk);
 
     -- test 4 ppm
    wr <= '1'; 
    dIn <= X"83";    -- nota: 83h es 1000 0011b => 11b = 3 => PPM4
    wait for period;
    status <= frame4;    
    dIn <= X"39"; -- 3 slot; 2 slot; 1 slot  - 39h = 0011 1001b, slot 1 = 01b = 1, slot 2 = 10b = 2, slot 3 = 11b = 3, the 3 is sent first
    wait for period;
    dIn <= X"07"; -- 0 slot; 1 slot; 3 slot  - 07h = 0000 0111b, slot 1 = 11b = 3, slot 2 = 01b = 1, slot 3 = 00b = 0
    status <= PPM4;
    wait for period;
     
        
    -- test 8 ppm tracking mode then data
    dIn <= X"87"; -- nota: 87h es 1000 0111b => 11b = 7 => PPM8
    wait for period;
    wr <= '0';
    status <= tracking8;
    wait for 2170 ns;
    wr <= '1';
    dIn <= X"87";
    wait for period;
    dIn <= X"0A"; -- 1 slot; 2 slot;
    wait for period;
    dIn <= X"3D"; -- last slot; 5 slot;
    status <= PPM8;
	wait for period;
	wr <= '0';
 		
	wait for 10 us;
	-- test 4 ppm
   wr <= '1'; 
   dIn <= X"83";    -- 83h = 1000 0011b => 11b = 3 => PPM4
   wait for period;
   wr <= '0';
   status <= tracking4;
   wait for 100 us;
    assert false report "end of test" severity failure;
	wait;

--    while ( not endfile(inFile) ) loop
--      readline(inFile, inLine);
--      while ( inLine.all'length = 0 or inLine.all(1) = '#' or inLine.all(1) = ht or inLine.all(1) = ' ' ) loop
--        readline(inFile, inLine);
--      end loop;
--      slot_in       <= to_4(inLine.all(1)) & to_4(inLine.all(2)) & to_4(inLine.all(3)) & to_4(inLine.all(4));
--      slot_valid_in <= to_1(inLine.all(6));
--      M_in          <= to_4(inLine.all(8)) & to_4(inLine.all(9)) & to_4(inLine.all(10)) & to_4(inLine.all(11));
--      G_in          <= to_4(inLine.all(13)) & to_4(inLine.all(14)) & to_4(inLine.all(15)) & to_4(inLine.all(16));
--      rst_in        <= to_1(inLine.all(18));
--      wait for 10 ns;
----      write(outLine, from_4(data8_resp(7 downto 4)) & from_4(data8_resp(3 downto 0)));
--      write(outLine, slot_ready_out);
--      write(outLine, ' ');
--      write(outLine, sym_sync_out);
--      write(outLine, ' ');
--      write(outLine, ppm_out);
--      writeline(outFile, outLine);
--      wait for 10 ns;
--    end loop;
--    slot_in <= (others => '0');
--    slot_valid_in <= '0';
--    --M_in <= (others => 'Z');
--    --G_in <= (others => 'Z');
--    wait;
--  end process;
end process;

  	  
 
end Structural;