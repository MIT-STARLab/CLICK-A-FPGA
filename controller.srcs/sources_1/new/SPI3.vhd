----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/17/2017 09:59:55 AM
-- Design Name: 
-- Module Name: SPI3 - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI3 is
    Port ( dIn_i : in std_logic_vector (15 downto 0);
           wr_i : in std_logic;
           clk_i : in std_logic;
           nrst_i : in std_logic;
           mosi_o : out std_logic;
           sclk_o : out std_logic;
           ncs_o : out std_logic);
    
end SPI3;

architecture Behavioral of SPI3 is
  -- 16 bits, 4 IC address + 12 data 
  -- Din sampled during the rising edge of the clock
  -- nCS low during the whole transfer, data latched when nCS goes back to high pulse at the end => If more than 16 bits of data are clocked into the shift register before the nCS goes high, bits are pushed out of the register in FIFO fashion.
  -- Addresses 
signal count : std_logic_vector(1 downto 0);
signal nrst : std_logic;
signal clk : std_logic; 
signal wr : std_logic;
signal sendData : std_logic;
signal pos : std_logic_vector(3 downto 0);
signal data: std_logic_vector(0 to 15);

begin
clkAndRst: process (clk_i, nrst_i)
  begin
    if(nrst_i = '0') then
      count <= (others => '0');
      nrst <= '0';
    else
      if (rising_edge(clk_i)) then
        count <= count + 1;
        if (count = 0) then
           nrst <= '1';        
        end if;
      end if;    
     end if;        
  end process;
clk <= count(1);

--  ncs_o <= wr_i;
--  mosi_o <= dIn_i(0);
wrAndDataLatches: process (clk_i, nrst_i)
  begin
    if(nrst_i = '0') then
      wr <= '0';
      data <= (others => '0');
    else
      if(rising_edge(clk_i)) then
        if (wr_i = '1' and sendData = '0') then
           wr <= '1';
           data(0 to 15) <= dIn_i(15 downto 0);
        else
          if(sendData = '1') then
           wr <= '0';
          end if;
        end if;
       end if;
    end if;
  end process;
  
  
  process (clk, nrst)
   begin
     if(nrst = '0') then
       mosi_o <= '0';
       pos <= "0000";
       sendData <= '0';
       ncs_o <= '1';
     else      
       if (falling_edge(clk)) then
         ncs_o <= not sendData;
         mosi_o <= data(to_integer(unsigned(pos)));
         if (wr = '1') then
            sendData <= '1';
            pos <= "0000";
         else
           if (sendData = '1') then 
              pos <= pos + 1;     
              if (pos = "1111") then   
                 sendData <= '0';
              --pos <= 0; no hace falta pq se resetea con el proximo pulso de wr_i
              end if;
           end if;
          end if;
        end if;
      end if;
    end process;   
    
    
    
    -----------------------------------------------------
--  process (clk, nrst)
--  begin
--    if(nrst = '0') then
--      mosi_o <= '0';
--      pos <= "0000";
--      sendData <= '0';
--      ncs_o <= '1';
--    else      
--      if (falling_edge(clk)) then
--        ncs_o <= not sendData;
--        mosi_o <= dIn_i(conv_integer(pos));
--        if (wr = '1') then
--           sendData <= '1';
--           pos <= "0000";
--        else
--          if (sendData = '1') then 
--             pos <= pos + 1;     
--             if (pos = "1111") then   
--                sendData <= '0';
--             --pos <= 0; no hace falta pq se resetea con el proximo pulso de wr_i
--             end if;
--          end if;
--         end if;
--       end if;
--     end if;
--   end process;        

sclk_o <= clk; 
end Behavioral;