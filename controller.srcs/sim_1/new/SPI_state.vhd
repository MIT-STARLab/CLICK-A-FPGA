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

entity SPI_state is
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
end SPI_state;

architecture Behavioral of SPI_state is
begin
      
    process(sclk_i, nrst_i)
    variable temp: std_logic_vector(WIDTH - 1 downto 0); 
        begin
          if (nrst_i = '0') then
            temp:= (others => '0'); 
          else
            if (rising_edge(sclk_i)) then
              if (ncs_i = '0') then
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
