library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;
use work.testLibrary.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity testCtrl is
    port (
        clk_i: in std_logic;
        nrst_i: in std_logic;
        cpu_int: inout cpu_interface_type;
        uart_int: in uart_type;
        demo_int: in INT8_type;
        FSM_dataRecieved: in std_logic_vector(23 downto 0);
        COMP_dataRecieved: in std_logic_vector(23 downto 0);
        LDcurrent_dataReceived: in std_logic_vector(15 downto 0);
        ldTemp: in std_logic_vector(11 downto 0)
    );
end testCtrl;

architecture Behavioral of testCtrl is
    signal testing: StateType := S_RESET;
    signal interface: InterfaceTestType := I_NONE;
begin
    activeInterface(testing, interface);
    process
 	  begin
  	 ------------------------------------------------------------------
     testing <= S_RESET;
 	  ------------------------------------------------------------------
 	     cpu_int.wr <= '0';
 	     cpu_int.d_dut2cpu <= (others => 'Z');
 	     wait until rising_edge(nrst_i);
 	     wait for 4*period;              	     

  	  ------------------------------------------------------------------
  	  testing <= S_COMP;
  	  print("Testing DAC for Comparators - THRa, THRb, THRc - SPI1");
  	  ------------------------------------------------------------------
  	     write(cpu_int, X"01", THRa);
  	     write(cpu_int, X"02", THRb);
  	     write(cpu_int, X"03", THRc);
         wait for 1 ms;
         check_value(COMP_dataRecieved, X"010203", "THR");

  	  ------------------------------------------------------------------
      testing <= S_FSM;
   	  print("Testing DAC for FSM - FSMa, FSMb, FSMc - SPI1");
  	  ------------------------------------------------------------------
         write(cpu_int, X"8A", FSMa);
         write(cpu_int, X"0B", FSMb);
         write(cpu_int, X"05", FSMc);
         wait for 1 ms;
         check_value(FSM_dataRecieved, X"8A0B05", "FSM");

  	  ------------------------------------------------------------------
      testing <= S_LDcurrent;
  	  print("Testing DAC for LD current controller - LBCa, LBCb - SPI3");    
  	  ------------------------------------------------------------------
         write(cpu_int, X"AA", LBCa);
         write(cpu_int, X"55", LBCb);
         wait for 1 ms;
         check_value(LDcurrent_dataReceived, X"AA55", "LD temp");

       ------------------------------------------------------------------
       testing <= S_LDtemp;
   	   print("Testing DAC for LD temp controller - LTSa, LTSb - Parallel bus");   
       ------------------------------------------------------------------    
          write(cpu_int, X"0A", LTSa);
          write(cpu_int, X"55", LTSb);
          wait for 2*period;
          check_value(ldTemp, X"0A55", "LD temp");

       ------------------------------------------------------------------
       testing <= S_HEATERS;
       ------------------------------------------------------------------
--          signal heater:       out std_logic_vector(1 downto 0);
       ------------------------------------------------------------------
       testing <= S_SWITCHES;
       ------------------------------------------------------------------
--          signal loadSw:       out std_logic_vector(3 downto 0);

       ------------------------------------------------------------------
       testing <= S_INT;
       ------------------------------------------------------------------
--       constant CTR: integer:=  0 ; --Control
--       constant ACC: integer:=  49 ; --Accepted commands
--       constant RCC: integer:=  50 ; --Rejected commands
--       constant LAC: integer:=  51 ; --Last acepted command
--       constant LRC: integer:=  52 ; --Last rejected command
--       constant FRC: integer:=  53 ; --Free running counter
--       constant VER: integer:=  54 ; --Core version
--       constant WRS: integer:=  55 ; --
--       constant WRA: integer:=  56 ; --  

      ------------------------------------------------------------------
      testing <= S_ADC;
   	  print("Testing ADCs - Reg 96 to 127 - SPI2");   
      ------------------------------------------------------------------
         for k in 1 to 2 loop
          for i in 1 to 11 loop
              read(cpu_int, 94+2*i);
              wait for period;
              check_value(cpu_int.d_dut2cpu, x"0A", "ADC (second byte)");
              wait for period;
             
              read(cpu_int, 94+2*i+1);    
              wait for period;    
              check_value(cpu_int.d_dut2cpu, std_logic_vector(to_unsigned(i,8)), "ADC (first byte)");         
              wait for period;
           end loop;
         end loop; 
      ------------------------------------------------------------------
      testing <= S_CALDIODE;
      ------------------------------------------------------------------
      --          signal calDiode:     out std_logic; 
       
      ------------------------------------------------------------------
      testing <= S_EDFA;
      print("Testing EDFA - ETX, ERX - UART");
      ------------------------------------------------------------------
--        write(cpu_int, X"FA", ETX);
--        wait until uart_int.valid = '1';
--        check_value(uart_int.dOut, x"FA", "UART Tx");
--        wait until falling_edge(uart_int.busy);
--        wait for 1 ms; 
--        read(cpu_int, ERX);
--        check_value(uart_int.dOut, x"FA", "UART Rx");
         -- the error flag is controlled using an independent process 
         read(cpu_int, FLG); -- clear flags
         uart_write(cpu_int, X"FA");
         uart_write(cpu_int, X"55"); 
         wait until falling_edge(uart_int.valid);
         check_value(uart_int.dOut, x"FA", "UART Tx");
         wait until rising_edge(uart_int.valid);
         check_value(uart_int.dOut, x"55", "UART Tx");
         uart_read(cpu_int);
         wait for 2*period;
         check_value(cpu_int.d_dut2cpu, x"FA", "UART Rx");
         uart_read(cpu_int);
         wait for 2*period;
         check_value(cpu_int.d_dut2cpu, x"55", "UART Rx");         

    ------------------------------------------------------------------
    testing <= S_MODULATOR;
    ------------------------------------------------------------------   
      wait for 2 us; -- time for DCM initialization
      write(cpu_int, X"06", DEL);  
      write(cpu_int, X"9F", DAT); -- 9F = 1001 1111, discarding the first 1 (preamble) we get 1 1111 = 31 => PPM32
      write(cpu_int, X"01", DAT);  
      write(cpu_int, X"02", DAT);  
      write(cpu_int, X"03", DAT);  
      write(cpu_int, X"9F", DAT); 
      wait for 5 us; 
     -- wait until rising_edge(clk)        
       -- test 4 ppm
      write(cpu_int, X"83", DAT);  -- 83h -> 1000 0011b, discarding the first 1 we get 11b = 3 => PPM4
      write(cpu_int, X"39", DAT); -- 3 slot; 2 slot; 1 slot   note: 39h = 0011 1001b, slot 1 = 01b = 1, slot 2 = 10b = 2, slot 3 = 11b = 3, the 3 is sent first, only 7 bits are used because the last one is used to flag the preamble
      write(cpu_int, X"07", DAT); -- 0 slot; 1 slot; 3 slot   note: 07h = 0000 0111b, slot 1 = 11b = 3, slot 2 = 01b = 1, slot 3 = 00b = 0
      wait for period;     
          
      -- test 8 ppm tracking mode then data
      write(cpu_int, X"87", DAT); -- 87h es 1000 0111b, discarding the first 1 (preamble), we get 11b = 7 => PPM8
      wait for 2170 ns;
      write(cpu_int, X"87", DAT);
      write(cpu_int, X"0A", DAT);-- 1 slot; 2 slot;
      write(cpu_int, X"3D", DAT); -- last slot; 5 slot;
       
      wait for 1 us;  
      read(cpu_int, ONE);
      read(cpu_int, ONE);
      read(cpu_int, ONE);
      read(cpu_int, ONE);
      read(cpu_int, ONE);
      read(cpu_int, ONE);
      wait for 100 ns;
      read(cpu_int, ERR);
      read(cpu_int, ERR);    
      read(cpu_int, ERR);
      read(cpu_int, ERR);  
      read(cpu_int, ERR);
      read(cpu_int, ERR); 
      wait for 1 us;   
     -----------------------------------------------------------------           
     testing <= S_END;
        wait for 1 ms;           
        assert false report "simulation ended" severity failure;
  	  end process;
 end Behavioral;