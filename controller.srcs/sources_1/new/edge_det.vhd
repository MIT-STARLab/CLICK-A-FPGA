library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity edge_det is
      Port ( clk_i  : in  STD_LOGIC;
             in_i   : in  STD_LOGIC;
             out_o  : out  STD_LOGIC);
end edge_det;

architecture Behavioral of edge_det is
     signal in_d:STD_LOGIC;
begin
    process(clk_i)
    begin
         if clk_i= '1' and clk_i'event then
               in_d <= in_i;
         end if;
    end process;
    out_o<= (not in_d) and in_i; 
end Behavioral;