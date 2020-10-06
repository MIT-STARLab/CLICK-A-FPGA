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

entity sig_sync is
  generic (
    -- Synchronizer length (i.e. # of FF stages)
    STAGES : integer := 2
    );
  port(
    rst_in     : in  std_logic;
    clk_in     : in  std_logic;
    d_in       : in  std_logic;
    d_out      : out std_logic
    );
end entity;

architecture rtl of sig_sync is
  signal sr, sr_next : std_logic_vector(STAGES downto 0) := (others => '0');

begin
  -- Infer register
  process(clk_in, rst_in)
  begin
    if ( rising_edge(clk_in) ) then
      if ( rst_in = '1' ) then
        sr <= (others => '0');
      else
        sr <= sr_next;
      end if;
    end if;
  end process;

  -- Shift operation
  sr_next <= std_logic_vector(sr(STAGES-1 downto 0) & d_in);
  
  -- Output logic
  d_out <= sr(STAGES);

end architecture;