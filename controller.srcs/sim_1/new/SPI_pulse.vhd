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

entity SPI_pulse is
   generic(
      WIDTH: integer := 8
      ); 
    port ( 
        sclk_i: in std_logic;
        nrst_i: in std_logic;
        ncs_i:  in std_logic;
        mosi_i: in std_logic;
        dOut_o: out std_logic_vector (WIDTH - 1 downto 0)
    );
end SPI_pulse;

architecture Behavioral of SPI_pulse is
signal ncs, ncs_temp: std_logic;
begin
   process(sclk_i)
    variable count: integer;
        begin
          if (falling_edge(sclk_i)) then
             if(ncs_i = '0') then
                count := 0;
                ncs_temp <= '0';
              else
                  if (count < WIDTH-2) then
                     count:= count + 1; 
                  else
                     ncs_temp <= '1';
                  end if; 
              end if; 
          end if;
    end process;
    
    ncs <= ncs_i and ncs_temp;  
      
    process(sclk_i, nrst_i)
    variable temp: std_logic_vector(WIDTH - 1 downto 0); 
        begin
          if (nrst_i = '0') then
            temp:= (others => '0'); 
          else
            if (falling_edge(sclk_i)) then
              if (ncs = '0') then
                  for i in WIDTH-2 downto 0 loop
                     temp(i+1) := temp(i);
                  end loop;
                  temp(0) := mosi_i;
               end if;
             end if;
          end if;
          dOut_o <= temp;
        end process;

end Behavioral;
