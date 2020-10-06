library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;

entity tb_modulator is
end tb_modulator;

architecture Structural of tb_modulator is
   signal clk, clk200, nrst, wr, ready, ppm_tx, sym_sync, data_error, ppm_rx_async, errors_count_ready, ones_count_ready: std_logic;
   signal dIn,ones_count,errors_count: std_logic_vector(7 downto 0);
   constant fifo_delay      : integer := 15;
  -- variable f: integer := 20 ns;
  
   constant clk_L        : time             := 10.4 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk_H        : time             := 10.4 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
   constant clk200_L     : time             := 2.5 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk200_H     : time             := 2.5 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 

   constant period       : time          := clk_H + clk_L;	    --1/24e6
   constant period200    : time          := clk200_H + clk200_L;	   
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

modulator_inst: entity work.modulator
  PORT MAP (
     clk200_i              => clk200,
     nrst_i                => nrst,
  
    -- PPM Modulator
     dIn_i                => dIn,
     wr_i                 => wr,
     ready_o              => ready,
     ppm_tx_o             => ppm_tx,
     sym_sync_o           => sym_sync,
     data_error_o         => data_error,
     
     -- var_delay
     delay_i              => "00000110",--6
     
     -- sig_sync
     ppm_rx_async_i       => ppm_rx_async,
     
     -- checker
     errors_count_o       => errors_count,
     errors_count_ready_o => errors_count_ready,
     ones_count_o         => ones_count,
     ones_count_ready_o   => ones_count_ready
  );
  
  ppm_rx_async <= transport ppm_tx after 5.9*period200;
  -- if the delay is modified, then the number of errors equals twice the number of ones
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
              clk200 <= '0';
              wait for clk200_L;
              clk200 <= '1';
              wait for clk200_H;
         end process;     	

process
 
  begin
  	-- test reset
	status <= reset;
    nrst  <= '0';
    dIn <= (others => 'Z');
    wr <= '0';
       
    -- reset off
    wait for 15 ns;
	nrst <= '1';
    wait for 15 ns;
    wait until rising_edge(clk200);


-- note: if the mode is set without sending data, then the core gets into tracking mode, in order to send [preamble + data] the mode must be set again
-- otherwise, if I'm sending data and I want to go to tracking mode, then I need to set the mode again without sending new data.
	-- test 32 ppm
	-- first byte
	
	wr <= '1';
    dIn <= X"8F";               
    wait until ready = '1'; 
    wait for fifo_delay * 1 ns;       
    status <= tracking16;
    wr <= '0'; 
    wait for 10000 ns;	
	
    wr <= '1';
    dIn <= X"9F";               
    wait until ready = '1'; 
    wait for fifo_delay * 1 ns;       
	status <= tracking32;
    wr <= '0'; 
    wait for 10000 ns;

    wr <= '1';
    dIn <= X"FF";               
    wait until ready = '1'; 
    wait for fifo_delay * 1 ns;       
    status <= tracking128;
    wr <= '0'; 
    wait for 10000 ns;
  
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