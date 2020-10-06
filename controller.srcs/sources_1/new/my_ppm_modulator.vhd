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

entity my_ppm_modulator is
port ( 
      clk_i :     in std_logic;
      clk200_i:   in std_logic;
      nrst_i:     in std_logic;

      dIn_i:      in std_logic_vector(7 downto 0);
      wr_i:       in std_logic;
      full_o:     out std_logic;
      wr_count_o: out std_logic_vector (10 downto 0);

      PPMorder_i: in std_logic_vector(2 downto 0);
      sigOut_o:   out std_logic;
      frameMark_o: out std_logic     
      );
end my_ppm_modulator;

architecture Behavioral of my_ppm_modulator is
signal counter, value: std_logic_vector(8 downto 1);
signal symbols: std_logic_vector(7 downto 0);
signal lowIndex, highIndex, symsCount, symsPerWord: integer;
signal rdDataFlag, rst: std_logic;

signal rd_en, empty: std_logic:= '1';
signal dOut: std_logic_vector(7 downto 0);
signal PPMorder: integer;

begin


-- I don't add 25% but a 200 MHz pulse between consecutive symbols
rst <= not nrst_i;

fifoData: entity work.fifo_generator_v9_3_0
  PORT MAP (
    rst => rst,
    wr_clk => clk_i,
    rd_clk => clk200_i,
    din => din_i,
    wr_en => wr_i,
    rd_en => rd_en,
    dout => dout,
    full => full_o,
    empty => empty,
    wr_data_count => wr_count_o
  );

  
process(clk_i, nrst_i)
begin
   if (nrst_i = '0') then
      counter <= (others => '0');
      sigOut_o <= '0';
      rdDataFlag <= '0';
      highIndex <= 0; 
      lowIndex <= 0;
      symsCount <= 0;
      mode <= idle;
   else
      case mode is
        when idle then
          if (en_i = '1') then
             mode <= read;
             if (empty = '0') then
               rd_en <= '1';
               value <= dIn;
             end if;
          end if;
        when read then
             mode <= transmit;
             if (empty = '0') then
                rd_en <= '1';
                value <= dIn;
                counter <= symbols; -- para que en transmit entre derecho a leer la fifo
             end if;
         when transmit  
           if(counter = symbols) then    
             counter <= (others => '0');
             symsCount <= symsCount + 1; 
             sigOut_o <= '0';
             frameMark_o <= '1';
             if(symsCount = symsPerWord) then
               if (not empty)
                  rd_en <= '1';
                  stuffing <= false;
               else
                  if (en_i = '0') then
                     mode <= idle;
                   else;
                     stuffing <= true;
                   end if;
               end if;
               highIndex <= PPMorder; 
               lowIndex <= 1;   
               if (stuffing) then
                  value <= "00000000";
               else
                  value <= dOut;
               end if;
             else
                highIndex <= highIndex + PPMorder; 
                lowIndex <= lowIndex + PPMorder;    
             end if;
        else 
          counter <= counter + 1; 
          frameMark_o <= '0';
          if (counter(PPMorder downto 1) = value(highIndex downto lowIndex)) then
            sigOut_o <= '1'; 
          else 
            sigOut_o <= '0';
          end if;
        end if; 
      end if;     
   end if;
   

 PPMorder <= to_integer(unsigned(PPMorder_i));
 case PPMorder is
   when 1 =>
     symbols <= "00000010";
     symsPerWord <= 8;
   when 2 =>
     symbols <= "00000100";
     symsPerWord <= 4;
   when 3 =>
     symbols <= "00001000";
     symsPerWord <= 2;
   when 4 =>
     symbols <= "00010000";
     symsPerWord <= 2;
   when 5 =>
     symbols <= "00100000";    
     symsPerWord <= 1;
   when 6 =>
     symbols <= "01000000";
     symsPerWord <= 1;
   when others =>
     symbols <= "10000000";
     symsPerWord <= 1;
 end case;             
end process;
end Behavioral;
