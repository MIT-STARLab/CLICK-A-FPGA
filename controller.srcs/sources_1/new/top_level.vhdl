--
-- Copyright (C) 2009-2012 Chris McClelland
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	port(
		-- FX2LP interface ---------------------------------------------------------------------------
		fx2Clk_in      : in    std_logic;                    -- 48MHz clock from FX2LP
		fx2Addr_out    : out   std_logic_vector(1 downto 0); -- select FIFO: "00" for EP2OUT, "10" for EP6IN
		fx2Data_io     : inout std_logic_vector(7 downto 0); -- 8-bit data to/from FX2LP

		-- When EP2OUT selected:
		fx2Read_out    : out   std_logic;                    -- asserted (active-low) when reading from FX2LP
		fx2OE_out      : out   std_logic;                    -- asserted (active-low) to tell FX2LP to drive bus
		fx2GotData_in  : in    std_logic;                    -- asserted (active-high) when FX2LP has data for us

		-- When EP6IN selected:
		fx2Write_out   : out   std_logic;                    -- asserted (active-low) when writing to FX2LP
		fx2GotRoom_in  : in    std_logic;                    -- asserted (active-high) when FX2LP has room for more data from us
		fx2PktEnd_out  : out   std_logic;                    -- asserted (active-low) when a host read needs to be committed early
 
           -- auxiliary
          h2fData_temp: out std_logic_vector(1 downto 0);
          h2fValid_temp: out std_logic;
          h2fReady_temp: out std_logic;     
          f2hData_temp: out std_logic_vector(1 downto 0);
          f2hValid_temp: out std_logic;
          f2hReady_temp: out std_logic;
          fx2Read_temp: out std_logic;
          fx2GotData_in_temp: out std_logic;
          fx2Write_out_temp: out std_logic;
          fx2GotRoom_in_temp: out std_logic;
          fx2PktEnd_out_temp: out std_logic;               
          wr_o :          out std_logic;
          toggle_o:       out std_logic;
         
          --
                       
         spi1mosi_o:     out std_logic;
         spi1clk_o:      out std_logic;
         spi1nsync_o:    out std_logic_vector(1 downto 0);
         
         spi2miso_i:     in  std_logic;
         spi2clk_o:      out std_logic;
         spi2ncs_o:      out std_logic_vector(11 downto 0);
         
         spi3mosi_o:     out std_logic;
         spi3clk_o:      out std_logic;
         spi3ncs_o:      out std_logic;    
         spi3nrst_o:     out std_logic;    
            
         uart_o:         out std_logic;
         uart_i:         in std_logic; 
         ldTemp_o:       out std_logic_vector(11 downto 0);
         nldTempWE_o:    out std_logic;
         nldTempPD_o:    out std_logic;
         nldTempLDAC_o:  out std_logic;
          
         comp_i:         in  std_logic_vector(1 downto 0);
         loadSw_o:       out std_logic_vector(3 downto 0);
         heater_o:       out std_logic_vector(1 downto 0);
         calDiode_o:     out std_logic;
                  
         -- Modulator
         clk100_i:       in std_logic;        
         ppm_tx_o:       out std_logic; 
         ppm_rx_async_i: in std_logic;
         sym_sync_o:     out std_logic

);
end top_level;

architecture Structural of top_level is
	-- Channel read/write interface -----------------------------------------------------------------
	signal chanAddr  : std_logic_vector(6 downto 0);  -- the selected channel (0-127)

	-- Host >> FPGA pipe:
	signal h2fData   : std_logic_vector(7 downto 0);  -- data lines used when the host writes to a channel
	signal h2fValid  : std_logic;                     -- '1' means "on the next clock rising edge, please accept the data on h2fData"
	signal h2fReady  : std_logic;                     -- channel logic can drive this low to say "I'm not ready for more data yet"

	-- Host << FPGA pipe:
	signal f2hData   : std_logic_vector(7 downto 0);  -- data lines used when the host reads from a channel
	signal f2hValid  : std_logic;                     -- channel logic can drive this low to say "I don't have data ready for you"
	signal f2hReady  : std_logic;                     -- '1' means "on the next clock rising edge, put your next byte of data on f2hData"
	-- ----------------------------------------------------------------------------------------------

	-- Needed so that the comm_fpga_fx2 module can drive both fx2Read_out and fx2OE_out
	signal fx2Read   : std_logic;

	-- Reset signal so host can delay startup
	signal fx2Reset  : std_logic;
	-- DEBUG RODRIGO
    signal fx2Write_out_temp1 : std_logic;
    signal fx2PktEnd_out_temp1 : std_logic;
	-- Node

--	signal spi2miso : std_logic;
--    signal comp : std_logic_vector(3 downto 0);
--    signal uart_i: std_logic; 
    signal nrst, gReset, toggle: std_logic;
    signal gpio: std_logic_vector(8 downto 1);
    signal loadSw_int: std_logic_vector(3 downto 0);
    signal nldTempWE_int: std_logic;
    
    --------------------------------------------------------------------------------------------------------
    -- signals for metastability filters
    signal spi2miso_ii, spi2miso_iii: std_logic;
    signal uart_ii, uart_iii: std_logic;
    signal comp_ii, comp_iii: std_logic_vector(1 downto 0);
   

    --------------------------------------------------------------------------------------------------------

begin
	-- CommFPGA module
	fx2Read_out <= fx2Read;
	fx2OE_out <= fx2Read;
	fx2Addr_out(0) <=  -- So fx2Addr_out(1)='0' selects EP2OUT, fx2Addr_out(1)='1' selects EP6IN
		'0' when fx2Reset = '0'
		else 'Z';
	comm_fpga_fx2 : entity work.comm_fpga_fx2
		port map(
			clk_in         => fx2Clk_in,
			reset_in       => '0',          -- gReset,
			reset_out      => fx2Reset,
			
			-- FX2LP interface
			fx2FifoSel_out => fx2Addr_out(1),
			fx2Data_io     => fx2Data_io,
			fx2Read_out    => fx2Read,
			fx2GotData_in  => fx2GotData_in,
			fx2Write_out   => fx2Write_out_temp1,
			fx2GotRoom_in  => fx2GotRoom_in,
			fx2PktEnd_out  => fx2PktEnd_out_temp1,

			-- DVR interface -> Connects to application module
			chanAddr_out   => chanAddr,
			h2fData_out    => h2fData,
			h2fValid_out   => h2fValid,
			h2fReady_in    => h2fReady,
			f2hData_in     => f2hData,
			f2hValid_in    => f2hValid,
			f2hReady_out   => f2hReady
		);

h2fReady <= '1';
f2hValid <= f2hReady;
--uart_i <= '0';
--spi2miso <= '0';
--comp <= (others => '0');


nrst <= not fx2Reset;
--f2hReady  
controller_inst: entity work.controller
       port map(
             dIn_i=>h2fData,  
             rd_i => f2hReady, 
             wr_i=>h2fValid, 
             dOut_o=> f2hData, 
             addr_i=>chanAddr,  
             clk_i=>fx2Clk_in,
             clk100_i => clk100_i,
             nrst_i=> nrst,

             -- pwm_o => pwm_o,
                
             spi1mosi_o => spi1mosi_o,
             spi1clk_o => spi1clk_o,
             spi1nsync_o => spi1nsync_o, 
           
             spi2miso_i => spi2miso_iii,
             spi2clk_o => spi2clk_o,
             spi2ncs_o => spi2ncs_o,
            
             spi3mosi_o => spi3mosi_o,    
             spi3clk_o => spi3clk_o,
             spi3ncs_o => spi3ncs_o,
  
              
             uart_o => uart_o,
             uart_i => uart_iii,
             
             ldTemp_o => ldTemp_o,
             nldTempWE_o => nldTempWE_int,
             comp_i => comp_iii,
             loadSw_o => loadSw_int, 
             heater_o => heater_o,
             calDiode_o => calDiode_o,
             
             -- Tx interface
             ppm_tx_o => ppm_tx_o,
             ppm_rx_async_i => ppm_rx_async_i, 
             sym_sync_o => sym_sync_o  
             );
  ----------------------------------------------------------           
  -- signals that could need metastability filters
  ----------------------------------------------------------
  --  spi2miso_i:     in  std_logic;
  --  uart_i:         in std_logic;
  --  comp_i:         in  std_logic_vector(1 downto 0);
  --  ppm_rx_async_i: in std_logic; ------------------> ?
   
   process(fx2Clk_in, nrst)
   begin
     if nrst = '0' then
       spi2miso_ii <= '0';
       spi2miso_iii <= '0';
       uart_ii <= '0';
       uart_iii <= '0';
       comp_ii <= (others => '0');
       comp_iii <= (others => '0');    
     else
       if rising_edge(fx2Clk_in) then
            spi2miso_ii <= spi2miso_i;
            spi2miso_iii <= spi2miso_ii; 
            uart_ii <= uart_i;
            uart_iii <= uart_ii;  
            comp_ii <= comp_i;
            comp_iii <= comp_ii;
        end if;
      end if;
   end process; 
 
 ----------------------------------------------------------           

  -- watchdog_inst: entity work.watchdog
  --   port map(clk_i=> fx2Clk_in, nrst_i => '1', rst_o => gReset, wr_i => h2fValid, rd_i => f2hReady);
wr_o <= h2fValid;
gpio <= h2fData;
h2fData_temp <= h2fData(1 downto 0);
h2fValid_temp <= h2fValid;
h2fReady_temp <= h2fReady;  
f2hData_temp <= f2hData(1 downto 0);
f2hValid_temp <= f2hValid;
f2hReady_temp <= f2hReady;
fx2Read_temp <= fx2Read;
fx2GotData_in_temp <= fx2GotData_in;
fx2Write_out <= fx2Write_out_temp1;
fx2Write_out_temp <= fx2Write_out_temp1;
fx2GotRoom_in_temp <= fx2GotRoom_in;
fx2PktEnd_out <= fx2PktEnd_out_temp1;
fx2PktEnd_out_temp <= fx2PktEnd_out_temp1;

toggle <= not(toggle) when rising_edge(fx2Clk_in); 
toggle_o <= toggle;
-- Atlys
--sseg_out <= "11111111";
--anode_out <= "0001";

--led_out(7) <= fx2Reset;
--led_out(6 downto 0) <= chanAddr;         

--led_out(0) <= fx2Reset;
--led_out(1) <= h2fValid;
--led_out(2) <= 
--led_out(3) <= 
--led_out(4) <= 
--led_out(5) <= spi3ncs_o;
--led_out(6) <= 
--led_out(7) <= spi3mosi_o;
loadSw_o <= loadSw_int;
--------------------------------------------------------------------------------------
-- DAC signals
--------------------------------------------------------------------------------------
 -- make sure the DAC I/Os stay low before the DAC is powered 
 -- (including DAC_nWE, DAC_nDP, DAC_nLDAC).
   nldTempPD_o <= loadSw_int(0); -- this is for power down, it could be used for power saving 
   nldTempWE_o <= nldTempWE_int and loadSw_int(0);
 -- this is for power down, it could be used for power saving 
-- nPD: When low, disables all buffer amplifier voltages to reduce supply current
-- nLDAC: Load DAC
   nldTempLDAC_o <= '0'; 
-- nCS: Chip select, not connected to the FPGA
-- nWE: Write enable, ya tengo nldTempWE_o
spi3nrst_o <= '1';
end Structural;