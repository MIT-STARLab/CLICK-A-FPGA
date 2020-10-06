library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package nodeLibrary is
--   type regFile128_type is array (integer range 0 to 127) of std_logic_vector(7 downto 0);
--   type regFile64_type is array (integer range 0 to 105) of std_logic_vector(7 downto 0);
--   type regFile32_type is array (integer range 0 to 21) of std_logic_vector(7 downto 0);
   type regFile128_type is array (0 to 127) of std_logic_vector(7 downto 0);
   type regFile64_type is array (0 to 63) of std_logic_vector(7 downto 0);
   type regFile32_type is array (0 to 31) of std_logic_vector(7 downto 0);   
   
--   type FIFO_INT_type is record
--      data: std_logic_vector (7 downto 0);  
--      ptr: std_logic_vector (7 downto 0); 
--      new: std_logic;
--   end record;

   type INT8_type is record
      data: std_logic_vector (7 downto 0); 
      wr: std_logic;
   end record;-- y el wr solo se refresca cuando escribo el byte menos significativo.
   type INT16_type is record
      data: std_logic_vector (15 downto 0); 
      wr: std_logic;
   end record;-- y el wr solo se refresca cuando escribo el byte menos significativo.
   type INT24_type is record
      data: std_logic_vector (23 downto 0); 
      wr: std_logic;
   end record;-- y el wr solo se refresca cuando escribo el byte menos significativo.
   type uart_type is record
     dIn: std_logic_vector (7 downto 0);
     send: std_logic;
     busy: std_logic;
     dOut: std_logic_vector (7 downto 0);
     valid: std_logic;
     error: std_logic;
   end record;
   
   -- SEM Controller
   type error_type is record
     strobe: std_logic;
     address: std_logic_vector(35 downto 0);
   end record;
   type icap_type is record
      busy: std_logic;
      o: std_logic_vector(15 downto 0);
      clk: std_logic;
      csb: std_logic;
      rdwrb: std_logic;
      i: std_logic_vector(15 downto 0);
      grant: std_logic;
      request: std_logic;
   end record;
   type status_type is record
      heartbeat: std_logic;
      initialization: std_logic;
      observation: std_logic;
      correction: std_logic;
      classification: std_logic;
      injection: std_logic;
      uncorrectable: std_logic;
      essential: std_logic;
   end record;
   type monitor_type is record
      txdata: std_logic_vector(7 downto 0);
      txwrite: std_logic;
      txfull: std_logic;
      rxdata: std_logic_vector(7 downto 0);
      rxread: std_logic;
      rxempty: std_logic;
   end record;
   type sem_type is record
      error: error_type;
      icap: icap_type;
      status: status_type;
      monitor: monitor_type;
   end record;
end package;
