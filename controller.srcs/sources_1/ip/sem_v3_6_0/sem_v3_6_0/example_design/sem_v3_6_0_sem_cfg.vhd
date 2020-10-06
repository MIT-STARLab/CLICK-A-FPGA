-----------------------------------------------------------------------------
--
--
--
-----------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/    Core:          sem
--  \   \        Entity:        sem_v3_6_0_sem_cfg
--  /   /        Filename:      sem_v3_6_0_sem_cfg.vhd
-- /___/   /\    Purpose:       Wrapper file for configuration logic.
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
-- This entity is a wrapper to encapsulate the ICAP primitive.
--
-----------------------------------------------------------------------------
--
-- Port Definition:
--
-- Name                          Type   Description
-- ============================= ====== ====================================
-- icap_clk                      input  The controller clock, used to clock
--                                      the configuration logic as well.
--
-- icap_busy                     output ICAP busy signal.  Synchronous to
--                                      icap_clk.
--
-- icap_o[15:0]                  output ICAP data output.  Synchronous to
--                                      icap_clk.
--
-- icap_csb                      input  ICAP chip select, active low.  Used
--                                      to enable the ICAP for read or write.
--                                      Synchronous to icap_clk.
--
-- icap_rdwrb                    input  ICAP write select, active low.  Used
--                                      to select between read or write.
--                                      Synchronous to icap_clk.
--
-- icap_i[15:0]                  input  ICAP data input.  Synchronous to
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
-- sem_v3_6_0_sem_cfg
-- |
-- \- ICAP_SPARTAN6 (unisim)
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

entity sem_v3_6_0_sem_cfg is
port (
  icap_clk                      : in    std_logic;
  icap_busy                     : out   std_logic;
  icap_o                        : out   std_logic_vector(15 downto 0);
  icap_csb                      : in    std_logic;
  icap_rdwrb                    : in    std_logic;
  icap_i                        : in    std_logic_vector(15 downto 0)
  );
end entity sem_v3_6_0_sem_cfg;

-----------------------------------------------------------------------------
-- Architecture
-----------------------------------------------------------------------------

architecture xilinx of sem_v3_6_0_sem_cfg is

  ---------------------------------------------------------------------------
  -- Define local constants.
  ---------------------------------------------------------------------------

  constant TCQ : time := 1 ps;

  ---------------------------------------------------------------------------
  -- Declare non-library components.
  ---------------------------------------------------------------------------

  -- None

  ---------------------------------------------------------------------------
  -- Declare signals.
  ---------------------------------------------------------------------------

  -- None

  ---------------------------------------------------------------------------
  --
  ---------------------------------------------------------------------------

  begin

  ---------------------------------------------------------------------------
  -- Instantiate the ICAP primitive.
  ---------------------------------------------------------------------------

  example_icap : ICAP_SPARTAN6
  generic map (
    SIM_CFG_FILE_NAME => "NONE",
    DEVICE_ID => X"FFFFFFFF"
    )
  port map (
    BUSY => icap_busy,
    O => icap_o,
    CLK => icap_clk,
    CE => icap_csb,
    I => icap_i,
    WRITE => icap_rdwrb
    );

  ---------------------------------------------------------------------------
  --
  ---------------------------------------------------------------------------

end architecture xilinx;

-----------------------------------------------------------------------------
--
-----------------------------------------------------------------------------
