----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/17/2017 09:58:27 AM
-- Design Name: 
-- Module Name: SPI1 - Behavioral
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

entity SPI1 is
    Port ( dInA_i : in std_logic_vector (23 downto 0);
           wrA_i : in std_logic;
           dInB_i : in std_logic_vector (23 downto 0);
           wrB_i : in std_logic;
           clk_i : in std_logic;
           nrst_i : in std_logic;
           mosi_o : out std_logic;
           sclk_o : out std_logic;
           nsync_o : out std_logic_vector (1 downto 0));
end SPI1;

architecture Behavioral of SPI1 is
  -- 24 bits, 2 don't connected + 3 CMD + 3 ADDR + 16 DATA
  -- Falling edge of the clock
  -- Commands and addresses (for the 4 internal DACs). 
  -- Indirect addressing from USB
  -- Multiple USB addresses (FPGAlink channels) mapped to the same device.
  -- nSYNC at the beginning of the transfer
  -- data can be transmitted up to 50 MHz
--  signal nrst : std_logic;
--  signal clk : std_logic; 
  signal wr, wrA1MHz, wrB1MHz : std_logic;
  signal mosi_temp : std_logic;
  signal sendData : std_logic;
  signal nsync, nsync_delayed: std_logic_vector(1 downto 0);
  signal pos : std_logic_vector(4 downto 0);
  signal data: std_logic_vector(0 to 23);
  signal en1MHz: std_logic;
  signal count, wrAcount, wrBcount: std_logic_vector(5 downto 0);


begin

--    mosi_o<= '0';
--    sclk_o<= '0';
--    ncs_o<= "00";
    
process (clk_i, nrst_i)
 begin
   if(nrst_i = '0') then
     count <= (others => '0');
     wrAcount <= (others => '0');
     wrBcount <= (others => '0');
     en1MHz <= '0';
     wrA1MHz <= '0';
     wrB1MHz <= '0';  
     sclk_o <= '0';
   else      
     if (rising_edge(clk_i)) then
       count <= count + 1;
       sclk_o <= not count(5);
       if (count = "111111") then
          en1MHz <= '1';
       else 
          en1MHz <= '0';
       end if;
       if (wrA_i = '1') then
          wrA1MHz <= '1';
          wrAcount <= count;
       else
          if (wrAcount = count) then
             wrA1MHz <= '0';
          end if;
       end if;

       if (wrB_i = '1') then
          wrB1MHz <= '1';
          wrBcount <= count;
       else
          if (wrBcount = count) then
             wrB1MHz <= '0';
          end if;
       end if;
      end if;
   end if;
end process;

process (clk_i, nrst_i)
begin
  if(nrst_i = '0') then
    wr <= '0';
    data <= (others => '0');
    nsync_o <= "11";
    nsync <= "11";
    nsync_delayed <= "11";        
  else
    if(rising_edge(clk_i)) then
      if (en1MHz = '1') then         
          nsync_delayed <= nsync;
          nsync_o <= nsync_delayed;
          if ((wrA1MHz = '1' or wrB1MHz = '1') and sendData = '0') then
             wr <= '1';
             if (wrA1MHz = '1') then
               data(0 to 23) <= dInA_i(23 downto 0);
               nsync <= "10";
             else 
               data(0 to 23) <= dInB_i(23 downto 0);
               nsync <= "01";
             end if;
          else
            --if(sendData = '1') then
             wr <= '0';
             if (sendData = '0' and wr = '0') then
               nsync <= "11";
             end if;
            --end if;
          end if;
       end if;
     end if;
  end if;
end process;      
     
process (clk_i, nrst_i)
 begin
   if(nrst_i = '0') then
     mosi_o <= '0';
     mosi_temp <= '0';
     pos <= "00000";
     sendData <= '0';
 --    ncs_o <= '1';
   else      
     if (rising_edge(clk_i)) then
       if (en1MHz = '1') then
     --      ncs_o <= not sendData;
           mosi_temp <= data(conv_integer(pos));
           mosi_o <= mosi_temp;
           if (wr = '1') then
              sendData <= '1';
              pos <= "00001";
           else
             if (sendData = '1') then 
                pos <= pos + 1;     
                if (pos = "10110") then    -- 10111 = 23 dec
                   sendData <= '0';
                --pos <= 0; this is not needed because it is reseted with the next wr_i pulse
                end if;
             end if;
            end if;
        end if;
     end if;
    end if;
  end process; 
  
--  sclk_o <= clk_i;   
  
  end Behavioral;