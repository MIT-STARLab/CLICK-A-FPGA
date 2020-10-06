-----------------------------------------------------------------------------
--
--
--
-----------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/    Core:          sem
--  \   \        Entity:        sem_v3_6_0_sem_example
--  /   /        Filename:      sem_v3_6_0_sem_example.vhd
-- /___/   /\    Purpose:       System level design example.
-- \   \  /  \
--  \___\/\___\
--
-----------------------------------------------------------------------------
--
-- (c) Copyright 2010 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-----------------------------------------------------------------------------
--
-- Entity Description:
--
-- This entity is the system level design example, the top level of what is
-- intended for physical implementation.  This entity is essentially an HDL
-- netlist of sub-entities used to construct the solution.  The system level
-- design example is customized by the Xilinx Core Generator System.
--
-----------------------------------------------------------------------------
--
-- Port Definition:
--
-- Name                          Type   Description
-- ============================= ====== ====================================
-- clk                           input  System clock; the entire system is
--                                      synchronized to this signal, which
--                                      is distributed on a global clock
--                                      buffer and referred to as icap_clk.
--
-- status_heartbeat              output Heartbeat signal for external watch
--                                      dog timer implementation; pulses
--                                      when readback runs.  Synchronous to
--                                      icap_clk.
--
-- status_initialization         output Indicates initialization is taking
--                                      place.  Synchronous to icap_clk.
--
-- status_observation            output Indicates observation is taking
--                                      place.  Synchronous to icap_clk.
--
-- status_correction             output Indicates correction is taking
--                                      place.  Synchronous to icap_clk.
--
-- status_classification         output Indicates classification is taking
--                                      place.  Synchronous to icap_clk.
--
-- status_injection              output Indicates injection is taking
--                                      place.  Synchronous to icap_clk.
--
-- status_essential              output Indicates essential error condition.
--                                      Qualified by de-assertion of the
--                                      status_classification signal, and
--                                      is synchronous to icap_clk.
--
-- status_uncorrectable          output Indicates uncorrectable error
--                                      condition. Qualified by de-assertion
--                                      of the status_correction signal, and
--                                      is synchronous to icap_clk.
--
-- monitor_tx                    output Serial status output.  Synchronous
--                                      to icap_clk, but received externally
--                                      by another device as an asynchronous
--                                      signal, perceived as lower bitrate.
--                                      Uses 8N1 protocol.
--
-- monitor_rx                    input  Serial command input.  Asynchronous
--                                      signal provided by another device at
--                                      a lower bitrate, synchronized to the
--                                      icap_clk and oversampled.  Uses 8N1
--                                      protocol.
--
-- inject_strobe                 input  Error injection port strobe used
--                                      by the controller to enable capture
--                                      of the error injection address.
--                                      Synchronous to icap_clk.
--
-- inject_address[35:0]          input  Error injection port address used
--                                      to specify the location of a bit
--                                      to be corrupted.  Synchronous to
--                                      icap_clk.
--
-----------------------------------------------------------------------------
--
-- Generic and Constant Definition:
--
-- Name                          Type   Description
-- ============================= ====== ====================================
-- TCQ                           int    Sets the clock-to-out for behavioral
--                                      descriptions of sequential logic.
--
-----------------------------------------------------------------------------
--
-- Entity Dependencies:
--
-- sem_v3_6_0_sem_example
-- |
-- +- sem_v3_6_0 (sem_controller)
-- |
-- +- sem_v3_6_0_sem_cfg
-- |
-- +- sem_v3_6_0_sem_mon
-- |
-- +- IBUF (unisim)
-- |
-- \- BUFG (unisim)
--
-----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library unisim;
use unisim.vcomponents.all;

-----------------------------------------------------------------------------
-- Entity
-----------------------------------------------------------------------------

entity sem_v3_6_0_sem_example is
port (
  clk                           : in    std_logic;
  status_heartbeat              : out   std_logic;
  status_initialization         : out   std_logic;
  status_observation            : out   std_logic;
  status_correction             : out   std_logic;
  status_classification         : out   std_logic;
  status_injection              : out   std_logic;
  status_essential              : out   std_logic;
  status_uncorrectable          : out   std_logic;
  inject_strobe                 : in    std_logic;
  inject_address                : in    std_logic_vector(35 downto 0);
  monitor_tx                    : out   std_logic;
  monitor_rx                    : in    std_logic
  );
end entity sem_v3_6_0_sem_example;

-----------------------------------------------------------------------------
-- Architecture
-----------------------------------------------------------------------------

architecture xilinx of sem_v3_6_0_sem_example is

  ---------------------------------------------------------------------------
  -- Define local constants.
  ---------------------------------------------------------------------------

  constant TCQ : time := 1 ps;

  ---------------------------------------------------------------------------
  -- Declare non-library components.
  ---------------------------------------------------------------------------

  component sem_v3_6_0
  port (
    status_heartbeat            : out   std_logic;
    status_initialization       : out   std_logic;
    status_observation          : out   std_logic;
    status_correction           : out   std_logic;
    status_classification       : out   std_logic;
    status_injection            : out   std_logic;
    status_essential            : out   std_logic;
    status_uncorrectable        : out   std_logic;
    monitor_txdata              : out   std_logic_vector(7 downto 0);
    monitor_txwrite             : out   std_logic;
    monitor_txfull              : in    std_logic;
    monitor_rxdata              : in    std_logic_vector(7 downto 0);
    monitor_rxread              : out   std_logic;
    monitor_rxempty             : in    std_logic;
    inject_strobe               : in    std_logic;
    inject_address              : in    std_logic_vector(35 downto 0);
    icap_o                      : in    std_logic_vector(15 downto 0);
    icap_i                      : out   std_logic_vector(15 downto 0);
    icap_busy                   : in    std_logic;
    icap_csb                    : out   std_logic;
    icap_rdwrb                  : out   std_logic;
    icap_clk                    : in    std_logic;
    icap_request                : out   std_logic;
    icap_grant                  : in    std_logic
    );
  end component;

  component sem_v3_6_0_sem_cfg
  port (
    icap_o                      : out   std_logic_vector(15 downto 0);
    icap_i                      : in    std_logic_vector(15 downto 0);
    icap_clk                    : in    std_logic;
    icap_busy                   : out   std_logic;
    icap_csb                    : in    std_logic;
    icap_rdwrb                  : in    std_logic
    );
  end component;

  component sem_v3_6_0_sem_mon
  port (
    icap_clk                    : in    std_logic;
    monitor_tx                  : out   std_logic;
    monitor_rx                  : in    std_logic;
    monitor_txdata              : in    std_logic_vector(7 downto 0);
    monitor_txwrite             : in    std_logic;
    monitor_txfull              : out   std_logic;
    monitor_rxdata              : out   std_logic_vector(7 downto 0);
    monitor_rxread              : in    std_logic;
    monitor_rxempty             : out   std_logic
    );
  end component;

  ---------------------------------------------------------------------------
  -- Declare signals.
  ---------------------------------------------------------------------------

  signal clk_ibufg : std_logic;

  signal status_heartbeat_internal : std_logic;
  signal status_initialization_internal : std_logic;
  signal status_observation_internal : std_logic;
  signal status_correction_internal : std_logic;
  signal status_classification_internal : std_logic;
  signal status_injection_internal : std_logic;
  signal status_essential_internal : std_logic;
  signal status_uncorrectable_internal : std_logic;

  signal monitor_txdata         : std_logic_vector(7 downto 0);
  signal monitor_txwrite        : std_logic;
  signal monitor_txfull         : std_logic;
  signal monitor_rxdata         : std_logic_vector(7 downto 0);
  signal monitor_rxread         : std_logic;
  signal monitor_rxempty        : std_logic;
  signal icap_o                 : std_logic_vector(15 downto 0);
  signal icap_i                 : std_logic_vector(15 downto 0);
  signal icap_busy              : std_logic;
  signal icap_csb               : std_logic;
  signal icap_rdwrb             : std_logic;
  signal icap_unused            : std_logic;
  signal icap_grant             : std_logic;
  signal icap_clk               : std_logic;

  ---------------------------------------------------------------------------
  --
  ---------------------------------------------------------------------------

  begin

  ---------------------------------------------------------------------------
  -- This design (the example, including the controller itself) is fully
  -- synchronous; the global clock buffer is instantiated here to drive
  -- the icap_clk signal.
  ---------------------------------------------------------------------------

  example_ibuf : IBUF
  port map (
    I => clk,
    O => clk_ibufg
    );

  example_bufg : BUFG
  port map (
    I => clk_ibufg,
    O => icap_clk
    );

  ---------------------------------------------------------------------------
  -- The controller sub-entity is the kernel of the soft error mitigation
  -- solution.  The port list is dynamic based on the IP core options.
  ---------------------------------------------------------------------------

  example_controller : sem_v3_6_0
  port map (
    status_heartbeat => status_heartbeat_internal,
    status_initialization => status_initialization_internal,
    status_observation => status_observation_internal,
    status_correction => status_correction_internal,
    status_classification => status_classification_internal,
    status_injection => status_injection_internal,
    status_essential => status_essential_internal,
    status_uncorrectable => status_uncorrectable_internal,
    monitor_txdata => monitor_txdata,
    monitor_txwrite => monitor_txwrite,
    monitor_txfull => monitor_txfull,
    monitor_rxdata => monitor_rxdata,
    monitor_rxread => monitor_rxread,
    monitor_rxempty => monitor_rxempty,
    inject_strobe => inject_strobe,
    inject_address => inject_address,
    icap_o => icap_o,
    icap_i => icap_i,
    icap_busy => icap_busy,
    icap_csb => icap_csb,
    icap_rdwrb => icap_rdwrb,
    icap_clk => icap_clk,
    icap_request => icap_unused,
    icap_grant => icap_grant
    );

  icap_grant <= '1';
  status_heartbeat <= status_heartbeat_internal;
  status_initialization <= status_initialization_internal;
  status_observation <= status_observation_internal;
  status_correction <= status_correction_internal;
  status_classification <= status_classification_internal;
  status_injection <= status_injection_internal;
  status_essential <= status_essential_internal;
  status_uncorrectable <= status_uncorrectable_internal;

  ---------------------------------------------------------------------------
  -- The cfg sub-entity contains the device specific primitives to access
  -- the internal configuration port and the frame crc/ecc status signals.
  ---------------------------------------------------------------------------

  example_cfg : sem_v3_6_0_sem_cfg
  port map (
    icap_o => icap_o,
    icap_i => icap_i,
    icap_busy => icap_busy,
    icap_csb => icap_csb,
    icap_rdwrb => icap_rdwrb,
    icap_clk => icap_clk
    );

  ---------------------------------------------------------------------------
  -- The mon sub-entity contains a UART for communication purposes.
  ---------------------------------------------------------------------------

  example_mon : sem_v3_6_0_sem_mon
  port map (
    icap_clk => icap_clk,
    monitor_tx => monitor_tx,
    monitor_rx => monitor_rx,
    monitor_txdata => monitor_txdata,
    monitor_txwrite => monitor_txwrite,
    monitor_txfull => monitor_txfull,
    monitor_rxdata => monitor_rxdata,
    monitor_rxread => monitor_rxread,
    monitor_rxempty => monitor_rxempty
    );

  ---------------------------------------------------------------------------
  --
  ---------------------------------------------------------------------------

end architecture xilinx;

-----------------------------------------------------------------------------
--
-----------------------------------------------------------------------------
