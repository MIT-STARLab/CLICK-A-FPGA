----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2017 02:26:09 PM
-- Design Name: 
-- Module Name: PID - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
 
entity PID is
   port (
       clk_i:     in std_logic;
       nrst_i:    in std_logic;
      -- en_i:      in std_logic;
       val_i:     in std_logic_vector(15 downto 0);
       pwm_o:     out std_logic
       );
end PID;

architecture Behavioral of PID is
signal count: std_logic_vector(15 downto 0);
begin
    process(clk_i, nrst_i)
    begin
      if (nrst_i = '0') then
        pwm_o <= '0';
        count <= (others => '0');
      else
        if(rising_edge(clk_i)) then
           count <= count + 1;
           if (count < val_i) then
             pwm_o <= '0';
           else
             pwm_o <= '1'; 
           end if;
         end if;
      end if;
    end process;
end Behavioral;

--entity PID is
--    Port (
--        clk_i:     in std_logic;
--        nrst_i:    in std_logic;
--        en_i:      in std_logic;
--        ldTempSetPoint_i:  in std_logic_vector(15 downto 0);
--        ldTemp_i:      in std_logic_vector(15 downto 0);
--        pwm_o:     out std_logic);
--end PID;

--architecture Behavioral of PID is

--begin
--pwm_o <= '0'; 

--end Behavioral;
