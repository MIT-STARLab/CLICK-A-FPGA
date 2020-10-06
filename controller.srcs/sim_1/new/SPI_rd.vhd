----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 08:11:34 PM
-- Design Name: 
-- Module Name: SPI_rd - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_rd is
    generic(
       VAL: std_logic_vector(0 to 11) := x"001"
       );
     port ( 
         sclk_i: in std_logic;
         nrst_i:  in std_logic;
         ncs_i:  in std_logic;
         miso_o: out std_logic
     );
end SPI_rd;

architecture Behavioral of SPI_rd is
   signal count: std_logic_vector(3 downto 0):= "0000";
   signal VAL16: std_logic_vector(0 to 15);
  -- variable delay: time := 
begin
 VAL16 <= VAL & "0000";

 process(sclk_i, nrst_i)
   variable first : boolean;
   begin
       if(nrst_i = '0') then
          count <= "0000";
          miso_o <= 'Z';
       else       
         if(falling_edge(sclk_i)) then
           if (ncs_i'last_event < 7.5us) then
              report "Conversion time violation" severity note;
           end if;
           if (count'last_event < 0.5 us ) then
              report "Clock frequency above maximum" severity note; -- fSCLK max = 2.1MHz,  period = 1/2.1e6 = 0.476 us
           end if;
           if (ncs_i='1') then
             first := true;
             miso_o <= 'Z';
             count <= "0000";
           else 
             if (ncs_i='0') then
               if (first) then
                  count <= "0001";
                  miso_o <= VAL16(0);
                  first:= false;
                else
                  count <= count + 1;
                  miso_o <= VAL16(to_integer(unsigned(count)));
                end if;
               end if;
             end if;
           end if;
         end if;
 end process;
 
end Behavioral;