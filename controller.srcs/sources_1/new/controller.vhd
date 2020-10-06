----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2017 12:15:14 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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
use IEEE.STD_LOGIC_1164.all;
use work.nodeLibrary.all;
library UNIMACRO;
use UNIMACRO.vcomponents.all;
library UNISIM;
use UNISIM.vcomponents.all;
--library XilinxCoreLib;
--user XilinxCoreLib.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
    port ( 
       dIn_i:          in std_logic_vector (7 downto 0);
       rd_i:           in std_logic;
       wr_i:           in std_logic;
       dOut_o:         out std_logic_vector (7 downto 0);
       addr_i:         in std_logic_vector (6 downto 0);
       clk_i:          in std_logic;
       nrst_i:         in std_logic;
               
       spi1mosi_o:     out std_logic;
       spi1clk_o:      out std_logic;
       spi1nsync_o:    out std_logic_vector(1 downto 0);
       
       spi2miso_i:     in  std_logic;
       spi2clk_o:      out std_logic;
       spi2ncs_o:      out std_logic_vector(11 downto 0);
       
       spi3mosi_o:     out std_logic;
       spi3clk_o:      out std_logic;
       spi3ncs_o:      out std_logic;   
  
          
       uart_o:         out std_logic;
       uart_i:         in std_logic; 
       
       ldTemp_o:       out std_logic_vector(11 downto 0);
       nldTempWE_o:    out std_logic;
       
       comp_i:         in  std_logic_vector(1 downto 0);
       loadSw_o:       out std_logic_vector(3 downto 0);
       heater_o:       out std_logic_vector(1 downto 0);
       calDiode_o:     out std_logic;  
        -- Tx interface
       clk100_i:       in std_logic;
       ppm_tx_o:       out std_logic;
       ppm_rx_async_i: in std_logic;
       sym_sync_o:     out std_logic
       );
end controller;
 
architecture Structural of controller is
--signal interSPI1 : internalInterface;
--signal interSPI3 : internalInterface;
--signal interUART : internalInterface;
signal THR: INT24_type;
signal FSM: INT24_type;
signal LBC: INT16_type;
signal LTS: INT16_type;
signal EDFA_o: INT8_type; 
signal EDFA_i: std_logic_vector(7 downto 0);

--  cablear las siguientes senales a registros
signal spi2En : std_logic;
signal txEn: std_logic;
signal pidEn: std_logic;

--signal ldTempSetPoint : std_logic_vector (15 downto 0); --  <================================================================================================, 
signal ldTemp : std_logic_vector (15 downto 0); --  <================================================================================================, 
signal regFile32 : regFile32_type;
signal uart: uart_type;
signal pending: std_logic;

signal RST: std_logic;
signal error_cycle: std_logic_vector(7 downto 0);       

signal sem:sem_type;
signal sce,sie,  sst: std_logic_vector(7 downto 0); 

-- Modulator
signal flags, delay, fifo_dIn, errors_count, ones_count, fifo_flags: std_logic_vector(7 downto 0);
signal fifo_ptr, errors_fifo_ptr, ones_fifo_ptr: std_logic_vector(7 downto 0);
signal fifo_wr, rd_errors, rd_ones: std_logic;
signal mod_error, uart_tx_ready, uart_rx_new, dcm_locked: std_logic;


COMPONENT sem_v3_6_0
  PORT (
    status_heartbeat : OUT STD_LOGIC;
    status_initialization : OUT STD_LOGIC;
    status_observation : OUT STD_LOGIC;
    status_correction : OUT STD_LOGIC;
    status_classification : OUT STD_LOGIC;
    status_injection : OUT STD_LOGIC;
    status_essential : OUT STD_LOGIC;
    status_uncorrectable : OUT STD_LOGIC;
    monitor_txdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    monitor_txwrite : OUT STD_LOGIC;
    monitor_txfull : IN STD_LOGIC;
    monitor_rxdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    monitor_rxread : OUT STD_LOGIC;
    monitor_rxempty : IN STD_LOGIC;
    inject_strobe : IN STD_LOGIC;
    inject_address : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    icap_busy : IN STD_LOGIC;
    icap_o : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    icap_csb : OUT STD_LOGIC;
    icap_rdwrb : OUT STD_LOGIC;
    icap_i : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    icap_clk : IN STD_LOGIC;
    icap_request : OUT STD_LOGIC;
    icap_grant : IN STD_LOGIC
  );
END COMPONENT;
begin
--spi3mosi_o <= wr_i; 


--process (clk_i, nrst_i) 
--begin
--  if (nrst_i = '0') then
--     uart.send <= '0';
--     pending <= '0';
--     EDFA_i <= (others => '0');
--  else
--     if (rising_edge(clk_i)) then
--         if (uart.valid = '1') then
--             EDFA_i <= uart.dOut;
--         end if;
--         if (EDFA_o.wr = '1') then
--             pending <= '1';
--         end if;
--         if (pending = '1') then
--             if (uart.busy = '0') then
--                 uart.send <= '1';
--                 pending <= '0';
--              end if;
--         else
--             uart.send <= '0';
--         end if;     
--     end if;
--  end if; 
--end process;
   ldTemp_o <= LTS.data(11 downto 0);
   nldTempWE_o <= LTS.wr;
regFile_inst: entity work.registerFile
      port map(
         nrst_i => nrst_i,
         loadSw_o => loadSw_o, 
         heater_o => heater_o,  
         calDiode_o => calDiode_o, 
         --ldTemp_o => ldTemp_o, 
         --ldTemp_o => ldTemp, 
         comp_i => comp_i, 
         regFile32_i => regFile32, 
         clk_i=> clk_i, 
         dIn_i => dIn_i, 
         dOut_o => dOut_o, 
         addr_i=> addr_i,
         rd_i=> rd_i, 
         wr_i=> wr_i, 
         THR_o => THR, 
         FSM_o => FSM, 
         LBC_o => LBC,
         LTS_o => LTS,
         EDFA_o => EDFA_o, 
         EDFA_i => uart.dOut, 
         SCE_i => sce,
         SIE_i => sie,
         SST_i => sst,
         txEn_o => txEn, 
         pidEn_o => pidEn, 
         spi2En_o => spi2En,
         error_cycle_o => error_cycle,
         
         flags_i => flags,
         delay_o => delay, 
         fifo_flags_i => fifo_flags,
         -- data fifo interface
         fifo_dIn_o        => fifo_dIn,
         wr_o              => fifo_wr,
         data_fifo_ptr_i   => fifo_ptr,
    
         -- errors count fifo interface
         errors_count_i    => errors_count,
         rd_errors_o       => rd_errors,
         errors_fifo_ptr_i => errors_fifo_ptr,
    
         -- ones count fifo interface
         ones_count_i      => ones_count,
         rd_ones_o         => rd_ones,
         ones_fifo_ptr_i   => ones_fifo_ptr       
         );
        
SPI1_inst: entity work.SPI1
      port map(dInA_i => THR.data, wrA_i => THR.wr, dInB_i => FSM.data, wrB_i => FSM.wr, clk_i => clk_i, nrst_i => nrst_i, mosi_o => spi1mosi_o, sclk_o => spi1clk_o, nsync_o => spi1nsync_o);             

SPI2_inst: entity work.SPI2
      port map(regFile_o => regFile32, clk_i => clk_i, nrst_i => nrst_i, miso_i => spi2miso_i, sclk_o => spi2clk_o, ncs_o => spi2ncs_o, en_i => spi2En, addr_i => addr_i);

SPI3_inst: entity work.SPI3
      port map(mosi_o => spi3mosi_o, dIn_i => LBC.data, wr_i => LBC.wr, clk_i => clk_i, nrst_i => nrst_i, sclk_o => spi3clk_o, ncs_o => spi3ncs_o);
   
  -- UART_inst: entity work.UART
  --    port map(dIn_i => EDFA.data, wr_i => EDFA.wr, dOut_o => uart_o, clk_i=> clk_i, nrst_i => nrst_i);

-- manda el LSB primero (start en cero, lsb-msb, stop en uno)
  RST <= not nrst_i;
UART_inst: entity work.UART
       port map(DATA_IN => uart.dIn, DATA_SEND => uart.send, BUSY => uart.busy, DATA_OUT=> uart.dOut, DATA_VLD=> uart.valid, FRAME_ERROR => uart.error, UART_TXD => uart_o, UART_RXD => uart_i, CLK => clk_i, RST => RST);

modulator_top_inst: entity work.modulator_top_level
         PORT MAP (
            clk_i              => clk_i,
            clk100_i           => clk100_i,
            nrst_i             => nrst_i,
            -- Tx interface
            ppm_tx_o          => ppm_tx_o,
            ppm_rx_async_i    => ppm_rx_async_i,
            sym_sync_o        => sym_sync_o,
            
            -- data fifo interface
            din_i             => fifo_dIn,
            wr_i              => fifo_wr,
            data_fifo_ptr_o   => fifo_ptr,
       
            -- errors count fifo interface
            errors_count_o    => errors_count,
            rd_errors_i       => rd_errors,
            errors_fifo_ptr_o => errors_fifo_ptr,
       
            -- ones count fifo interface
            ones_count_o      => ones_count,
            rd_ones_i         => rd_ones,
            ones_fifo_ptr_o   => ones_fifo_ptr,
            
            -- parameters
            delay_i           => delay,
            flags_o           => fifo_flags,
            mod_error_o       => mod_error,
            locked_o          => dcm_locked 
            
         );
  uart.dIn <= EDFA_o.data;
  uart.send <= EDFA_o.wr;
  flags <= mod_error & not uart.busy & uart.valid & "0000" & dcm_locked;
  
--   PID_inst: entity work.PID
--     port map(clk_i=> clk_i, nrst_i =>  nrst_i, val_i => ldTempSetPoint, pwm_o => pwm_o);
   
--   SEM_CONT_inst: entity work.SEM_CONT
--      port map(
--         clk_i => clk_i, 
--         nrst_i =>  nrst_i, 
--         error_cycle_i => error_cycle, 
--         correctedErrors_o => sce,
--         insertedErrors_o => sie,
--         flags_o => sfl, 
--         status_o => sst,
--         error_o => sem.error,
--         status_i => sem.status);
   

-- sem.monitor.txfull <= '0';
-- sem.monitor.rxdata <= (others => '0'); 
-- sem.monitor.rxempty <= '0';
 
---- monitor_txdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
---- monitor_txwrite : OUT STD_LOGIC;
---- monitor_txfull : IN STD_LOGIC;
---- monitor_rxdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
---- monitor_rxread : OUT STD_LOGIC;
---- monitor_rxempty : IN STD_LOGIC;
 
--   SEM_inst: SEM_V3_6_0
--      port map(
--         inject_strobe => sem.error.strobe, 
--         inject_address => sem.error.address,
         
--         icap_busy => sem.icap.busy,  --
--         icap_o => sem.icap.o,     --
--         icap_clk =>  clk_i, --
--         icap_csb => sem.icap.csb, 
--         icap_i => sem.icap.i, 
--         icap_grant => '1', -- 
--         icap_request => sem.icap.request,
--         icap_rdwrb => sem.icap.rdwrb,
         
--         status_heartbeat => sem.status.heartbeat, 
--         status_initialization => sem.status.initialization, 
--         status_observation => sem.status.observation, 
--         status_correction => sem.status.correction, 
--         status_classification => sem.status.classification, 
--         status_injection => sem.status.injection, 
--         status_uncorrectable => sem.status.uncorrectable, 
--         status_essential => sem.status.essential, 
--         monitor_txdata => sem.monitor.txdata, 
--         monitor_txwrite => sem.monitor.txwrite, 
--         monitor_txfull => sem.monitor.txfull, 
--         monitor_rxdata => sem.monitor.rxdata, 
--         monitor_rxread => sem.monitor.rxread, 
--         monitor_rxempty => sem.monitor.rxempty);
   
--   ICAP_inst: ICAP_SPARTAN6
--      --generic map (
--      --   DEVICE_ID => X"04000093", -- Specifies the pre-programmed Device ID value
--       --  SIM_CFG_FILE_NAME => "NONE") -- Specifies the Raw Bitstream (RBT) file to be parsed by the simulation model
--      port map(
--         CLK => clk_i, 
--         CE => '0', --sem.error.address(11),-- 
--         WRITE => sem.icap.rdwrb, -- sem.error.address(9), 
--         I => sem.icap.i, -- sem.error.address(21 downto 6),
--         O => sem.icap.o,
--         BUSY => sem.icap.busy);
      
end Structural;

