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

entity modulator_top_level is
port ( 
      clk_i :            in std_logic;
      clk100_i:         in std_logic;
      nrst_i:            in std_logic;
      -- Tx interface
      ppm_tx_o:          out std_logic;
      ppm_rx_async_i:    in std_logic;
      sym_sync_o:        out std_logic;
      
      -- data fifo interface
      din_i:             in std_logic_vector(7 downto 0);
      wr_i:              in std_logic;
      data_fifo_ptr_o:   out std_logic_vector(7 downto 0); -- si no me alcanza ruteo los msb
      
      -- errors count fifo interface
      errors_count_o:    out std_logic_vector(7 downto 0); 
      rd_errors_i:       in std_logic;
      errors_fifo_ptr_o: out std_logic_vector(7 downto 0); -- si no me alcanza ruteo los msb

      -- ones count fifo interface
      ones_count_o:      out std_logic_vector(7 downto 0); 
      rd_ones_i:         in std_logic;
      ones_fifo_ptr_o:   out std_logic_vector(7 downto 0); -- si no me alcanza ruteo los msb

      -- parameters
      delay_i:           in std_logic_vector(7 downto 0);
      flags_o:           out std_logic_vector(7 downto 0);
      locked_o:          out std_logic;
      mod_error_o:       out std_logic
      
      );
end modulator_top_level;

architecture Behavioral of modulator_top_level is

signal clk200, rst, empty, ready, data_error, mod_ready, mod_wr, ppm_tx, sym_sync, errors_count_ready, ones_count_ready: std_logic;
signal mod_dIn,ones_count,errors_count, flags: std_logic_vector(7 downto 0);
signal flagDataFIFO, flagOnesFIFO, flagErrorsFIFO, rst_delayed, nrst_delayed: std_logic;
signal data_fifo_ptr, errors_fifo_ptr, ones_fifo_ptr: std_logic_vector(10 downto 0);

begin
rst <= not nrst_i;
--flags <= "000" & flagErrorsFIFO & flagOnesFIFO & flagDataFIFO & clk_gen_locked & data_error;
--flagDataFIFO <= '0' when data_fifo_ptr(10 downto 8) = "000" else '1'; 
--flagOnesFIFO <= '0' when ones_fifo_ptr(10 downto 8) = "000" else '1'; 
--flagErrorsFIFO <= '0' when errors_fifo_ptr(10 downto 8) = "000" else '1'; 
flags <= ones_fifo_ptr(9 downto 8) & errors_fifo_ptr(10 downto 8) & data_fifo_ptr(10 downto 8);
flags_o <= flags when rising_edge(clk_i);

------------------------------------------------
-- Modulator Clock Generation (200 MHz)
------------------------------------------------
--clock_gen_200: entity work.clocking
--  port map(
--    clk_in          => clk100_i,
--    rst_in          => rst,
--    clk_out         => clk200,
--    locked_out      => clk_gen_locked
--    );

clock_gen_200 : entity work.clk_wiz_v3_6_0
  port map
   (-- Clock in ports
    CLK_IN => clk100_i,
    -- Clock out ports
    CLK_OUT => clk200,
    -- Status and control signals
    RESET  => rst,
    LOCKED => locked_o
);

reset_circtuit: process(clk_i, nrst_i)
  variable count: integer:= 0;
begin
  if (nrst_i = '0') then
     nrst_delayed <= '0';
     count := 0;
  else
     if (rising_edge(clk_i)) then
        if (count < 64) then
           count := count + 1;
           nrst_delayed <= '0';
        else
           nrst_delayed <= '1';
        end if;
      end if;
   end if;
end process;  
         
modulator_inst: entity work.modulator
  PORT MAP (
     clk200_i              => clk200,
     nrst_i                => nrst_delayed,
  
    -- PPM Modulator
     dIn_i                => mod_dIn,
     wr_i                 => mod_wr,
     ready_o              => mod_ready,
     ppm_tx_o             => ppm_tx_o,
     sym_sync_o           => sym_sync_o,
     data_error_o         => mod_error_o,
     
     -- var_delay
     delay_i              => delay_i,
     
     -- sig_sync
     ppm_rx_async_i       => ppm_rx_async_i,
     
     -- checker
     errors_count_o       => errors_count,
     errors_count_ready_o => errors_count_ready,
     ones_count_o         => ones_count,
     ones_count_ready_o   => ones_count_ready
  );
rst_delayed <= not nrst_delayed;
fifo_data_inst: entity work.fifo_generator_v9_3_0
  PORT MAP (
    rst => rst_delayed,
    wr_clk => clk_i,
    rd_clk => clk200,
    din => din_i,
    wr_en => wr_i,
    rd_en => mod_ready,
    dout => mod_dIn,
  --  full => full_o,
    empty => empty,
    wr_data_count => data_fifo_ptr
  );    
  data_fifo_ptr_o <= data_fifo_ptr(7 downto 0);
  mod_wr <= not empty;
  
fifo_errors_inst: entity work.fifo_generator_v9_3_1
    PORT MAP (
      rst => rst_delayed,
      wr_clk => clk200,
      rd_clk => clk_i,
      din => errors_count,
      wr_en => errors_count_ready,
      rd_en => rd_errors_i,
      dout => errors_count_o,
    --  full =>
    --  empty => 
      rd_data_count => errors_fifo_ptr
    );    
  errors_fifo_ptr_o <= errors_fifo_ptr(7 downto 0);

fifo_ones_inst: entity work.fifo_generator_v9_3_1
    PORT MAP (
      rst => rst_delayed,
      wr_clk => clk200,
      rd_clk => clk_i,
      din => ones_count,
      wr_en => ones_count_ready,
      rd_en => rd_ones_i,
      dout => ones_count_o,
    --  full =>
    --  empty => 
      rd_data_count => ones_fifo_ptr
        );    
  ones_fifo_ptr_o <= ones_fifo_ptr(7 downto 0);
        
end architecture;