--
-- Copyright (C) 2015 Ryan Kingsbury
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
--use ieee.std_logic_textio.all;
--use std.textio.all;
--use work.hex_util.all;

entity tb_ppm_mod is
end entity;

architecture behavioural of tb_ppm_mod is
  constant SLOT_BITS       : integer := 8;
  constant fifo_delay      : integer := 15;

  signal sysClk            : std_logic;
  signal dispClk           : std_logic;  -- display version of sysClk, which leads it by 4ns

  signal rst_in            : std_logic;
  
  -- Modulation data interface
  signal slot_in        : std_logic_vector(7 downto 0); 
  signal slot_valid_in  : std_logic;
  signal slot_ready_out : std_logic;


  -- PPM output signals
  signal ppm_out        : std_logic;
  signal sym_sync_out   : std_logic; -- asserts in slot 0

  -- Status signal for debugging
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
  -- Instantiate UUT
  uut: entity work.ppm_mod
    generic map(
      SLOT_BITS  => SLOT_BITS
      )
    port map(
      rst_in     => rst_in,
      clk_in     => sysClk,

      slot_in        => slot_in,
      slot_valid_in  => slot_valid_in,
      slot_ready_out => slot_ready_out,

      ppm_out        => ppm_out,
      sym_sync_out   => sym_sync_out
      );

  -- Drive the clocks. In simulation, sysClk lags 4ns behind dispClk, to give a visual hold time
  -- for signals in GTKWave.
  process
  begin
    sysClk <= '0';
    wait for 2.5 ns;
    loop
      sysClk <= not(sysClk);  -- then sysClk transitions, 4ns later
      wait for 2.5 ns;
    end loop;
  end process;

  -- Drive the unit under test. Read stimulus from stimulus.sim and write results to results.sim
--  process
--    variable inLine  : line;
--    variable outLine : line;
--    file inFile      : text open read_mode is "stimulus.sim";
--    file outFile     : text open write_mode is "results.sim";
process 
  begin
  	-- test reset
	status <= reset;
    rst_in  <= '1';
    slot_in <= (others => 'Z');
    slot_valid_in <= '0';
       
    -- reset off
    wait for 15 ns;
	rst_in <= '0';
    wait for 15 ns;
    wait until rising_edge(sysClk);

-- if no new data is received (slot_valid_in = 0) then it sends the last data and finishes
-- if the mode is set without sending more data, then the modulator gets into tracking mode. In order to send [preamble + data] then I need to set the mode again.
-- the oposite is also true, if I'm sending data and want to get into Tracking mode, then I need to set the mode again without sending any data.
	-- test 32 ppm
	-- first byte
    slot_valid_in <= '1';
    slot_in <= X"9F";               -- 9F = 1001 1111, the first 1 is the preamble flag => 1 1111 = 31 => PPM32
    wait until slot_ready_out = '1'; -- data only changes once ready asserted
    wait for fifo_delay * 1 ns;       -- model delays with registering i/o and signals in fifo wrapper
	status <= frame32;
    slot_in <= X"01";  -- 1 slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"02";  -- 2 slot
	wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    status <= PPM32;
    slot_in <= X"03";  -- 3 slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"9F";    
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0'; -- tracking mode - Tracking mode sends the 0th slot until more data loaded into the FIFO
    status <= tracking32; -- it sends the same data all the time, a 0 aligned with the sync_out
    wait for 1000 ns;

	-- test 4 ppm
    slot_valid_in <= '1';
    slot_in <= X"83";    -- 83h = 1000 0011b,=> 11b = 3 => PPM4
	wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    status <= frame4;
    slot_in <= X"39"; -- 3 slot; 2 slot; 1 slot  - 39h = 0011 1001b, slot 1 = 01b = 1, slot 2 = 10b = 2, slot 3 = 11b = 3, the 3 is sent first, remember that only 7 bits are used
	wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"07"; -- 0 slot; 1 slot; 3 slot  - 07h = 0000 0111b, slot 1 = 11b = 3, slot 2 = 01b = 1, slot 3 = 00b = 0
    status <= PPM4;
	
	-- test 8 ppm tracking mode then data
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"87"; -- nota: 87h = 1000 0111b => 11b = 7 => PPM8
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0';
	status <= tracking8;
	wait for 2170 ns;
    slot_valid_in <= '1';
    slot_in <= X"87";
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"0A"; -- 1 slot; 2 slot;
    wait until slot_ready_out = '1';
    wait for fifo_delay* 1 ns;
    slot_in <= X"3D"; -- last slot; 5 slot;
    status <= PPM8;

	
	-- test framing,data modulation, and tracking for 16 ppm
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"8F";
    wait until slot_ready_out = '1';
	wait for fifo_delay*1 ns;
    slot_in <= X"00"; -- 0 slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    status <= frame16;
    slot_in <= X"01"; -- 1 slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    status <= PPM16;
    slot_in <= X"0F"; -- last slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"00";  -- 0 slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0';
	wait for 1340 ns;
    slot_valid_in <= '1';
    slot_in <= X"8F";
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0';
    status <= tracking16;
    wait for 1000 ns;

    --test 64 ppm
    slot_valid_in <= '1';
    slot_in <= X"BF";
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"3F"; -- last slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"00"; -- 0 slot
    status <= frame64;
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"10";  -- 32 slot
    status <= PPM64;
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"BF"; 
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0';
    status <= tracking64;
    wait for 1000 ns;

    -- test 128 ppm
    slot_valid_in <= '1';
    slot_in <= X"FF";
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"7F";    -- last slot
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"00";    -- 0 slot
    status <= frame128;
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"10";    -- 32 slot
    status <= PPM128;
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_in <= X"FF";    
    wait until slot_ready_out = '1';
    wait for fifo_delay*1 ns;
    slot_valid_in <= '0';
    status <= tracking128;
    wait for 1000 ns;
    
		
	wait for 1140 ns;
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

end architecture;