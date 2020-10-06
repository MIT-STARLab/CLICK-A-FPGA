----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2017 02:54:12 PM
-- Design Name: 
-- Module Name: watchdog - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity watchdog is
    Generic(
         MAX :integer := 1000);
    Port ( wr_i : in std_logic;
        rd_i : in std_logic;
        clk_i : in std_logic;
        nrst_i : in std_logic;
        rst_o : out std_logic);
end watchdog;

architecture Behavioral of watchdog is

begin
process(nrst_i, clk_i)
variable counter: integer ;
begin
    if (nrst_i = '0') then
      counter := 0;
      rst_o <= '1';
      else
        if (rising_edge(clk_i)) then
          if (rd_i = '1' or wr_i = '1') then
             counter := 0;
             rst_o <= '0';
          else 
            if (counter >= MAX) then
               counter := 0;
               rst_o <= '1';
            else
               counter := counter + 1;
               rst_o <= '0';
            end if;
          end if;
        end if;
    end if;     
end process;
end Behavioral;
