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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_controller is
end tb_controller;

architecture Structural of tb_controller is
   signal clk, clk100, nrst, wr, rd: std_logic:= '1';
   signal dIn, dOut: std_logic_vector(7 downto 0);
   signal addr: std_logic_vector(6 downto 0);
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
  
   constant clk_L        : time             := 10.4 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk_H        : time             := 10.4 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
   constant clk100_L     : time             := 5 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
   constant clk100_H     : time             := 5 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 

   constant period       : time          := clk_H + clk_L;	    --1/24e6
   constant period100    : time          := clk100_H + clk100_L;	   
   constant reset_time   : time          := 20 * period + period/3;
   constant reset_delay  : time          := reset_time;
   
   -- Status signal for debugging
    type StateType is (
        S_END,
        S_RESET,
        S_INT, -- INTERNALL
        S_FSM,
        S_COMP,
        S_LDCurrent,
        S_LDTemp,
        S_EDFA,
        S_ADC,
        S_HEATERS,
        S_SWITCHES,
        S_CALDIODE,
        S_MODULATOR
        );
   signal testing: StateType := S_RESET;
    type InterfaceTestType is (
        I_NONE,
        I_SPI1,
        I_SPI2,
        I_SPI3,
        I_DAC,
        I_UART,
        I_GPIO       
    );
    signal interface: InterfaceTestType := I_NONE;

begin
    process(testing) is
      begin
        case testing is
           when S_RESET|S_INT|S_END => interface <= I_NONE;
           when S_FSM => interface <= I_SPI1;
           when S_COMP => interface <= I_SPI1;
           when S_ADC => interface <= I_SPI2;
           when S_LDCurrent => interface <= I_SPI3;
           when S_LDTemp => interface <= I_DAC;
           when S_EDFA => interface <= I_UART;  
           when others => interface <= I_GPIO;
        end case;        
     end process;
controller_inst: entity work.controller
     port map(
            dIn_i=>dIn,
            rd_i=>rd,
            wr_i=>wr,
            dOut_o=>dOut, 
            addr_i=>addr, 
            clk_i=>clk,
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
     -- si modifico el delay entonces obtengo un numbero de errores igual al doble de la cantidad de ones

 -------------------------------------------------------------------
 -- SPI1
 -------------------------------------------------------------------

FSM_inst: entity work.SPI_pulse
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
          
COMP_inst: entity work.SPI_pulse
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
uart.dIn <= uart.dOut;-- conecto la salida a la entreda
uart.send <= uart.valid;
 -----------------------------------------------------------------------------  
 -- clock
 -----------------------------------------------------------------------------
       -- metodo 1
       --  clk <= not clk after period/2;
     	
       -- metodo 2  "Permite duty cycle distinto a 50%"
         process 
         begin
       	    clk <= '0';
       	    wait for clk_L;
       	    clk <= '1';
       	    wait for clk_H;
       	end process;
     	
       	process 
           begin
              clk100 <= '0';
              wait for clk100_L;
              clk100 <= '1';
              wait for clk100_H;
        end process;     
       -- metodo 3
       -- CLK <= '0', '1' after CLK_L;
       -- wait for CLK_H;

 
 
  -----------------------------------------------------------------------------
  -- rst
  -----------------------------------------------------------------------------
    
      process
  	  begin
  	    nrst <= '1';
  	    wait for reset_delay;
  	    nrst <= '0'; 
  		wait for reset_time;
  		nrst <= '1';
  		wait;		
  	end process;

  -----------------------------------------------------------------------------
  -- UART ERROR
  -----------------------------------------------------------------------------
    process(uart.error)
    begin
       if (uart.error = '1') then
          report "UART error" severity note;
       end if;    
       
    end process;
  -------------------------------------------------------
  -- DATA Y ADDRESS
  -------------------------------------------------------     
    
--  	WR <= wr_int;
      process
  	  
  	  ------------------
  	  --  PROCEDURES  --
  	  ------------------ 
  	  procedure write (constant data_temp: in std_logic_vector(7 downto 0); constant addr_temp: in integer) is
  	    begin
  	      addr <= std_logic_vector(to_unsigned(addr_temp, 7));
  	      dIn <= data_temp;
  	      rd <= '0';
  		  wr <= '1';
          wait for period;							
  		  wr <= '0';
  	  end write;

  	  procedure read (constant addr_temp: in integer) is
  	    begin
  	      rd <= '1';
  		  wr <= '0';
  	      addr <= std_logic_vector(to_unsigned(addr_temp, 7));
  	      wait for period;	
  	      rd <= '0';						
  	  end read;
    	  

  	  ------------------------------------------------------------------------------------------
  	  -- SEÑALES
  	  ------------------------------------------------------------------------------------------
      variable var: std_logic_vector(7 downto 0);
  	  begin
   	  ------------------------------------------------------------------
      testing <= S_RESET;
  	  ------------------------------------------------------------------
  	     wr <= '0';
  	     wait until rising_edge(nrst);
  	     wait for 4*period;              	     
  	  
--  	  ------------------------------------------------------------------
--  	  testing <= S_COMP;
--  	  report "----- Testing DAC for Comparators - THRa, THRb, THRc - SPI1 -----" severity note; 
--  	  ------------------------------------------------------------------
--  	     write(X"01", THRa);
--  	     write(X"02", THRb);
--  	     write(X"03", THRc);
--         wait for 10 ms;
--         if (COMP_dataRecieved = X"010203") then
--            report "THR working properly" severity note;
--         else
--            report "THR NOT working properly" &  integer'image(to_integer(unsigned(COMP_dataRecieved))) severity note;
--         end if;
--  	  ------------------------------------------------------------------
--      testing <= S_FSM;
--   	  report "----- Testing DAC for FSM - FSMa, FSMb, FSMc - SPI1 -----" severity note;
--  	  ------------------------------------------------------------------
--         write(X"8A", FSMa);
--         write(X"0B", FSMb);
--         write(X"05", FSMc);
--         wait for 10 ms;
--         if (FSM_dataRecieved = X"8A0B05") then
--            report "FSM working properly" severity note;
--         else
--            report "FSM NOT working properly" &  integer'image(to_integer(unsigned(FSM_dataRecieved))) severity note;
--         end if;         

--  	  ------------------------------------------------------------------
--      testing <= S_LDcurrent;
--  	  report "----- Testing DAC for LD current controller - LBCa, LBCb - SPI3 -----"  severity note;    
--  	  ------------------------------------------------------------------
--         write(X"AA", LBCa);
--         write(X"55", LBCb);
--         wait for 10 ms;
--         if (LDcurrent_dataReceived = X"AA55") then
--            report "LD temp working properly" severity note;
--         else
--            report "LD temp NOT working properly" &  integer'image(to_integer(unsigned(LDcurrent_dataReceived))) severity note;
--         end if; 
--       ------------------------------------------------------------------
--       testing <= S_LDtemp;
--   	   report "----- Testing DAC for LD temp controller - LTSa, LTSb - Parallel bus -----" severity note;    
--       ------------------------------------------------------------------    
--          write(X"0A", LTSa);
--          write(X"55", LTSb);
--          wait for 2*period;
--          if (ldTemp = X"0A55") then
--             report "LD temp working properly" severity note;
--          else
--             report "LD temp NOT working properly" &  integer'image(to_integer(unsigned(LDcurrent_dataReceived))) severity note;
--          end if; 

--       ------------------------------------------------------------------
--       testing <= S_HEATERS;
--       ------------------------------------------------------------------
----          signal heater:       out std_logic_vector(1 downto 0);
--       ------------------------------------------------------------------
--       testing <= S_SWITCHES;
--       ------------------------------------------------------------------
----          signal loadSw:       out std_logic_vector(3 downto 0);

--       ------------------------------------------------------------------
--       testing <= S_INT;
--       ------------------------------------------------------------------
----       constant CTR: integer:=  0 ; --Control
----       constant ACC: integer:=  49 ; --Accepted commands
----       constant RCC: integer:=  50 ; --Rejected commands
----       constant LAC: integer:=  51 ; --Last acepted command
----       constant LRC: integer:=  52 ; --Last rejected command
----       constant FRC: integer:=  53 ; --Free running counter
----       constant VER: integer:=  54 ; --Core version
----       constant WRS: integer:=  55 ; --
----       constant WRA: integer:=  56 ; --  


--      ------------------------------------------------------------------
--      testing <= S_ADC;
--   	  report "----- Testing ADCs - Reg 96 to 127 - SPI2 -----" severity note;    
--      ------------------------------------------------------------------
--         for k in 1 to 2 loop
--          for i in 1 to 11 loop
--              read(94+2*i);
--              wait for period;
--              if (dOut /= x"0A") then
--                  report "incorrect value in SPI2 interface, second byte: " & integer'image(to_integer(unsigned(dOut))) severity note;
--              else
--                  report "CORRECT value in SPI2 interface, second byte" severity note;
--              end if;	
--              wait for period;
              
--              read(94+2*i+1);    
--              wait for period;             
--              if(to_integer(unsigned(dOut)) /= i) then
--                  report "incorrect value in SPI2 interface, first byte: " & integer'image(to_integer(unsigned(dOut))) & integer'image(i) severity note;
--                --assert(to_integer(unsigned(dOut)) /= i) report "incorrect value in SPI2 interface" severity note;
--              else
--                  report "CORRECT value in SPI2 interface, first byte" severity note;
--              end if;
--              wait for period;
--           end loop;
--         end loop; 

--      ------------------------------------------------------------------
--      testing <= S_CALDIODE;
--      ------------------------------------------------------------------
--      --          signal calDiode:     out std_logic; 
        

--      ------------------------------------------------------------------
--      testing <= S_EDFA;
--      ------------------------------------------------------------------
--         write(X"FA", ETX);
--         wait until uart.valid = '1';
--         if (uart.dOut /= x"FA") then
--             report "incorrect value in UART Tx: " & integer'image(to_integer(unsigned(uart.dOut))) severity note;
--         else
--             report "CORRECT value in UART Tx" severity note;
--         end if;
--         -- el flag de error lo estoy controlando con un Process independient
    
--         -- UART RX

--         wait until falling_edge(uart.busy);
--         wait for 1 ms; 
--         read(ERX);
--         if (dOut /= x"FA") then
--             report "incorrect value in UART Rx: " & integer'image(to_integer(unsigned(dOut))) severity note;
--         else
--             report "CORRECT value in UART Rx" severity note;
--         end if;	
     ------------------------------------------------------------------
     testing <= S_MODULATOR;
     ------------------------------------------------------------------   
       wait for 2 us; -- time for DCM initialization
       write(X"06", DEL);  
       write(X"9F", DAT); -- nota: 9F es 1001 1111, sacando el primer uno de preambulo, queda 1 1111 = 31 => PPM32
       write(X"01", DAT);  
       write(X"02", DAT);  
       write(X"03", DAT);  
       write(X"9F", DAT); 
       wait for 5 us; 
      -- wait until rising_edge(clk)        
        -- test 4 ppm
       write(X"83", DAT);  -- 83h = 1000 0011b => 11b = 3 => PPM4
       write(X"39", DAT); -- 3 slot; 2 slot; 1 slot - 39h = 0011 1001b, slot 1 = 01b = 1, slot 2 = 10b = 2, slot 3 = 11b = 3, the 3 is sent first, only 7 bits are used
       write(X"07", DAT); -- 0 slot; 1 slot; 3 slot - 07h = 0000 0111b, slot 1 = 11b = 3, slot 2 = 01b = 1, slot 3 = 00b = 0
       wait for period;     
           
       -- test 8 ppm tracking mode then data
       write(X"87", DAT); -- 87h = 1000 0111b, => 11b = 7 => PPM8
       wait for 2170 ns;
       write(X"87", DAT);
       write(X"0A", DAT);-- 1 slot; 2 slot;
       write(X"3D", DAT); -- last slot; 5 slot;
        
       wait for 5 us;  
       read(ONE);
       read(ONE);
       read(ONE);
       read(ONE);
       read(ONE);
       read(ONE);
       wait for 100 ns;
       read(ERR);
       read(ERR);    
       read(ERR);
       read(ERR);  
       read(ERR);
       read(ERR); 
       wait for 1 us;   
      -----------------------------------------------------------------           
      testing <= S_END;
         wait for 1 ms;           
         assert false report "simulation ended" severity failure;
   	  end process;
end Structural;