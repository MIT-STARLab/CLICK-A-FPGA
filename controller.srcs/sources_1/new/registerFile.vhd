----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--    
-- Create Date: 01/16/2017 01:56:12 PM
-- Design Name: 
-- Module Name: registerFile - Behavioral
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

entity registerFile is
    port ( clk_i  : in std_logic;
           nrst_i : in std_logic;
           addr_i : in std_logic_vector(6 downto 0);
           rd_i: in std_logic;
           wr_i : in std_logic;
           dIn_i  : in std_logic_vector(7 downto 0);
           dOut_o : out std_logic_vector(7 downto 0);
           THR_o: out INT24_type;
           FSM_o: out INT24_type;
           LBC_o: out INT16_type;
           EDFA_o: out INT8_type;
           LTS_o: out INT16_type; 
           EDFA_i: in std_logic_vector(7 downto 0);
           SCE_i: in std_logic_vector(7 downto 0);
           SIE_i: in std_logic_vector(7 downto 0);
           SST_i: in std_logic_vector(7 downto 0);
           comp_i: in std_logic_vector(1 downto 0);
           regFile32_i: in regFile32_type;
           loadSw_o:       out std_logic_vector(3 downto 0);
           heater_o:       out std_logic_vector(1 downto 0);
           error_cycle_o:   out std_logic_vector(7 downto 0);
           calDiode_o:     out std_logic;
           txEn_o:  out std_logic;
           pidEn_o:  out std_logic;
           spi2En_o:  out std_logic;
           -- both ready asserted all the time
           -- Modulator interface
           delay_o: out std_logic_vector(7 downto 0);
           flags_i: in std_logic_vector(7 downto 0);
           fifo_flags_i:  in std_logic_vector(7 downto 0);
           ppm_data_o: out INT8_type;
           
           -- data fifo interface
           fifo_dIn_o:  out std_logic_vector(7 downto 0);
           wr_o:  out std_logic; 
           data_fifo_ptr_i:  in std_logic_vector(7 downto 0);
       
           -- errors count fifo interface
           errors_count_i:  in std_logic_vector(7 downto 0);
           rd_errors_o:  out std_logic; 
           errors_fifo_ptr_i:  in std_logic_vector(7 downto 0);
       
           -- ones count fifo interface
           ones_count_i:  in std_logic_vector(7 downto 0);
           rd_ones_o:  out std_logic; 
           ones_fifo_ptr_i:  in std_logic_vector(7 downto 0)
           );
end registerFile;

architecture Behavioral of registerFile is
--variable addr : integer := to_integer(unsigned(addr_i));
signal addr : integer;
signal regFile64 : regFile64_type;
signal regFile : regFile128_type;

signal wr_THR: std_logic;
signal wr_FSM: std_logic;
signal wr_LBC: std_logic;
signal wr_EDFA: std_logic;
signal uart_rx_valid_state: std_logic;
-- signal switches: std_logic_vector(7 downto 1);

begin

--addr <= to_integer(unsigned(addr_i));
--dOut_o <= regFile(addr);
dOut_o <= regFile(to_integer(unsigned(addr_i)));

--regFile(0 to 105) <= regFile64(0 to 105);
--regFile(106 to 127) <= regFile32_i(0 to 21);

regFile(0) <= regFile64(0);
regFile(1) <= regFile64(1);
regFile(2) <= regFile64(2);
regFile(3) <= regFile64(3);
regFile(4) <= regFile64(4);
regFile(5) <= regFile64(5);
regFile(6) <= regFile64(6);
regFile(7) <= regFile64(7);
regFile(8) <= regFile64(8);
regFile(9) <= regFile64(9);
regFile(10) <= regFile64(10);
regFile(11) <= regFile64(11);
regFile(12) <= regFile64(12);
regFile(13) <= regFile64(13);
regFile(14) <= regFile64(14);
regFile(15) <= regFile64(15);
regFile(16) <= regFile64(16);
regFile(17) <= regFile64(17);
regFile(18) <= regFile64(18);
regFile(19) <= regFile64(19);
regFile(20) <= regFile64(20);
regFile(21) <= regFile64(21);
regFile(22) <= regFile64(22);
regFile(23) <= regFile64(23);
regFile(24) <= regFile64(24);
regFile(25) <= regFile64(25);
regFile(26) <= regFile64(26);
regFile(27) <= regFile64(27);
regFile(28) <= regFile64(28);
regFile(29) <= regFile64(29);
regFile(30) <= regFile64(30);
regFile(31) <= regFile64(31);
regFile(32) <= regFile64(32);
regFile(33) <= regFile64(33);
regFile(34) <= regFile64(34);
regFile(35) <= regFile64(35);
regFile(36) <= regFile64(36);
regFile(37) <= regFile64(37);
regFile(38) <= regFile64(38);
regFile(39) <= regFile64(39);
regFile(40) <= regFile64(40);
regFile(41) <= regFile64(41);
regFile(42) <= regFile64(42);
regFile(43) <= regFile64(43);
regFile(44) <= regFile64(44);
regFile(45) <= regFile64(45);
regFile(46) <= regFile64(46);
regFile(47) <= regFile64(47);
regFile(48) <= regFile64(48);
regFile(49) <= regFile64(49);
regFile(50) <= regFile64(50);
regFile(51) <= regFile64(51);
regFile(52) <= regFile64(52);
regFile(53) <= regFile64(53);
regFile(54) <= regFile64(54);
regFile(55) <= regFile64(55);
regFile(56) <= regFile64(56);
--regFile(57) <= regFile64(57);
--regFile(58) <= regFile64(58);
--regFile(59) <= regFile64(59);
--regFile(60) <= regFile64(60);
--regFile(61) <= regFile64(61);
--regFile(62) <= regFile64(62);
--regFile(63) <= regFile64(63);

regFile(PDI) <= '0' & '0' & '0' & '0'& '0' & '0' & comp_i;

regFile(SCE) <= SCE_i;
regFile(SIE) <= SIE_i;
regFile(SST) <= SST_i;
regFile(FLG) <= flags_i(7 downto 6) & uart_rx_valid_state & flags_i(4 downto 0);
regFile(FFF) <= fifo_flags_i;
regFile(ERR) <= errors_count_i;
regFile(ONE) <= ones_count_i;
regFile(DFP) <= data_fifo_ptr_i;
regFile(EFP) <= errors_fifo_ptr_i;
regFile(OFP) <= ones_fifo_ptr_i;

regFile(96) <= regFile32_i(0);
regFile(97) <= regFile32_i(1);
regFile(98) <= regFile32_i(2);
regFile(99) <= regFile32_i(3);
regFile(100) <= regFile32_i(4);
regFile(101) <= regFile32_i(5);
regFile(102) <= regFile32_i(6);
regFile(103) <= regFile32_i(7);
regFile(104) <= regFile32_i(8);
regFile(105) <= regFile32_i(9);
regFile(106) <= regFile32_i(10);
regFile(107) <= regFile32_i(11);
regFile(108) <= regFile32_i(12);
regFile(109) <= regFile32_i(13);
regFile(110) <= regFile32_i(14);
regFile(111) <= regFile32_i(15);
regFile(112) <= regFile32_i(16);
regFile(113) <= regFile32_i(17);
regFile(114) <= regFile32_i(18);
regFile(115) <= regFile32_i(19);
regFile(116) <= regFile32_i(20);
regFile(117) <= regFile32_i(21);
regFile(118) <= regFile32_i(22);
regFile(119) <= regFile32_i(23);
regFile(120) <= regFile32_i(24);
regFile(121) <= regFile32_i(25);
regFile(122) <= regFile32_i(26);
regFile(123) <= regFile32_i(27);
regFile(124) <= regFile32_i(28);
regFile(125) <= regFile32_i(29);
regFile(126) <= regFile32_i(30);
regFile(127) <= regFile32_i(31);


--regFile <= (regFile102 , regFile32_i);
--regFile <= (0 to 105 => regFile64 (0 to 105), 106 to 127 => regFile32_i(0 to 21));
--regFile(0) <= regFile64(0);
--regFile(106) <= regFile32_i(0);

THR_o.data <= regFile(THRa) & regFile(THRb) & regFile(THRc);
FSM_o.data <= regFile(FSMa) & regFile(FSMb) & regFile(FSMc);
LBC_o.data <= regFile(LBCa) & regFile(LBCb);
LTS_o.data <= regFile(LTSa) & regFile(LTSb);
fifo_dIn_o <= regFile(DAT);
EDFA_o.data <= regFile(ETX);
error_cycle_o <= regFile(SEP);
txEn_o <= regFile64(CTR)(0);
pidEn_o<= regFile64(CTR)(1);
spi2En_o<= regFile64(CTR)(2); 
delay_o<= regFile64(DEL);

  
process(clk_i)
    begin
    if (nrst_i = '0') then
          THR_o.wr <= '0';
          FSM_o.wr  <= '0';
          LBC_o.wr <= '0';
          EDFA_o.wr <= '0';
          LTS_o.wr <= '1';
          wr_o <= '0';
          rd_errors_o <= '0';
          rd_ones_o <= '0';
          uart_rx_valid_state <= '1'; 
          regFile(ERX) <= (others => '0');  
    else
        if(rising_edge(clk_i)) then         
            if ((wr_i = '1') and  (to_integer(unsigned(addr_i)) = THRc)) then
                THR_o.wr <= '1';
            else
                THR_o.wr <= '0';
            end if;
            
            if ((wr_i = '1') and (to_integer(unsigned(addr_i)) = FSMc)) then
                 FSM_o.wr <= '1';
            else
                 FSM_o.wr  <= '0';
            end if;
    
            if ((wr_i = '1') and (to_integer(unsigned(addr_i)) = LBCb)) then
               LBC_o.wr <= '1';
             else
               LBC_o.wr <= '0';
             end if;
              
             if ((wr_i = '1') and (to_integer(unsigned(addr_i)) = ETX)) then
               EDFA_o.wr <= '1';
             else
               EDFA_o.wr <= '0';
             end if;
                
             if ((wr_i = '1') and (to_integer(unsigned(addr_i)) = LTSb)) then
               LTS_o.wr <= '0';
             else
               LTS_o.wr <= '1'; --regFile64(PO4)(4);
             end if;
             
             --if (((wr_i = '1') and (to_integer(unsigned(addr_i)) = LTSb)) or (regFile(PO4)(4) = '0')) then
             --  LTS_o.wr <= '0';
             --else
             --  LTS_o.wr <= '1';
             --end if;
                          
             
             if ((wr_i = '1') and (to_integer(unsigned(addr_i)) = DAT)) then
               wr_o <= '1';
             else
               wr_o <= '0';
             end if;  
             
             if ((rd_i = '1') and (to_integer(unsigned(addr_i)) = ERR)) then
               rd_errors_o <= '1';
             else
               rd_errors_o <= '0';
             end if;
             if ((rd_i = '1') and (to_integer(unsigned(addr_i)) = ONE)) then
               rd_ones_o <= '1';
             else
               rd_ones_o <= '0';
             end if;        
             if (flags_i(5)='1') then
                 uart_rx_valid_state <= '1';
                 regFile(ERX) <= EDFA_i;
             else
                if ((rd_i = '1') and (to_integer(unsigned(addr_i)) = FLG)) then
                   uart_rx_valid_state <= '0';
                end if;
             end if;         
          end if;
      end if;
 end process; 


loadSw_o <= regFile(PO1)(4) & regFile(PO2)(4) & regFile(PO3)(4) & regFile(PO4)(4);
heater_o <= regFile(HE1)(4) & regFile(HE2)(4);
calDiode_o <= regFile(CAL)(4); 

process(clk_i, nrst_i)
    begin
       if (nrst_i = '0') then
          regFile64 <= (others=>(others=>'0'));
       else       
        if (rising_edge(clk_i)) then
          regFile64(FRC) <= regFile64(FRC) + 1;
          regFile64(VER) <= "00001001";  
          if (wr_i = '1') then
              regFile64(WRS) <= regFile64(WRS) + 1;     
              regFile64(WRA) <= '0' & addr_i;                   

              if(to_integer(unsigned(addr_i)) < 32) then 
                 regFile64(to_integer(unsigned(addr_i))) <= dIn_i;
                 regFile64(ACC) <= regFile64(ACC) + 1;
                 regFile64(LAC) <= '0' & addr_i;
              else
                 if(to_integer(unsigned(addr_i)) < 49) then
                    if (dIn_i = "01010101" or dIn_i = "00001111") then
                      regFile64(to_integer(unsigned(addr_i))) <= dIn_i;
                      regFile64(ACC) <= regFile64(ACC) + 1;
                      regFile64(LAC) <= '0' & addr_i;                 
                    else
                      regFile64(RCC) <= regFile64(RCC) + 1;
                      regFile64(LRC) <= '0' & addr_i;        
                    end if;      
                  else -- read only Registers
                    regFile64(RCC) <= regFile64(RCC) + 1;
                    regFile64(LRC) <= '0' & addr_i;  
                  end if;
               end if;
           end if;
        end if;  
      end if;
 end process;           
end Behavioral;