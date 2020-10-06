----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2017 02:08:33 AM
-- Design Name: 
-- Module Name: SEM_CONT - Behavioral
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


entity SEM_CONT is
    port ( 
       clk_i : in std_logic;
       nrst_i: in std_logic;
       error_cycle_i: in std_logic_vector(7 downto 0);
       flags_o: out std_logic_vector(7 downto 0);
       status_o: out std_logic_vector(7 downto 0);
       correctedErrors_o: out std_logic_vector(7 downto 0);
       insertedErrors_o: out std_logic_vector(7 downto 0);
       error_o: out error_type;
       status_i: in status_type);
end SEM_CONT;

architecture Behavioral of SEM_CONT is
signal uncorrectable, stopped, initialized : std_logic;
begin

flags_o <= "00000" & uncorrectable & stopped & initialized; 
status_o <= (status_i.heartbeat, status_i.initialization, status_i.observation, status_i.correction,  status_i.classification, status_i.injection, status_i.essential, status_i.uncorrectable);


controllerStopped: process(nrst_i, clk_i)
-- The heartbeat signal is active while status_observation is TRUE. This output issues a single-cycle high pulse 
-- at least once every 128 clock cycles for 7 series and Virtex-6 devices, and at least once every 512 clock cycles 
-- for Spartan-6 devices. This signal can be used to implement an external watchdog timer to detect "controller stop" 
-- scenarios that can occur if the controller or clock distribution is disabled by soft errors. 
variable count: integer;
begin
  if (nrst_i = '0') then
     count := 0;
     stopped <= '1';
  else
     if (rising_edge(clk_i)) then
        if (status_i.heartbeat = '1') then
           count := 0;
           stopped <= '1';
        else
           count := count + 1;
           if (count > 128) then
              stopped <= '0';
           end if;
        end if;
     end if;
  end if;  
end process;

controllerInitialized: process(nrst_i, clk_i)
-- The initialization signal is active during controller initialization, which occurs one time after the design
-- begins operation.
variable asserted: std_logic;
begin
  if (nrst_i = '0') then
     asserted := '0';
     initialized <= '0';  
  else
     if (rising_edge(clk_i)) then
         if(status_i.initialization = '1') then
            asserted := '1';
         else
            if(asserted = '1' and status_i.initialization = '0') then
               initialized <= '1';
            end if;
         end if;
      end if;
   end if;
end process;

corrected_errors: process(nrst_i, clk_i)
-- The correction signal is active during controller correction of an error or during transition through
-- this controller state if correction is disabled.
variable count: integer;
variable deasserted: std_logic;
begin
  if (nrst_i = '0') then
     count := 0;
     deasserted := '0';
  else
     if (rising_edge(clk_i)) then
        if (status_i.correction = '0') then
           deasserted := '1';
        else
          if (deasserted = '1' and status_i.correction = '1') then
             count := count + 1;
             deasserted := '0';
          end if;
        end if;
     end if;
   end if;   
correctedErrors_o <= std_logic_vector(to_unsigned(count, 8));  
end process;

injected_errors: process(nrst_i, clk_i)
-- The injection signal is active during controller injection of an error. When an error injection is complete,
-- and the controller is ready to inject another error or return to observation, this signal returns inactive.
variable count: integer;
variable deasserted: std_logic;
begin
  if (nrst_i = '0') then
     count := 0;
     deasserted := '0';
  else
     if (rising_edge(clk_i)) then
        if (status_i.injection = '0') then
           deasserted := '1';
        else
          if (deasserted = '1' and status_i.injection = '1') then
             count := count + 1;
             deasserted := '0';
          end if;
        end if;
     end if;
   end if;   
insertedErrors_o <= std_logic_vector(to_unsigned(count, 8)); 
end process;

correctable_errors: process(nrst_i, clk_i)
-- The uncorrectable signal is an error correction status signal. Prior to exiting the correction state, the controller 
-- sets this signal to reflect the correctability of the error. Then, the controller exits correction state.
begin
  if (nrst_i = '0') then
     uncorrectable <= '0';
  else
     if (rising_edge(clk_i)) then
        if (status_i.uncorrectable = '1') then
           uncorrectable <= '1';
        end if;
      end if;
   end if;
end process;

error_generator: process(nrst_i, clk_i)
variable count: integer;
variable address: integer;
begin
  if (nrst_i = '0') then
     count := 0;
     address := 0;
  else
     if (rising_edge(clk_i)) then
        address :=  address + 1;
        if (count = error_cycle_i) then
           error_o.strobe <= '1';
           count := 0;
        else 
           error_o.strobe <= '0';
           count :=  count + 1;
        end if;
      end if;
  end if;      
error_o.address <= std_logic_vector(to_unsigned(address,36));
end process;

end Behavioral;