-- node-fpga_mitfork / bist / vhdl / clocking-gen / clocking_wrapper_xilinx.vhdl
--
-- Copyright (C) 2009-2012 Ryan Kingsbury
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

entity clocking is
	port(
		-- Clock and depth
		rst_in          : in  std_logic;
		clk_in          : in  std_logic;
        clk_out         : out std_logic;
		locked_out      : out std_logic
	);
end entity;

architecture structural of clocking is
--	signal inputFull   : std_logic;
--	signal outputEmpty : std_logic;
begin
-- Invert "full/empty" signals to give "ready/valid" signals
--	inputReady_out <= not(inputFull);
--	outputValid_out <= not(outputEmpty);

  -- The encapsulated Xilinx DCM
  my_dcm : entity work.dcm
    port map(
      
      -- Clock in ports
      CLK_IN1 => clk_in,

      -- Clock out ports
      CLK_OUT1 => clk_out,

      -- Status and control signals
      RESET  => rst_in,
      LOCKED => locked_out
      );
	
end architecture;