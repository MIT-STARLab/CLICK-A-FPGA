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

entity var_delay is
  generic (
    -- Maximum delay (in clock cycles)
    DELAY_BITS       : integer := 8; 
    SHIFT_REG_WIDTH  : integer := 256 -- this needs to be 2^DELAY_WIDTH
    );
  port(
    clk_in     : in  std_logic;
    d_in       : in  std_logic;
    delay      : in  std_logic_vector(DELAY_BITS-1 downto 0); -- plus one cycle
    d_out      : out std_logic
    );
end entity;

architecture rtl of var_delay is
  signal sr, sr_next : std_logic_vector(SHIFT_REG_WIDTH-1 downto 0) := (others => '0');
  signal q,q_next    : std_logic := '0';
begin
  -- Infer register
  process(clk_in)
  begin
    if ( rising_edge(clk_in) ) then
      sr <= sr_next;
      q <= q_next;
    end if;
  end process;

  -- Shift operation
  sr_next <= std_logic_vector(sr(SHIFT_REG_WIDTH-2 downto 0) & d_in);
  q_next <= sr(to_integer(unsigned(delay)));
  
  -- Output logic
  d_out <= q;

end architecture;