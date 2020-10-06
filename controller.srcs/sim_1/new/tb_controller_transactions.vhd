----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/23/2017 09:24:23 AM
-- Design Name: 
-- Module Name: tb_controller - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;
use work.testLibrary.all;

entity tb_controller_transactions is
end tb_controller_transactions;

architecture Structural of tb_controller_transactions is
   signal clk, clk100, nrst: std_logic:= '1';
   signal FSM_dataRecieved, COMP_dataRecieved: std_logic_vector(23 downto 0);
   signal LDcurrent_dataReceived: std_logic_vector(15 downto 0);
   signal spi1clk, spi2clk, spi3clk: std_logic;
   signal spi1mosi, spi2miso, spi3mosi: std_logic;
   signal spi1nsync: std_logic_vector (1 downto 0);
   signal spi2ncs: std_logic_vector (11 downto 0);
   signal spi3ncs: std_logic;
   signal RST: std_logic;   
   signal uart: uart_type;
   signal uart_i, uart_o: std_logic;
   signal ldTemp: std_logic_vector(11 downto 0);
   signal nldTempWE: std_logic;
   signal loadSw: std_logic_vector(3 downto 0);
   signal heater: std_logic_vector(1 downto 0);
   signal calDiode: std_logic;  
   signal ppm_tx: std_logic;
   signal ppm_rx_async: std_logic;
   signal sym_sync: std_logic;
  -- variable f: integer := 20 ns;
   
   signal cpuInt: cpu_interface_type;
   signal demo_output: INT8_type;
   -- Status signal for debugging
   
begin
-----------------------------------------------------------------------------  
-- clocks & reset
-----------------------------------------------------------------------------

clk_gen(clk, CLK_L, CLK_H);
clk_gen(clk100, CLK100_L, CLK100_H);
nrst_gen(nrst, RESET_DELAY, RESET_TIME);  

-----------------------------------------------------------------------------  
-- Controller
-----------------------------------------------------------------------------     
controller_inst: entity work.controller 
     port map(   
            dIn_i=> cpuInt.d_cpu2dut,
            dOut_o=> cpuInt.d_dut2cpu,
            wr_i => cpuInt.wr,
            rd_i => cpuInt.rd,
            addr_i=> cpuInt.addr, 
            clk_i=> clk,
            clk100_i => clk100,
            nrst_i=>nrst,
                 
            spi1mosi_o=> spi1mosi,
            spi1clk_o=> spi1clk,
            spi1nsync_o=> spi1nsync, 
            
            spi2miso_i=> spi2miso,
            spi2clk_o=>spi2clk,
            spi2ncs_o=>spi2ncs, 
            
            spi3mosi_o=>spi3mosi,
            spi3clk_o=>spi3clk,
            spi3ncs_o=>spi3ncs,  
               
            uart_o => uart_o,
            uart_i => uart_i,
            
            ldTemp_o => ldTemp, 
            nldTempWE_o => nldTempWE, 
            
            comp_i=>"00", 
            
            loadSw_o => loadSw, 
            heater_o => heater, 
            calDiode_o => calDiode,           

            -- Tx interface
            ppm_tx_o => ppm_tx,
            ppm_rx_async_i => ppm_rx_async,
            sym_sync_o => sym_sync 
     );  

     ppm_rx_async <= transport ppm_tx after 2.9*period100;
     -- if the delay is modified, then the number of erros equals twice the number of ones 

-------------------------------------------------------------------
-- TestBed Controller
-------------------------------------------------------------------
tb_ctrl_inst: entity work.testCtrl
     port map(
         clk_i => clk,
         nrst_i => nrst,
         cpu_int => cpuInt,
         uart_int => uart,
         demo_int => demo_output,            
         FSM_dataRecieved => FSM_dataRecieved,
         COMP_dataRecieved => COMP_dataRecieved,
         LDcurrent_dataReceived => LDcurrent_dataReceived,
         ldTemp => ldTemp
     );
 -------------------------------------------------------------------
 -- SPI1
 -------------------------------------------------------------------

FSM_inst: entity work.SPI_state ---------------------------------------------------------------------------------- .SPI_pulse
          generic map (
            WIDTH => 24
          )
          port map( 
            sclk_i=> spi1clk,
            nrst_i=> nrst,
            ncs_i=> spi1nsync(1),
            mosi_i=> spi1mosi,
            dOut_o => FSM_dataRecieved
          );
          
COMP_inst: entity work.SPI_state ---------------------------------------------------------------------------------- .SPI_pulse
          generic map (
             WIDTH => 24
          )
          port map( 
             sclk_i=> spi1clk,
             nrst_i=> nrst,
             ncs_i=> spi1nsync(0),
             mosi_i=> spi1mosi,
             dOut_o => COMP_dataRecieved
          );
          
 -------------------------------------------------------------------
 -- SPI3
 -------------------------------------------------------------------
LDcurrent_inst: entity work.SPI_state
          generic map (
             WIDTH => 16
          )
          port map( 
             sclk_i=> spi3clk,
             nrst_i=> nrst,
             ncs_i=> spi3ncs,
             mosi_i=> spi3mosi,
             dOut_o => LDcurrent_dataReceived
          );    

 -------------------------------------------------------------------
 -- SPI2
 -------------------------------------------------------------------
current1_inst: entity work.SPI_rd
           generic map (VAL => x"A01")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(0), miso_o=> spi2miso);
current2_inst: entity work.SPI_rd
           generic map (VAL => x"A02")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(1), miso_o=> spi2miso);
current3_inst: entity work.SPI_rd
           generic map (VAL => x"A03")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(2), miso_o=> spi2miso);
current4_inst: entity work.SPI_rd
           generic map (VAL => x"A04")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(3), miso_o=> spi2miso);     
thermal1_inst: entity work.SPI_rd
           generic map (VAL => x"A05")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(4), miso_o=> spi2miso);
thermal2_inst: entity work.SPI_rd
           generic map (VAL => x"A06")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(5), miso_o=> spi2miso);              
thermal3_inst: entity work.SPI_rd
           generic map (VAL => x"A07")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(6), miso_o=> spi2miso);      
thermal4_inst: entity work.SPI_rd
           generic map (VAL => x"A08")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(7), miso_o=> spi2miso);      
thermal5_inst: entity work.SPI_rd
           generic map (VAL => x"A09")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(8), miso_o=> spi2miso);      
thermal6_inst: entity work.SPI_rd
           generic map (VAL => x"A0A")
           port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(9), miso_o=> spi2miso);                 
TOSA_inst: entity work.SPI_rd
          generic map (VAL => x"A0B")
          port map(nrst_i => nrst, sclk_i=> spi2clk, ncs_i=> spi2ncs(10), miso_o=> spi2miso);

-------------------------------------------------------------------
 -- UART
 -------------------------------------------------------------------
 RST <= not nrst;
UART_inst: entity work.UART
      port map(
        DATA_IN => uart.dIn, 
        DATA_SEND => uart.send, 
        BUSY => uart.busy, 
        DATA_OUT=> uart.dOut, 
        DATA_VLD=> uart.valid, 
        FRAME_ERROR => uart.error, 
        UART_TXD => uart_i, 
        UART_RXD => uart_o, 
        CLK => clk, 
        RST => RST
        );
uart.dIn <= transport uart.dOut after 10.1*period; -- connecting output to input 
uart.send <= transport uart.valid after 10.1*period;

  -----------------------------------------------------------------------------
  -- UART ERROR
  -----------------------------------------------------------------------------
    process(uart.error)
    begin
       if (uart.error = '1') then
          report "UART error" severity note;
       end if;    
       
    end process;

end Structural;