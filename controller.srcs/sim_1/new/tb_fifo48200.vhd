library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;

entity tb_fifo48200 is
end tb_fifo48200;
 
architecture Structural of tb_fifo48200 is
   signal clk, clk200, rst, nrst, wr_en, rd_en, full, empty: std_logic:= '1';
   signal dIn, dOut: std_logic_vector(7 downto 0);
   signal wr_count: std_logic_vector(10 downto 0);
   
  -- variable f: integer := 20 ns;
  
   constant clk_L           : time             := 10.4 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk_H           : time             := 10.4 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
   constant clk200_L        : time             := 2.5 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk200_H        : time             := 2.5 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 

   constant period       : time          := clk_H + clk_L;	    --1/24e6
   constant period200    : time          := clk200_H + clk200_L;	   
   constant reset_time   : time          := 20 * period + period/3;
   constant reset_delay  : time          := reset_time;


begin

rst <= not nrst;
fifo48200: entity work.fifo_generator_v9_3_0
  PORT MAP (
    rst => rst,
    wr_clk => clk,
    rd_clk => clk200,
    din => din,
    wr_en => wr_en,
    rd_en => rd_en,
    dout => dout,
    full => full,
    empty => empty,
    wr_data_count => wr_count
  );

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
     

  -----------------------------------------------------------------------------
  -- rst
  -----------------------------------------------------------------------------
    
      process
  	  begin
  	    nrst <= '1';
  	    wait for reset_delay;
  	    nrst <= '0'; 
  		wait for reset_time;
  		nrst <= '1';
  		wait;		
  	end process;

  -----------------------------------------------------------------------------
  -- perispherals
  -----------------------------------------------------------------------------
  
  -------------------------------------------------------
  -- DATA Y ADDRESS
  -------------------------------------------------------     
    
--  	WR <= wr_int;
      process
  	  
  	  ------------------
  	  --  PROCEDURES  --
  	  ------------------ 
  	  procedure write (constant data_temp: in std_logic_vector(7 downto 0)) is
  	    begin
  	      dIn <= data_temp;
--  		  if (full = '1') then
--  		     wait until full = '0';
--  		  end if;
  		  wr_en <= '1';
          wait for period;							
  		  wr_en <= '0';
  	  end write;
  
  	  procedure read is
  	    begin
--  	      if (empty = '1') then
--  		    wait until empty = '0';
--  	      end if;
  		  rd_en <= '1';
  	      wait for period200;	
  	      rd_en <= '0';						
  	  end read;
  
  	  ------------------------------------------------------------------------------------------
  	  -- Signals
  	  ------------------------------------------------------------------------------------------
      variable var: std_logic_vector(7 downto 0);
  	  begin
  	  
  	     wr_en <= '0';
  	     rd_en <= '0';
  	     wait until rising_edge(nrst);
  	     wait for 40*period;
 	     write(X"01");
 	     wait for 4*period;
 	     read;
 	     wait for 4*period;
  	     read;
  	     write(X"02");
  	     write(X"03");
 	     wait for 4*period;
 	     read;
 	     read;
 	     read;
 	     read;
 	     read;
 	     read;
 	     write(X"04");

  	    	     
                 
         wait for 100 ms;
                 
         assert false report "simulation ended" severity failure;

  	  end process;
end Structural;
 