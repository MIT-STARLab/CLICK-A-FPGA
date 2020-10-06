library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use work.nodeLibrary.all;

entity checker is
  generic(
     COUNTER_WIDTH: integer := 64
  );
  port( 
    clk_i                : in std_logic;
    nrst_i               : in std_logic;
    en_i                 : in std_logic;
    a_i                  : in std_logic;
    b_i                  : in std_logic;
    errors_count_o       : out std_logic_vector(7 downto 0);
    errors_count_ready_o : out std_logic;
    ones_count_o         : out std_logic_vector(7 downto 0);
    ones_count_ready_o   : out std_logic 
     );
end entity;

architecture Behavioural of checker is
signal counter, errors_count, ones_count: std_logic_vector (7 downto 0);
signal latch: std_logic;

begin 
   process(clk_i, nrst_i)
   begin
   if (nrst_i = '0') then
      errors_count <= (others => '0');
      ones_count <= (others => '0');
      errors_count_o <= (others => '0');
      ones_count_o <= (others => '0');
      errors_count_ready_o <= '0';
      ones_count_ready_o <= '0';
      counter <= (others => '0');
   else
     if (rising_edge(clk_i)) then
      if (en_i = '0') then
         errors_count <= (others => '0');
         ones_count <= (others => '0');
         errors_count_o <= (others => '0');
         ones_count_o <= (others => '0');
         errors_count_ready_o <= '0';
         ones_count_ready_o <= '0';
         counter <= (others => '0');
         latch <= '0';
      else
         errors_count_o <= errors_count;
         ones_count_o <= ones_count;  
         if (counter = 255) then
             latch <= '1'; 
         else
             latch <= '0';
         end if;   
         counter <= counter + 1;
         if (latch = '1') then                 
            errors_count_ready_o <= '1';
            ones_count_ready_o <= '1';  
            if ((a_i xor b_i) = '1') then
               errors_count <= X"01";
            else 
               errors_count <= (others => '0');
            end if; 
            if (b_i = '1') then
               ones_count <= X"01";
            else 
               ones_count <= (others => '0');
            end if;    
         else
            errors_count_ready_o <= '0';
            ones_count_ready_o <= '0'; 
            if ((a_i xor b_i) = '1') then
               errors_count <= errors_count + 1;
            end if;
            if (b_i = '1') then
               ones_count <= ones_count + 1;
            end if;
         end if;
       end if;
      end if;
    end if;
    
 end process;     
    
end architecture;