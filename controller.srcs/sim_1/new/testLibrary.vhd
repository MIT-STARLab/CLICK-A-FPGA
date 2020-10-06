library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

use work.nodeLibrary.all;
use work.memoryMapLibrary.all;

package testLibrary is
    constant CLK_L        : time          := 10.4 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
    constant CLK_H        : time          := 10.4 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
    constant CLK100_L     : time          := 5 ns;  				--22/40 * 100% = 55% -> duty cycle = 50% +/- 5%             
    constant CLK100_H     : time          := 5 ns;  				--18/40 * 100% = 45% -> duty cycle = 50% +/- 5% 
    
    constant PERIOD       : time          := CLK_H + CLK_L;	    --1/24e6
    constant PERIOD100    : time          := CLK100_H + CLK100_L;	   
    constant RESET_TIME   : time          := 20 * PERIOD + PERIOD/3;
    constant RESET_DELAY  : time          := 0 ns;

    type cpu_interface_type is record
      d_cpu2dut: std_logic_vector (7 downto 0);
      d_dut2cpu: std_logic_vector (7 downto 0);
      addr: std_logic_vector (6 downto 0);
      wr: std_logic;
      rd: std_logic;
    end record;   

    procedure write (signal cpu_int: inout cpu_interface_type; constant data_temp: in std_logic_vector(7 downto 0); constant addr_temp: in integer) is
    begin
      cpu_int.addr <= std_logic_vector(to_unsigned(addr_temp, 7));
      cpu_int.d_cpu2dut <= data_temp;
      cpu_int.rd <= '0';
      cpu_int.wr <= '1';
      wait for period;							
      cpu_int.wr <= '0';
    end write;
    
    procedure read (signal cpu_int: inout cpu_interface_type; constant addr_temp: in integer) is
    begin
      cpu_int.rd <= '1';
      cpu_int.wr <= '0';
      cpu_int.addr <= std_logic_vector(to_unsigned(addr_temp, 7));
      wait for period;	
      cpu_int.rd <= '0';						
    end read;

    procedure uart_write (signal cpu_int: inout cpu_interface_type; constant data_temp: in std_logic_vector(7 downto 0)) is
    begin
        loop
         -- wait for 5*period;
          read(cpu_int, FLG);
          if (cpu_int.d_dut2cpu(6) = '1') then
            write(cpu_int, data_temp, ETX);
            exit;
          end if;
        end loop;
    end uart_write;

    procedure uart_read (signal cpu_int: inout cpu_interface_type) is
    begin
        loop
         -- wait for 5*period;
          read(cpu_int, FLG);
          if (cpu_int.d_dut2cpu(5) = '1') then
            read(cpu_int, ERX);
            exit;
          end if;
        end loop;
    end uart_read;     
    
     type InterfaceTestType is (
        I_NONE,
        I_SPI1,
        I_SPI2,
        I_SPI3,
        I_DAC,
        I_UART,
        I_GPIO       
    );
    
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
   

   procedure activeInterface (testing: in StateType; signal interface: out InterfaceTestType) is   
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
     end procedure;
     
     
    procedure clk_gen(signal clk: out std_logic; CLK_L: in time; CLK_H: in time) is                                                          
    begin
      loop
       clk <= '0';
       wait for CLK_L;
       clk <= '1';
       wait for CLK_H;
     end loop;
    end procedure;
    
    procedure nrst_gen(signal nrst: out std_logic; RESET_DELAY: in time; RESET_TIME: in time) is                     
      begin
        nrst <= '1';
        wait for RESET_DELAY;
        nrst <= '0'; 
        wait for RESET_TIME;
        nrst <= '1';
        wait;		
    end procedure;
    
    procedure check_value(A, B: std_logic_vector; msg: in string) is
    begin       
        if (A = B) then
            report msg & " working properly" severity note;
        else
            report msg & " NOT working properly" &  integer'image(to_integer(unsigned(A))) severity note;
        end if;
     end procedure;

     procedure print(msg: in string) is  
        begin
            report "========================================================================================="; 
            report msg; 
            report "------------------------------------------------------------------------------------------------------------------------------------------------------------";
      end procedure;
end package;