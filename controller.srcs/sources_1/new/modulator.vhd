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

entity modulator is
port ( 
      clk200_i:          in std_logic;
      nrst_i:            in std_logic;

      -- PPM Modulator
      dIn_i:              in std_logic_vector(7 downto 0);
      wr_i:               in std_logic;
      ready_o:            out std_logic;
      ppm_tx_o:           out std_logic;
      sym_sync_o:         out std_logic;
      data_error_o:       out std_logic;
      
      -- var_delay
      delay_i :           in std_logic_vector(7 downto 0);
      
      -- sig_sync
      ppm_rx_async_i:     in std_logic;
      
      -- checker
      errors_count_o:       out std_logic_vector(7 downto 0);
      errors_count_ready_o: out std_logic;
      ones_count_o:         out std_logic_vector(7 downto 0);
      ones_count_ready_o:   out std_logic
      
      );
end modulator;

architecture Behavioral of modulator is
  constant SLOT_BITS       : integer := 8;
  signal rst, check, ppm_tx, ppm_tx_delayed, ppm_rx_sync, mod_active, start: std_logic;
begin
rst <= not nrst_i;

------------------------------------------------
-- PPM Modulator
------------------------------------------------
ppm_modulator_inst: entity work.ppm_mod
  generic map(
    SLOT_BITS  => SLOT_BITS
    )
  port map(
    rst_in     => rst,
    clk_in     => clk200_i,

    slot_in        => dIn_i,
    slot_valid_in  => wr_i,
    slot_ready_out => ready_o,

    ppm_out        => ppm_tx,
    sym_sync_out   => sym_sync_o,

    data_error     => data_error_o,
    mod_active    =>  mod_active,
    check_out     => check

    );
   ppm_tx_o <= ppm_tx;
------------------------------------------------
-- Variable delay block (for TX signal loopback)
------------------------------------------------
var_delay_inst: entity work.var_delay
  generic map(
    DELAY_BITS => 8,
    SHIFT_REG_WIDTH => 256
    )
  port map(
    clk_in     => clk200_i,
    d_in       => ppm_tx,
    delay      => delay_i,
    d_out      => ppm_tx_delayed
    );
     
    ------------------------------------------------
    -- Synchronization FF's for receive signal
    ------------------------------------------------
    sig_sync_inst: entity work.sig_sync
      generic map(
        STAGES => 2
        )
      port map(
        rst_in     => rst,
        clk_in     => clk200_i,
        d_in       => ppm_rx_async_i,
        d_out      => ppm_rx_sync
        );

--------------------------------------------------
---- Edge detector
--------------------------------------------------
--edge_det_inst: entity work.edge_det
--  port map(
--    clk_i  => clk200_i,
--    in_i   => mod_active,
--    out_o  => start
--    );

------------------------------------------------
-- Slot error checker
------------------------------------------------
checker_inst : entity work.checker
  generic map(
    COUNTER_WIDTH => 64
    )
  port map( 
    clk_i     => clk200_i,
    nrst_i    => nrst_i,
    en_i      => check,
    a_i       => ppm_tx_delayed,
    b_i       => ppm_rx_sync,

    errors_count_o => errors_count_o,
    errors_count_ready_o => errors_count_ready_o,
    ones_count_o => ones_count_o,
    ones_count_ready_o => ones_count_ready_o
    );

end Behavioral;
