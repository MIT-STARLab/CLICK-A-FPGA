----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2017 01:34:50 PM
-- Design Name: 
-- Module Name: SPI2 - Behavioral
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
use work.nodeLibrary.all;
use work.memoryMapLibrary.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI2 is
    generic(
          CLK_DIVIDER: integer := 16
         );
    port ( 
          clk_i :    in std_logic;
          nrst_i:    in std_logic;
          en_i:        in std_logic;
          miso_i :   in std_logic;
          ncs_o :      out std_logic_vector (11 downto 0);
          sclk_o :   out std_logic;
          regFile_o: out regFile32_type;
          addr_i:    in std_logic_vector(6 downto 0)
          );
end SPI2;

architecture Behavioral of SPI2 is
type state_type is (IDLE, READING, WAITING);
--attribute 
signal state: state_type;
signal SR: std_logic_vector(1 to 16);
signal IC_id: std_logic_vector(3 downto 0); 
signal clkCount, bitCount: integer;
signal semasphore: std_logic_vector(15 downto 0);
signal first: std_logic;
begin

  process(clk_i, nrst_i)
    begin
     if (nrst_i = '0') then
        semasphore <= (others => '0');
     else 
        if(rising_edge(clk_i)) then
	       if(addr_i(6 downto 5) = "11" and addr_i(0) = '0') then
              semasphore(to_integer(unsigned(addr_i(4 downto 1)))) <= '1';
           else 
              if(addr_i(6 downto 5) = "11" and addr_i(0) = '1') then
                  semasphore(to_integer(unsigned(addr_i(4 downto 1)))) <= '0';
              end if;
           end if;
         end if;
      end if;
   end process;
--ncs_o <= (others=> '0');
--sclk_o <= '0';
--regFile_o <= (others => (others => '0'));
   
   process(clk_i,nrst_i)
   begin
     if(nrst_i = '0') then
       state <= IDLE;
       regFile_o <= (others=>(others=>'0'));
       ncs_o <= (others => '1');
       IC_id <= "0000"; 
       sclk_o <= '0';
       clkCount <= 0;
       bitCount <= 0;     
       SR <= (others => '0');  
       first <= '1';

     else
       if(rising_edge(clk_i)) then
         case state is
           when IDLE =>
             first <= '1';
             sclk_o <= '0';
             if (bitCount < 31) then
                if (clkCount < CLK_DIVIDER) then
                   clkCount <= clkCount + 1;
                else
                   clkCount <= 0;
                   bitCount <= bitCount + 1;
                end if;
                if (bitCount < 4) then
                   ncs_o <= (others=> '1'); 
                else
                   ncs_o(to_integer(unsigned(IC_id))) <= '0';      
                end if;
             else
                bitCount <= 0;
                clkCount <= 0;
                state <= READING;
             end if; 
           when READING =>
             if(bitCount > 16) then
                ncs_o <= (others => '1');
                state <= IDLE;
                if (IC_id = "1011") then
                  IC_id <= "0000";
                else
                  IC_id <= IC_id + 1;
                end if;
                bitCount <= 0; 
                clkCount <= 0;
                if (semasphore(to_integer(unsigned(IC_id))) = '0') then
                    regFile_o(to_integer(unsigned(IC_id & '0'))) <= "0000" & SR(1 to 4);
                    regFile_o(to_integer(unsigned(IC_id & '1'))) <= SR(5 to 12);
                end if;
              else
                if(clkCount = CLK_DIVIDER) then
                   sclk_o <= '1';
                   clkCount <= 0;
                   state <= WAITING;
                else
                   clkCount <= clkCount + 1;
                end if;
              end if; 
           when WAITING =>
              if(clkCount = CLK_DIVIDER-1) then
                 if( first = '1') then
                   first <= '0';
                 else
                   SR(bitCount) <= miso_i;
                 end if;
              end if;
              if(clkCount < CLK_DIVIDER) then
                 clkCount <= clkCount + 1;             
              else
                 sclk_o <= '0';
                 clkCount <= 0;
                 state <= READING;    
                 bitCount <= bitCount + 1;            
              end if;
         end case;
       end if;         
     end if;
   end process;
       
end Behavioral;
