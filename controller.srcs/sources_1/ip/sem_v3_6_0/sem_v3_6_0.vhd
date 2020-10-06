--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: sem_v3_6_0.vhd
-- /___/   /\     Timestamp: Tue Sep 26 17:29:02 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl Z:/HDL/Repo/node-fpga_mitfork/controller/controller.srcs/sources_1/ip/sem_v3_6_0/tmp/_cg/sem_v3_6_0.ngc Z:/HDL/Repo/node-fpga_mitfork/controller/controller.srcs/sources_1/ip/sem_v3_6_0/tmp/_cg/sem_v3_6_0.vhd 
-- Device	: 6slx9tqg144-3
-- Input file	: Z:/HDL/Repo/node-fpga_mitfork/controller/controller.srcs/sources_1/ip/sem_v3_6_0/tmp/_cg/sem_v3_6_0.ngc
-- Output file	: Z:/HDL/Repo/node-fpga_mitfork/controller/controller.srcs/sources_1/ip/sem_v3_6_0/tmp/_cg/sem_v3_6_0.vhd
-- # of Entities	: 1
-- Design Name	: sem_v3_6_0
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity sem_v3_6_0 is
  port (
    monitor_txfull : in STD_LOGIC := 'X'; 
    monitor_rxempty : in STD_LOGIC := 'X'; 
    inject_strobe : in STD_LOGIC := 'X'; 
    icap_busy : in STD_LOGIC := 'X'; 
    icap_clk : in STD_LOGIC := 'X'; 
    icap_grant : in STD_LOGIC := 'X'; 
    status_heartbeat : out STD_LOGIC; 
    status_initialization : out STD_LOGIC; 
    status_observation : out STD_LOGIC; 
    status_correction : out STD_LOGIC; 
    status_classification : out STD_LOGIC; 
    status_injection : out STD_LOGIC; 
    status_essential : out STD_LOGIC; 
    status_uncorrectable : out STD_LOGIC; 
    monitor_txwrite : out STD_LOGIC; 
    monitor_rxread : out STD_LOGIC; 
    icap_csb : out STD_LOGIC; 
    icap_rdwrb : out STD_LOGIC; 
    icap_request : out STD_LOGIC; 
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    inject_address : in STD_LOGIC_VECTOR ( 35 downto 0 ); 
    icap_o : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    icap_i : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end sem_v3_6_0;

architecture STRUCTURE of sem_v3_6_0 is
  signal NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ireq_reg_101 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28312 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14312 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28311 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14112 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o2 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o1_109 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_133_o2 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_113 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2521 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port431 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_6_Q_131 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_1_Q_137 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_0_Q_139 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr6 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr5 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr4 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr3 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr2 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_b_ena : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_a : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_b : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_c : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0859 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0774 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0736 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0833 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0827 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0764 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0759 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0873 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0869 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0864 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0821 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0816 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0810 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0806 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0800 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0795 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0790 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0785 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0781 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0777 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0749 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0743 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_139_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_141_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_152_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_150_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_148_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_8_281 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_9_282 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_10_283 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_11_284 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_12_285 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_13_286 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_14_287 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total_15_288 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_291 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_292 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_293 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg_294 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0_297 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1_298 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2_299 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3_300 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4_301 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5_302 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6_303 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7_304 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8_305 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9_306 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10_307 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_11_308 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_12_309 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_13_310 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_14_311 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_15_312 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_readback_ignore_364 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_readback_end_365 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crcerr_386 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_eccerr_387 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_sync_init : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_read_strobe : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea11 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101_518 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_520 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_521 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_522 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_523 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_524 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_525 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_526 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_527 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_528 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_1_Q_529 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_530 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_531 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_7_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_1_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_2_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_3_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_4_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_5_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_6_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_7_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_9_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_10_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_11_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_12_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_13_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_14_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_15_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_16_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_go : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_8_608 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_9_609 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_10_610 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_8_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_17_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_fast_route : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_fast_route : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_out : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_parity : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_parity : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_pulse : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_t_state : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry_value : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_shift_in : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_condition_met : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_invert_arith_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry_in : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_shift_in : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable_value : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_io_initial_decode : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_zero : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_read_active : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_write_active : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_fetch_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_parity : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_push_or_pop_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_move_group : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_update_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_write : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_write : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_flag : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_write : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_zero : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_carry : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_interrupt_ack_internal : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_clean_int : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8_910 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9_911 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10_912 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_11_913 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_12_914 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_13_915 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_14_916 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_15_917 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0351 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0349 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0354 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0896 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_30_XOR_1235_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0886 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0858 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0891 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_frame_par_o_4_XOR_731_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0844 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0854 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_icap_s_1_XOR_836_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0835 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out1 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out2 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out3 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out4 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out5 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out6 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out7 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out8 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out9 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out10 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out11 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out12 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out13 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out14 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out15 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out16 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out17 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out18 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out19 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out20 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out21 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out22 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out23 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out24 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out25 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out26 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out27 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out28 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out29 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out30 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out31 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_17_XOR_1293_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0889 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0851 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_27_XOR_1111_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_31_XOR_1246_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0825 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0816 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0822 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0824 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0829 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_22_XOR_890_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0810 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0836 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_846_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0898 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_891_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_10_Q_1081 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_9_Q_1082 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_9_Q_1083 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_8_Q_1084 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_8_Q_1085 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_7_Q_1086 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_7_Q_1087 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_6_Q_1088 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_6_Q_1089 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_5_Q_1090 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_5_Q_1091 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_4_Q_1092 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_4_Q_1093 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_3_Q_1094 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_3_Q_1095 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_2_Q_1096 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_2_Q_1097 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_1_Q_1098 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_1_Q_1099 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_0_Q_1100 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_0_Q_1101 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crc_initialize_0 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1152_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1205_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_16_XOR_1137_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1188_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_1109_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_1094_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_14_XOR_1011_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1028_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_3_icap_s_0_XOR_1220_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_979_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1045_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_1062_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_994_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1171_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_1124_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1079_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_1_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_2_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_3_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_4_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_5_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_6_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_7_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_8_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_9_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_10_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_11_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_12_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_13_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_14_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_15_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_16_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_17_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_18_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_19_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_20_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_21_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_22_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_23_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_24_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_25_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_26_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_27_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_28_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_29_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_30_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_31_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_gold_crc_31_not_equal_16_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_rb_eos_AND_127_o : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_1_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_2_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_3_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_4_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_5_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_6_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_7_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_8_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_9_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_10_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_11_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_12_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_13_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_14_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_15_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_16_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_17_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_18_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_19_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_20_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_21_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_22_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_23_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_24_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_25_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_26_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_27_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_28_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_29_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_30_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_31_Q : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port52 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port521_1272 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port522_1273 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port523_1274 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port524_1275 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port525_1276 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port526_1277 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port527_1278 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port528_1279 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port529_1280 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port40 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port401_1282 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port402_1283 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port403_1284 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port404_1285 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port405_1286 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port406_1287 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port407_1288 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port408_1289 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port409_1290 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4010_1291 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port34 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port341_1293 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port342_1294 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port343_1295 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port344_1296 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port345_1297 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port346_1298 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port347_1299 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port348_1300 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port349_1301 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3410_1302 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port46 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port461_1304 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port462_1305 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port463_1306 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port464_1307 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port465_1308 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port466_1309 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port467_1310 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port468_1311 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port469_1312 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4610_1313 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4611_1314 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port281_1316 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port282_1317 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283_1318 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port284_1319 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port285_1320 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port286_1321 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port287_1322 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port288_1323 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port289_1324 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2810_1325 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2811_1326 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2812_1327 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2813_1328 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2814_1329 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port21 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port211_1331 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port212_1332 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port213_1333 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port214_1334 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port215_1335 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port216_1336 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port217_1337 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port218_1338 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port219_1339 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2110_1340 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2111_1341 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2112_1342 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2113_1343 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2114_1344 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2115_1345 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port7 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port71_1347 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port72_1348 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port73_1349 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port74_1350 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port75_1351 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port78 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79_1353 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port710_1354 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port711_1355 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port712_1356 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port713_1357 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port714_1358 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port715_1359 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port716_1360 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port141_1362 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port142_1363 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port143_1364 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port144_1365 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port145_1366 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port146_1367 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port147_1368 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port148_1369 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port149_1370 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1410_1371 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1411_1372 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1412_1373 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1413_1374 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1414_1375 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1415_1376 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1416_1377 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1417_1378 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt10 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt101_1383 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt102_1384 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o1_1385 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o2_1386 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_1_1389 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_2_1390 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_1_1392 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_2_1393 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_1_1395 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_2_1396 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_1_1398 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_2_1399 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_1_1401 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_2_1402 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_1_1404 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_2_1405 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_1_1407 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_2_1408 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_1_1410 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_Q : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_1_1412 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof30 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof301_1454 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_glue_set_1456 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_glue_set_1457 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_glue_set_1458 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_glue_set_1459 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_glue_set_1460 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_glue_set_1461 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1462 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1463 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1464 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1465 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1466 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1467 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1468 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1469 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1470 : STD_LOGIC; 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1471 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPBDOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPBDOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRAWRADDR_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRAWRADDR_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPBDIP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPBDIP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRBRDADDR_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRBRDADDR_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPADIP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPADIP_0_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_OI_monitor_txdata : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwRenamedSig_OI_icap_i : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_n0890 : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_in_port : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_row_total : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_instruction : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_port_id : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_address : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand : STD_LOGIC_VECTOR ( 7 downto 6 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle : STD_LOGIC_VECTOR ( 11 downto 11 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  monitor_txdata(7) <= NlwRenamedSig_OI_monitor_txdata(7);
  monitor_txdata(6) <= NlwRenamedSig_OI_monitor_txdata(6);
  monitor_txdata(5) <= NlwRenamedSig_OI_monitor_txdata(5);
  monitor_txdata(4) <= NlwRenamedSig_OI_monitor_txdata(4);
  monitor_txdata(3) <= NlwRenamedSig_OI_monitor_txdata(3);
  monitor_txdata(2) <= NlwRenamedSig_OI_monitor_txdata(2);
  monitor_txdata(1) <= NlwRenamedSig_OI_monitor_txdata(1);
  monitor_txdata(0) <= NlwRenamedSig_OI_monitor_txdata(0);
  icap_i(15) <= NlwRenamedSig_OI_icap_i(15);
  icap_i(14) <= NlwRenamedSig_OI_icap_i(14);
  icap_i(13) <= NlwRenamedSig_OI_icap_i(13);
  icap_i(12) <= NlwRenamedSig_OI_icap_i(12);
  icap_i(11) <= NlwRenamedSig_OI_icap_i(11);
  icap_i(10) <= NlwRenamedSig_OI_icap_i(10);
  icap_i(9) <= NlwRenamedSig_OI_icap_i(9);
  icap_i(8) <= NlwRenamedSig_OI_icap_i(8);
  icap_i(7) <= NlwRenamedSig_OI_icap_i(7);
  icap_i(6) <= NlwRenamedSig_OI_icap_i(6);
  icap_i(5) <= NlwRenamedSig_OI_icap_i(5);
  icap_i(4) <= NlwRenamedSig_OI_icap_i(4);
  icap_i(3) <= NlwRenamedSig_OI_icap_i(3);
  icap_i(2) <= NlwRenamedSig_OI_icap_i(2);
  icap_i(1) <= NlwRenamedSig_OI_icap_i(1);
  icap_i(0) <= NlwRenamedSig_OI_icap_i(0);
  status_heartbeat <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid;
  status_initialization <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(0);
  status_observation <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(1);
  status_correction <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(2);
  status_classification <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(3);
  status_injection <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(4);
  status_essential <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(6);
  status_uncorrectable <= NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(5);
  icap_request <= U0_wrapper_wrapper_gens6_wrapper_controller_ireq_reg_101;
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_6_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(5),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_6_Q_131,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_5_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(4),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_5_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(4),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_4_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(3),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_4_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(3),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_3_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(2),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_3_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(2),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_2_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(1),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_2_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(1),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_1_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(0),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_1_Q_137,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_1_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(0),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(6),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_1_Q_137,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_0_Q_139,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(7),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_0_Q_139,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_cy(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr6,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr5,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr4,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr3,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr2,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr1,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ireq_reg : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_ireq_reg_101
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(15),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(14),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(13),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(12),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_15 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(15),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_14 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(14),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_13 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(13),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_12 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(12),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_11 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_10 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_9 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_8 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_7 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_6 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_5 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_4 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_3 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_2 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_1 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2_0 : FDR
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_15_312,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_14_311,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_13_310,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_12_309,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_11_308,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10_307,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9_306,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8_305,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7_304,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6_303,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5_302,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4_301,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3_300,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2_299,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1_298,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0_297,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_delay(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_15_288
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_14_287
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_13_286
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_12_285
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_11_284
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_10_283
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_9_282
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_row_total_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_8_281
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg_294
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0_297
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1_298
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3_300
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4_301
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2_299
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6_303
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7_304
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5_302
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9_306
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10_307
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8_305
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_12_309
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_13_310
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_11_308
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_15_312
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_14_311
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_status_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_readback_ignore : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_152_o,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_readback_ignore_364
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_readback_start : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_148_o,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_readback_end : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_150_o,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_readback_end_365
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_15 : FDR
    port map (
      C => icap_clk,
      D => icap_o(15),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_14 : FDR
    port map (
      C => icap_clk,
      D => icap_o(14),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_13 : FDR
    port map (
      C => icap_clk,
      D => icap_o(13),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_12 : FDR
    port map (
      C => icap_clk,
      D => icap_o(12),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_11 : FDR
    port map (
      C => icap_clk,
      D => icap_o(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_10 : FDR
    port map (
      C => icap_clk,
      D => icap_o(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_9 : FDR
    port map (
      C => icap_clk,
      D => icap_o(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_8 : FDR
    port map (
      C => icap_clk,
      D => icap_o(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_7 : FDR
    port map (
      C => icap_clk,
      D => icap_o(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_6 : FDR
    port map (
      C => icap_clk,
      D => icap_o(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_5 : FDR
    port map (
      C => icap_clk,
      D => icap_o(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_4 : FDR
    port map (
      C => icap_clk,
      D => icap_o(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_3 : FDR
    port map (
      C => icap_clk,
      D => icap_o(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_2 : FDR
    port map (
      C => icap_clk,
      D => icap_o(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_1 : FDR
    port map (
      C => icap_clk,
      D => icap_o(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1_0 : FDR
    port map (
      C => icap_clk,
      D => icap_o(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d1(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(35),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(35)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_34 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(34),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(34)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_33 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(33),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(33)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_32 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(32),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(32)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_31 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(31),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(31)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(30),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(30)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(29),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(29)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(28),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(28)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(27),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(27)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(26),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(26)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(25),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(25)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(24),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(24)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(23),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(23)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(22),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(22)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(21),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(21)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(20),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(20)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(19),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(19)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(18),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(18)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(17),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(17)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(16),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(16)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(15),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(14),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(13),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(12),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o,
      D => inject_address(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_520,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_521,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_521,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_520
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_522,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_522,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_521
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_523,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_523,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_522
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_524,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_524,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_523
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_525,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_525,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_524
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_526,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_526,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_525
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_527,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_527,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_526
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_528,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_528,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_527
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_530,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_1_Q_529,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_530,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_1_Q_529,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_528
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_531,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_531,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_530
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_8_608
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_9_609
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_10_610
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero_cymux : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero_carry,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero_muxcy : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_xor : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(3),
      LI => N1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_fast_route
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero_lut : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero_lut : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_zero
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity_xor : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity_carry,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_parity,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity_muxcy : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_parity,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_high : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(8),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_8 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(7),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_8 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(7),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_7 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(6),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_7 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(6),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_6 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(5),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_6 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(5),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_5 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(4),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_5 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(4),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_4 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(3),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_4 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(3),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_3 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(2),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_3 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(2),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_2 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(1),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_2 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(1),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_1 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(0),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_1 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(0),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_xor : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_carry,
      LI => N1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_fast_route
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_xor_4 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(3),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_xor_3 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(2),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_xor_2 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(1),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_xor_1 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(0),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_xor_0 : XORCY
    port map (
      CI => N1,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_xor_0 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_muxcy_0 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value_carry(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_7 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(6),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_out_xor : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(7),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_invert_arith_carry,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_out
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_6 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(5),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_5 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(4),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_4 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(3),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_3 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(2),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_2 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(1),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_1 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(0),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_xor_0 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in,
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in_muxcy : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry_in,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_high : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(8),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_8 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(7),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_8 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(7),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_7 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(6),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_7 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(6),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_6 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(5),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_6 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(5),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_5 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(4),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_5 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(4),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_4 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(3),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_4 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(3),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_3 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(2),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_3 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(2),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_2 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(1),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_2 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(1),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_1 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(0),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_1 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(0),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_parity_muxcy : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(2),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_parity,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_muxcy_3 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(2),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_muxcy_2 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(1),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_muxcy_1 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(0),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_muxcy_0 : MUXCY
    port map (
      CI => N1,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address_carry(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_7 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(7),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_6 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(6),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_5 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(5),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_4 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(4),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_3 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(3),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_2 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(2),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_1 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(1),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5_0 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(0),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_muxcy : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(1),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_muxcy : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(0),
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_carry,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_7 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_6 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_5 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_4 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_parity_lut : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_parity
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_3 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_or_lut_0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_group(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_parity_lut : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_parity
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_7 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(6),
      DI => NlwRenamedSig_OI_monitor_txdata(7),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_6 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(5),
      DI => NlwRenamedSig_OI_monitor_txdata(6),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_5 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(4),
      DI => NlwRenamedSig_OI_monitor_txdata(5),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_4 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(3),
      DI => NlwRenamedSig_OI_monitor_txdata(4),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_3 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(2),
      DI => NlwRenamedSig_OI_monitor_txdata(3),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_2 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(1),
      DI => NlwRenamedSig_OI_monitor_txdata(2),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_1 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(0),
      DI => NlwRenamedSig_OI_monitor_txdata(1),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_muxcy_0 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in,
      DI => NlwRenamedSig_OI_monitor_txdata(0),
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_internal_carry(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_value_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_address(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_value(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_cymux : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_zero_carry,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_zero,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_zero,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_muxcy : MUXCY
    port map (
      CI => N1,
      DI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_carry,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_carry,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_carry(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_inv : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_lut_4 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_lut_3 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_lut_2 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_lut_1 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_count_lut_0 : LUT4
    generic map(
      INIT => X"6555"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_push_or_pop_type,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_stack_address(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_inv : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable_lut : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_write,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_invert_enable : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_enable_lut : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_write,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_pulse_lut : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_clean_int,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_pulse
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state_lut : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_t_state
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => NlwRenamedSig_OI_monitor_txdata(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => NlwRenamedSig_OI_monitor_txdata(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => NlwRenamedSig_OI_monitor_txdata(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => NlwRenamedSig_OI_monitor_txdata(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => NlwRenamedSig_OI_monitor_txdata(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => NlwRenamedSig_OI_monitor_txdata(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_mux_lut_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in,
      I2 => NlwRenamedSig_OI_monitor_txdata(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => NlwRenamedSig_OI_monitor_txdata(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry_value
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in_muxf5 : MUXF5
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_shift_in,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_shift_in,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_in
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_shift_in_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag,
      I2 => NlwRenamedSig_OI_monitor_txdata(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_low_shift_in
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_mux_lut_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_group(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_xor_0 : XORCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      LI => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_vector(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_0 : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      DI => N1,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector_carry(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_move_lut : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_condition_met,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_valid_to_move
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count_lut : LUT3
    generic map(
      INIT => X"2F"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_condition_met,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_move_group,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_normal_count
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_condition_met_lut : LUT4
    generic map(
      INIT => X"5A3C"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_flag,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_condition_met
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_7 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_out_lut : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_invert_arith_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_6 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_5 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_4 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_3 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_2 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_lut_0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_half_arith(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_in_lut : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry_in
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_7 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(7),
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_6 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_second_operand(6),
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_5 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_4 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_3 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_2 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_1 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_lut_0 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable_lut : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_write,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_shift_in_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(1),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_high_shift_in
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_operand_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_value_lut : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_interrupt_ack_internal,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable_value
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_inv : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_carry_lut : LUT2
    generic map(
      INIT => X"3"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_carry,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_io_decode_lut : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_io_initial_decode
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry_lut : LUT3
    generic map(
      INIT => X"F3"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_zero_lut : LUT3
    generic map(
      INIT => X"3F"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_zero,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shadow_zero
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_read_active_lut : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_io_initial_decode,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_read_active
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_write_active_lut : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_io_initial_decode,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_write_active
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_fetch_type_lut : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_fetch_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith_lut : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical_lut : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_type_lut : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_type_lut : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_vector_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_vector(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_carry_lut : LUT2
    generic map(
      INIT => X"C"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_parity_lut : LUT4
    generic map(
      INIT => X"F3FF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_parity,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_parity
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_type_lut : LUT4
    generic map(
      INIT => X"41FC"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_push_pop_lut : LUT4
    generic map(
      INIT => X"5400"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_push_or_pop_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type_lut : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_call_type
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_move_group_lut : LUT4
    generic map(
      INIT => X"7400"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_move_group
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_update_lut : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_update_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_9 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(9),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_8 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(8),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_7 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_6 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(6),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_5 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(5),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_4 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(4),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_3 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(3),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_2 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(2),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_1 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(1),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_bit_0 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_address(0),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_7 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_6 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(6),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_5 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(5),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_4 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(4),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_3 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(3),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_2 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(2),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_1 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(1),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_bit_0 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      A4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      A5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      D => NlwRenamedSig_OI_monitor_txdata(0),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_enable,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_7 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(7),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(7),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_6 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(6),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(6),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_5 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(5),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(5),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_4 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(4),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(4),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_3 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(3),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(3),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_2 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(2),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(2),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_1 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(1),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(1),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_0 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8),
      A1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9),
      A2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10),
      A3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11),
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_alu_result(0),
      DPRA0 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4),
      DPRA1 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5),
      DPRA2 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6),
      DPRA3 => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(0),
      DPO => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sy(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_next_stack_address(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_address(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(9),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(8),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(7),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(6),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(5),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(4),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(3),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(2),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(1),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_flop_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_ram_data(0),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_stack_pop_data(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_read_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_read_active,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_read_strobe
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_write_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_write_active,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_input_fetch_type,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_group
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry_out,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_value(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_arith_result(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_value(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_result(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pipeline_bit : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry_value,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shift_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_value(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_logical_result(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(7),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(6),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(5),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(4),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(3),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(2),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(1),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_flop_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_data(0),
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_store_data(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_type,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_memory_write
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_type,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_register_write
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_enable,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_fast_route,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_enable,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_fast_route,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_flag
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_type,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_flag_write
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_update_enable,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable_value,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_enable
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_zero_flop : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_zero_flag,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_zero
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_carry_flop : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_carry_flag,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_shadow_carry
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_ack_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_interrupt_ack_internal
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_pulse,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_int_capture_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => N1,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_clean_int
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_toggle_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_not_t_state,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_t_state
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_15_917
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_14_916
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_13_915
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_12_914
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_11_913
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10_912
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9_911
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8_910
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndrome(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle(11),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(10),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(9),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(8),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(7),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(6),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(5),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(4),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(3),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(2),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(1),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(0),
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_eccerr : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_eccerr_387
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0,
      Q => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_10_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_9_Q_1082,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_10_Q_1081,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_gold_crc_31_not_equal_16_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_10_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(30),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(31),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_10_Q_1081
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_9_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_8_Q_1084,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_9_Q_1083,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_9_Q_1082
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_9_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(27),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(28),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(29),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_9_Q_1083
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_8_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_7_Q_1086,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_8_Q_1085,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_8_Q_1084
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_8_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(24),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(25),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(26),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_8_Q_1085
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_7_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_6_Q_1088,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_7_Q_1087,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_7_Q_1086
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_7_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(21),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(22),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_7_Q_1087
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_6_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_5_Q_1090,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_6_Q_1089,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_6_Q_1088
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_6_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(18),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(19),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(20),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(20),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_6_Q_1089
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_5_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_4_Q_1092,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_5_Q_1091,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_5_Q_1090
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_5_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(15),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(16),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_5_Q_1091
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_4_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_3_Q_1094,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_4_Q_1093,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_4_Q_1092
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(12),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(13),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(14),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_4_Q_1093
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_3_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_2_Q_1096,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_3_Q_1095,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_3_Q_1094
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_3_Q_1095
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_2_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_1_Q_1098,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_2_Q_1097,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_2_Q_1096
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(8),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_2_Q_1097
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_1_Q : MUXCY
    port map (
      CI => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_0_Q_1100,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_1_Q_1099,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_1_Q_1098
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_1_Q_1099
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_0_Q_1101,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_cy_0_Q_1100
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mcompar_scan_crc_31_gold_crc_31_not_equal_16_o_lut_0_Q_1101
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_31_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(31)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_30 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_30_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(30)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_29 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_29_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(29)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_28 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_28_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(28)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_27 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_27_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(27)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_26 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_26_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(26)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_25 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_25_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(25)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_24 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_24_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(24)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_23 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_23_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(23)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_22 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_22_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(22)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_21 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_21_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(21)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_20 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_20_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(20)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_19 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_19_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(19)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_18 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_18_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(18)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_17 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_17_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(17)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_16 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_16_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(16)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_15 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_15_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_14 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_14_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_13 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_13_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_12 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_12_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_11 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_11_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_10 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_10_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_9 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_9_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_8 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_8_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_7 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_7_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_6 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_6_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_5 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_5_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_4 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_4_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_3 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_3_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_2 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_2_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_1 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_1_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_0_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_31_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_30 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_30_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_29 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_29_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_28 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_28_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_27 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_27_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_26 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_26_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_25 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_25_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_24 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_24_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_23 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_23_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_22_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_21 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_21_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_20 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_20_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(20)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_19 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_19_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_18 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_18_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_17_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_16 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_16_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_15 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_15_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_14 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_14_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_13 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_13_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_12 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_12_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_11 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_11_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_10 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_10_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_9_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_8 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_8_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_7 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_7_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_6 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_6_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_5_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_4_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_3 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_3_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_2 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_2_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_1 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_1_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_0_Q,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crcerr : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_rb_eos_AND_127_o,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crc_initialize_0,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crcerr_386
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1621 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFF7F7F"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0833_5_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0833
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o_11_1 : LUT6
    generic map(
      INIT => X"0000001000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o_11_1 : LUT6
    generic map(
      INIT => X"0000001000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o_11_1 : LUT6
    generic map(
      INIT => X"0000001000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0827_5_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0827
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0764_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0764
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0759_5_1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0759
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_152_o_2_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_152_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_150_o_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_150_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_148_o_0_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_148_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_4_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr4
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_cy_4_11 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_cy(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr3
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o_11_1 : LUT6
    generic map(
      INIT => X"0000010000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_2 : LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_11 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel_5_1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o21 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o1 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_1,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_3_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_139_o1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_139_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_141_o_6_1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => NlwRenamedSig_OI_monitor_txdata(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_141_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o11 : LUT6
    generic map(
      INIT => X"0000800000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o1_109
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_133_o21 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_133_o2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0774_5_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0774
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0736_5_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0736
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_111 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o_11_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port143121 : LUT6
    generic map(
      INIT => X"2222222222020222"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28312,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14312
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B_1_1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A71 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283111 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_113,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28311
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_156_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o2,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_155_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o1_109,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_158_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o1_109,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_157_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_30_o_5_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_133_o2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_2_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_11 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_11 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4321 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o_11_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o_11_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o_11_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4311 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0774,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port431
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_11 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction19 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(11),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(12),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(12),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(13),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(14),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(16),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(16)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(17),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(17)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_Mmux_instruction181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_bank_sel_reg_296,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_instruction(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0859_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0859
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_291,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_eccerr_387,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_first_ecc_event
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_monitor_rxread1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_read_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1,
      O => monitor_rxread
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_monitor_txwrite1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_5_GND_7_o_equal_18_o_5_1,
      O => monitor_txwrite
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inject_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_293,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_inject_strobe_errinj_ego_AND_135_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_go1 : LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_go
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_read_strobe,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea12 : LUT5
    generic map(
      INIT => X"FFFF1000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea11,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea21 : LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea11,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea111 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_icap_i(11),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_17_Q,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_8_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_wea11
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101_518,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101_518,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101_518,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_icap_frb11 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_8_Q,
      I1 => NlwRenamedSig_OI_icap_i(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_17_Q,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_icap_rdwrb11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_8_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      O => icap_rdwrb
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_icap_csb11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_17_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      O => icap_csb
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I2 => NlwRenamedSig_OI_icap_i(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I2 => NlwRenamedSig_OI_icap_i(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I2 => NlwRenamedSig_OI_icap_i(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I2 => NlwRenamedSig_OI_icap_i(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5),
      I2 => NlwRenamedSig_OI_icap_i(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I2 => NlwRenamedSig_OI_icap_i(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      I2 => NlwRenamedSig_OI_icap_i(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8),
      I2 => NlwRenamedSig_OI_icap_i(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9),
      I2 => NlwRenamedSig_OI_icap_i(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_addra101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606,
      I2 => NlwRenamedSig_OI_icap_i(13),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina17 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_10_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o(13),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_11_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o(12),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_12_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_13_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_14_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_15_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_16_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_1_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_2_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_3_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_4_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_5_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_6_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_7_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_dina161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_ctl_ena_611,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_9_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_11 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_21 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_31 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_41 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_51 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_61 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_71 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_7_0_81 : LUT6
    generic map(
      INIT => X"BAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I5 => NlwRenamedSig_OI_monitor_txdata(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_11_8_11 : LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I5 => NlwRenamedSig_OI_monitor_txdata(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_11_8_21 : LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I5 => NlwRenamedSig_OI_monitor_txdata(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_11_8_31 : LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I5 => NlwRenamedSig_OI_monitor_txdata(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mmux_din_from_cpu_11_8_41 : LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I5 => NlwRenamedSig_OI_monitor_txdata(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh11 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1_895
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pbuf_sel,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Sh
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_4_11 : LUT6
    generic map(
      INIT => X"AAA9AAAAAAA9AAA9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy_4_11 : LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_3_11 : LUT5
    generic map(
      INIT => X"A9AAA9A9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_2_11 : LUT4
    generic map(
      INIT => X"99C9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_1_11 : LUT3
    generic map(
      INIT => X"65"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_6_11 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_xor_5_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg_294,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_ecc_initialize_0
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_1_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0351,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_2_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0349,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0354,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_31_XOR_846_o_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_846_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_31_XOR_891_o_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_891_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0829_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0829
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0898_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0898
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT110 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT210 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out16,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_10_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT33 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out17,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_11_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT41 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out18,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_12_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT51 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out19,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_13_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT61 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out20,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_14_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT71 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out22,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_15_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT81 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out23,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_16_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT91 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out24,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_17_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT101 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out25,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_18_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out26,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_19_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT121 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out21,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_1_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT131 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out27,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_20_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT141 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out28,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_21_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT151 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out29,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_22_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT161 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out30,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_23_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT171 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out31,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_24_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT181 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_25_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT191 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out3,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_26_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT201 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out4,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_27_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT211 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out5,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_28_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT221 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out6,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_29_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT231 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_2_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT241 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out7,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_30_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT251 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out8,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_31_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT261 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out9,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_3_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT271 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out10,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_4_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT281 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out11,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_5_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT291 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out12,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_6_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT301 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out13,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_7_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT311 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out14,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_8_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_scan_crc_31_PWR_67_o_mux_4_OUT321 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out15,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_PWR_67_o_mux_4_OUT_9_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_17_XOR_1293_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_17_XOR_1293_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0825_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0825
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0816_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0816
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0822_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0822
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0824_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0824
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_22_XOR_890_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_22_XOR_890_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crc_initialize1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crc_initialize_0
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_rb_eos_AND_127_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_gold_crc_31_not_equal_16_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_end_365,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_rb_eos_AND_127_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0896_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0896
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0903_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_31_icap_s_0_XOR_1094_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_1094_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_scan_crc_26_XOR_542_o_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0886,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_4_scan_crc_28_XOR_502_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0823_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_592_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0858,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(13),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0813_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_472_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_17_XOR_1293_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_icap_s_14_XOR_572_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0891,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_frame_par_o_4_XOR_731_o_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_frame_par_o_4_XOR_731_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_582_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_2_XOR_484_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0896,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_31_XOR_1246_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0844_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0844
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_26_XOR_562_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0854,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0826_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_26_XOR_602_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(14),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_icap_s_1_XOR_836_o_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_icap_s_1_XOR_836_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0835_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0835
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_icap_s_0_XOR_1028_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0886,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1028_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_26_XOR_979_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_979_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_14_XOR_1011_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_30_XOR_1235_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_14_XOR_1011_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_icap_s_14_XOR_1124_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0851,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0858,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0889,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_27_XOR_1111_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_1124_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_1045_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1045_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0812_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_0_scan_crc_28_XOR_460_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_994_o_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0891,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_994_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_16_XOR_1137_o_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0851,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0854,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0858,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_16_XOR_1137_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof211 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_1062_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out28
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof291 : LUT6
    generic map(
      INIT => X"D77D7DD728828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1205_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out7
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_6_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => N2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_6_1 : LUT6
    generic map(
      INIT => X"66666664AAAAAAA8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I2 => N2,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_cy(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr6
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_0_1_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      O => N4
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_0_1 : LUT6
    generic map(
      INIT => X"5555555155555555"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I5 => N4,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_SW0 : LUT3
    generic map(
      INIT => X"E9"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      O => N6
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522 : LUT5
    generic map(
      INIT => X"0000FEFF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => N6,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_113
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o_11_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      O => N8
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o_11_Q : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I4 => N8,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o_11_1_122,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port521 : LUT6
    generic map(
      INIT => X"0000F000AA00CC00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_15_917,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port52
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port522 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(31),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port521_1272
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port524 : LUT5
    generic map(
      INIT => X"AAAAF3C0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(8),
      I3 => NlwRenamedSig_OI_icap_i(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port523_1274
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port525 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(7),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port523_1274,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port524_1275
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port526 : LUT6
    generic map(
      INIT => X"1111101011111000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0774,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port522_1273,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port521_1272,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port524_1275,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port525_1276
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port527 : LUT6
    generic map(
      INIT => X"88BB888888B88888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_15_288,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port525_1276,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port526_1277
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port5210 : LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port528_1279,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port529_1280
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port402 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(29),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port401_1282
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port404 : LUT5
    generic map(
      INIT => X"AAAAF3C0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_9_609,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(10),
      I3 => NlwRenamedSig_OI_icap_i(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port403_1284
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port405 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port403_1284,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port404_1285
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port406 : LUT6
    generic map(
      INIT => X"3030202030302000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port431,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port402_1283,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port401_1282,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port404_1285,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port405_1286
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port407 : LUT6
    generic map(
      INIT => X"FFFF0F0FFFFF0800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port40,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port405_1286,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port406_1287
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port408 : LUT6
    generic map(
      INIT => X"ACA0ACAFACA0ACA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_13_286,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port406_1287,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port407_1288
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port409 : LUT6
    generic map(
      INIT => X"AAAAFF03AAAAFF00"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port407_1288,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port408_1289
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4010 : LUT5
    generic map(
      INIT => X"5E0E5404"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_13_915,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port409_1290
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4011 : LUT5
    generic map(
      INIT => X"AFA3ACA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(13),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port409_1290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port408_1289,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4010_1291
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4012 : LUT5
    generic map(
      INIT => X"CCAFCCA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4010_1291,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port341 : LUT6
    generic map(
      INIT => X"EEAAEEAAFCF0CC00"
    )
    port map (
      I0 => monitor_rxdata(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(28),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port34
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port342 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(12),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(20),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port341_1293
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port343 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I1 => NlwRenamedSig_OI_icap_i(3),
      I2 => NlwRenamedSig_OI_icap_i(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port342_1294
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port344 : LUT6
    generic map(
      INIT => X"CCCCAAAAF0F0FF00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_8_608,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port342_1294,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port343_1295
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port345 : LUT6
    generic map(
      INIT => X"FFC4FFC0FFC0FFC0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port341_1293,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port34,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port343_1295,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port344_1296
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port346 : LUT6
    generic map(
      INIT => X"FFA30000FFA00000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg_294,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0774,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port344_1296,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port345_1297
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port347 : LUT6
    generic map(
      INIT => X"FFFFFFFF20202220"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port345_1297,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port346_1298
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port348 : LUT6
    generic map(
      INIT => X"ACA0ACAFACA0ACA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_12_285,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port346_1298,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port347_1299
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port349 : LUT6
    generic map(
      INIT => X"AAAA0003AAAA0000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port347_1299,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port348_1300
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3410 : LUT5
    generic map(
      INIT => X"5E0E5404"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_12_914,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port349_1301
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3411 : LUT5
    generic map(
      INIT => X"AFA3ACA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port349_1301,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port348_1300,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3410_1302
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3412 : LUT5
    generic map(
      INIT => X"CCAFCCA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port3410_1302,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port461 : LUT5
    generic map(
      INIT => X"00F0AACC"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_14_916,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port46
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port462 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I2 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port46,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port461_1304
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port464 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(30),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port463_1306
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port466 : LUT5
    generic map(
      INIT => X"AAAAFC30"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_10_610,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(1),
      I3 => NlwRenamedSig_OI_icap_i(9),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port465_1308
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port467 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port465_1308,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port466_1309
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port468 : LUT6
    generic map(
      INIT => X"3030202030302000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port431,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port464_1307,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port463_1306,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port466_1309,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port467_1310
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port469 : LUT6
    generic map(
      INIT => X"FFFF0F0FFFFF0800"
    )
    port map (
      I0 => icap_grant,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port432,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port462_1305,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port467_1310,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port468_1311
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4610 : LUT6
    generic map(
      INIT => X"ACA0ACAFACA0ACA0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_14_287,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port468_1311,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port469_1312
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4611 : LUT6
    generic map(
      INIT => X"FFFF0B00FFFF0800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_291,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port461_1304,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port469_1312,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4610_1313
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4612 : LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(14),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4610_1313,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4611_1314
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port281 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28311,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28312,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port282 : LUT6
    generic map(
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_11_913,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(11),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port281_1316
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I2 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port281_1316,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port282_1317
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port284 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(35),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_11_284,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283_1318
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port285 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port284_1319
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port286 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(27),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port285_1320
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port288 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I1 => NlwRenamedSig_OI_icap_i(4),
      I2 => NlwRenamedSig_OI_icap_i(12),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port287_1322
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port289 : LUT6
    generic map(
      INIT => X"AA000000CC00F000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port287_1322,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port288_1323
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2810 : LUT6
    generic map(
      INIT => X"FCFCECECFCFCECCC"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port284_1319,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port431,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port286_1321,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port285_1320,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port288_1323,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port289_1324
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2811 : LUT6
    generic map(
      INIT => X"AAAAAA8AAAAAAA88"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2521,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28311,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2810_1325
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2812 : LUT4
    generic map(
      INIT => X"CCDC"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2811_1326
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2813 : LUT6
    generic map(
      INIT => X"FF1BFF11FF0AFF00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2810_1325,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2811_1326,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port289_1324,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2812_1327
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2814 : LUT6
    generic map(
      INIT => X"5555504055555000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283_1318,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port282_1317,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2812_1327,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2813_1328
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2815 : LUT5
    generic map(
      INIT => X"3B3B3B08"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2813_1328,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2814_1329
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2816 : LUT5
    generic map(
      INIT => X"DF8FD888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2814_1329,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port211 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28312,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port21
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port212 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10_912,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port211_1331
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port213 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(34),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_10_283,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port212_1332
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port214 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(18),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port213_1333
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port215 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I1 => NlwRenamedSig_OI_icap_i(5),
      I2 => NlwRenamedSig_OI_icap_i(13),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port214_1334
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port216 : LUT6
    generic map(
      INIT => X"AAAACCCCF0F0FF00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port214_1334,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port215_1335
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port217 : LUT5
    generic map(
      INIT => X"C4C0C0C0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port213_1333,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port215_1335,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port216_1336
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port218 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(26),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port217_1337
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port219 : LUT6
    generic map(
      INIT => X"CF03CF03CF03CE02"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14112,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port217_1337,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port216_1336,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port218_1338
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2110 : LUT5
    generic map(
      INIT => X"000B0008"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port218_1338,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port219_1339
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2112 : LUT5
    generic map(
      INIT => X"05010500"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2110_1340,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_113,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2111_1341
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2113 : LUT6
    generic map(
      INIT => X"ECECE0E0EEECE2E0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2111_1341,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2112_1342
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2114 : LUT6
    generic map(
      INIT => X"FFAAFFAAFF02FF00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port212_1332,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2112_1342,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port219_1339,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2113_1343
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2116 : LUT6
    generic map(
      INIT => X"3B0B0B0B3B080808"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2522_113,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port21,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2114_1344,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2115_1345
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2117 : LUT5
    generic map(
      INIT => X"DF8FD888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2115_1345,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port71 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14312,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port7
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port72 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8_910,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(8),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port71_1347
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port73 : LUT6
    generic map(
      INIT => X"FBEAEAEA51404040"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I2 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I4 => monitor_txfull,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port71_1347,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port72_1348
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port74 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(32),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_8_281,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port73_1349
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port75 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I1 => monitor_rxdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(24),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port74_1350
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port76 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port75_1351
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port711 : LUT6
    generic map(
      INIT => X"AAC0AACFAAC0AAC0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79_1353,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port710_1354
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port712 : LUT6
    generic map(
      INIT => X"FFFFFFFDAAAAAAA8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port710_1354,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port711_1355
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port713 : LUT6
    generic map(
      INIT => X"00000000AAAAFAFB"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port712_1356
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port714 : LUT5
    generic map(
      INIT => X"00AF00AE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port712_1356,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port713_1357
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port715 : LUT5
    generic map(
      INIT => X"F0FFF0FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port713_1357,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port714_1358
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port716 : LUT6
    generic map(
      INIT => X"F0C0F040F080F000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port73_1349,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port714_1358,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port711_1355,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port715_1359
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port717 : LUT6
    generic map(
      INIT => X"3B0B3B0B3B0B3B08"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port7,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port72_1348,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port715_1359,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port716_1360
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port718 : LUT5
    generic map(
      INIT => X"DF8FD888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port716_1360,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port141 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14312,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port142 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9_911,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(9),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port141_1362
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port143 : LUT6
    generic map(
      INIT => X"FBEAEAEA51404040"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I2 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I4 => monitor_rxempty,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port141_1362,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port142_1363
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port144 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0821,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(33),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total_9_282,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port143_1364
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port146 : LUT6
    generic map(
      INIT => X"FFFFCCCD00000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_B(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port144_1365,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port145_1366
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port147 : LUT6
    generic map(
      INIT => X"F0F0F3F3F0F0F3F2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2521,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port145_1366,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port146_1367
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port149 : LUT6
    generic map(
      INIT => X"EEAAFEAACC00DC00"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port147_1368,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port146_1367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port148_1369
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1410 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(25),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I3 => monitor_rxdata(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port149_1370
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1411 : LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port149_1370,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14112,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0764,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0759,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_n0781,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1410_1371
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1413 : LUT5
    generic map(
      INIT => X"AAAAFC30"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(6),
      I3 => NlwRenamedSig_OI_icap_i(14),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1412_1373
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1414 : LUT6
    generic map(
      INIT => X"AAA22A2288800800"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1412_1373,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1413_1374
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1415 : LUT6
    generic map(
      INIT => X"BBBBB8B8BBBBB888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_end_365,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0785,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1411_1372,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1410_1371,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1413_1374,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1414_1375
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1416 : LUT6
    generic map(
      INIT => X"FFFF000BFFFF0008"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0790,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port148_1369,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1414_1375,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1415_1376
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1417 : LUT5
    generic map(
      INIT => X"FFC8FFC0"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port143_1364,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port142_1363,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1415_1376,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1416_1377
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1418 : LUT5
    generic map(
      INIT => X"3B0B3B08"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0864,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1416_1377,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1417_1378
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1419 : LUT5
    generic map(
      INIT => X"DF8FD888"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0869,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_efcr(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1417_1378,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      O => N10
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      I5 => N10,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_1_o_272
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0625_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_85_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_90_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o,
      O => N12
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0625 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_94_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_93_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_92_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_91_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_88_o,
      I5 => N12,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o_11_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => N14
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o_11_Q : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I5 => N14,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt101 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt10
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt102 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_8_608,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt101_1383
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt103 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_10_610,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr_9_609,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt102_1384
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt104 : LUT5
    generic map(
      INIT => X"80000080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt101_1383,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt102_1384,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt10,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o1_1385
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o1_1385,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o2_1386
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_11_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      O => N16
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_11_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0351,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0354,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0349,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => N16,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut_0_Q : LUT6
    generic map(
      INIT => X"5555555655555555"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I5 => N4,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_1_1389
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_2_1390
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_1_1392
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_2_1393
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_1_1392,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_10_xo_0_2_1393,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_1_1395
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_2_1396
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_1_1395,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_6_xo_0_2_1396,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_1_1398
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_2_1399
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_1_1398,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_8_xo_0_2_1399,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_1_1401
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_2_1402
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_1_1401,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_7_xo_0_2_1402,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_1_1404
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_2_1405
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_1_1404,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_5_xo_0_2_1405,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_hwa(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_1 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_2 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_1_1407
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_3 : LUT6
    generic map(
      INIT => X"8228288228828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_2_1408
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_4 : LUT5
    generic map(
      INIT => X"69969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_1_1407,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_4_xo_0_2_1408,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_lut(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_2 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_1_1410
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_3 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_1_1412,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(8),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_3_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I5 => N20,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_1188_o_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0896,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_30_XOR_1235_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => N22,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1188_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_532_o_xo_0_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(7),
      O => N24
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_532_o_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I5 => N24,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_26_XOR_1062_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_17_XOR_1293_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N26
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_26_XOR_1062_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => N26,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_1062_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_1171_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      O => N28
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_1171_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0903,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I5 => N28,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1171_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_5_scan_crc_26_XOR_510_o_xo_0_SW0 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      O => N30
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_5_scan_crc_26_XOR_510_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I5 => N30,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_3_icap_s_0_XOR_1220_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N32
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_3_icap_s_0_XOR_1220_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I5 => N32,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_3_icap_s_0_XOR_1220_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_31_icap_s_0_XOR_612_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(15),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      O => N34
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_31_icap_s_0_XOR_612_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I5 => N34,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_6_XOR_520_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      O => N36
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_icap_s_1_scan_crc_6_XOR_520_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I5 => N36,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_31_scan_crc_3_XOR_494_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      O => N38
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_31_scan_crc_3_XOR_494_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I5 => N38,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_1079_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      O => N40
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_1079_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => N40,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1079_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_1205_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N42
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_0_XOR_1205_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_31_XOR_1246_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I5 => N42,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1205_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_icap_s_0_XOR_1152_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N44
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_icap_s_0_XOR_1152_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => N44,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1152_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_scan_crc_26_XOR_1109_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N46
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_scan_crc_26_XOR_1109_o_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_27_XOR_1111_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0889,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      I5 => N46,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_1109_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      O => N48
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0825,
      I4 => N48,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_979_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof1 : LUT6
    generic map(
      INIT => X"D77D7DD782282882"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_icap_s_1_XOR_836_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_1,
      I4 => N50,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_14_XOR_1011_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof2 : LUT6
    generic map(
      INIT => X"D77D7DD782282882"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_1,
      I4 => N52,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1045_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out10
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof3 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0844,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_22_XOR_890_o,
      I4 => N54,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_1062_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out11
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof4 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0836,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0835,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I4 => N56,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1079_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out12
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof5 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0829,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821,
      I4 => N58,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_1094_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out13
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof6_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => N60
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof6 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_frame_par_o_4_XOR_731_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0825,
      I4 => N60,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_1109_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out14
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof7_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      O => N62
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof7 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_frame_par_o_4_XOR_731_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I4 => N62,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_1124_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out15
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof8_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => N64
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof8 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I4 => N64,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_16_XOR_1137_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out16
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof9 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0898,
      I4 => N66,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1152_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out17
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof10 : LUT6
    generic map(
      INIT => X"D77D7DD782282882"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_891_o,
      I4 => N68,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1171_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out18
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof11_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => N70
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof11 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0844,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_icap_s_1_XOR_836_o,
      I4 => N70,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1188_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out19
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof12_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_1124_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      O => N72
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof12 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0829,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0816,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I4 => N72,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof13 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0836,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0835,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I4 => N74,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1205_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out20
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof14_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      O => N76
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof14 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0835,
      I4 => N76,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_994_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out21
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof15 : LUT6
    generic map(
      INIT => X"D77D7DD782282882"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0810,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0829,
      I4 => N78,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_3_icap_s_0_XOR_1220_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out22
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof16 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o,
      I4 => N80,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out23
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof17_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      O => N82
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof17 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0813,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_22_XOR_890_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_994_o,
      I4 => N82,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out24
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof18_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_14_XOR_1011_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      O => N84
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof18 : LUT6
    generic map(
      INIT => X"D77D7DD782282882"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_846_o,
      I4 => N84,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out25
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof19_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      O => N86
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof19 : LUT6
    generic map(
      INIT => X"D77D7DD728828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1028_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o,
      I4 => N86,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out26
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof20_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      O => N88
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof20 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1045_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0823,
      I4 => N88,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out27
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof22_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1079_o,
      O => N90
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof22 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0810,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0816,
      I4 => N90,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out29
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof24_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      O => N94
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof24 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_1094_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_31_XOR_891_o,
      I4 => N94,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out30
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof25_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_1109_o,
      O => N96
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof25 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I4 => N96,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out31
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof26 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0824,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I4 => N98,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out4
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof28_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_1188_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      O => N102
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof28 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0812,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0824,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I4 => N102,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_592_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out6
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof302 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof301_1454
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof303 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof30,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_26_XOR_542_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof301_1454,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out8
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof31 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0810,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0826,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0898,
      I4 => N104,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1028_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out9
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_glue_set_1456,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_292
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_glue_set_1457,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_glue_set_1458,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_glue_set_1459,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_293
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_glue_set_1460,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_291
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_glue_set_1461,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1462,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1463,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1464,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1465,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1466,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1467,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1468,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1469,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1470,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1471,
      R => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_address(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port5211 : LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port529_1280,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4613 : LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port4611_1314,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_in_port(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2115 : LUT6
    generic map(
      INIT => X"EECF2203EECC2200"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_status_reg(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port211_1331,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2113_1343,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2114_1344
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port529 : LUT6
    generic map(
      INIT => X"FFFFBF00FFFF8000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_293,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port52,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port527_1278,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port528_1279
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port528 : LUT6
    generic map(
      INIT => X"CCCCAFFFCCCCA000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_row_total(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_292,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port526_1277,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port527_1278
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port710 : LUT6
    generic map(
      INIT => X"FFFFFEFEFFFFFEEE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0774,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port162,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port75_1351,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port74_1350,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port78,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79_1353
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_glue_set : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_crcerr_386,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_139_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_292,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_crc_glue_set_1456
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_glue_set : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_go,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_glue_set_1461
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1462
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1463
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1464
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1465
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1466
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1467
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1468
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1469
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1470
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_address(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_inc_pc_value(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1471
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2211 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A121 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A1011 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101_518
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port523 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(15),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port522_1273
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port403 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(13),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(21),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port402_1283
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port465 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(14),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(22),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port464_1307
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port287 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(11),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(19),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port286_1321
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1412 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0749,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_reg(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1411_1372
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1221 : LUT5
    generic map(
      INIT => X"01010111"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1211 : LUT5
    generic map(
      INIT => X"02020222"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0806,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0816,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port121
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0864_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0864
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1611 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port161
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0795_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0795
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0781_5_1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0781
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0873_5_1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0873
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_2 : LUT6
    generic map(
      INIT => X"0000800000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0777
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0749_5_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0749
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0869_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0869
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0800_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0800
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0785_5_1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0785
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0806_5_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0806
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0790_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0790
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0816_5_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0816
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port283121 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0800,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_n0859,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port122,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port28312
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o_11_1 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_11_119,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A21 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A31 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A41 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A51 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_A61 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_A(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_val
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr_xor_5_11 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mcount_wd_ctr5
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv1 : LUT6
    generic map(
      INIT => X"8000000080008000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0300_inv
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh11 : LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_0_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_1_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_2_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(2),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_3_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_4_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_5_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_6_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_7_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(7),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_8_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_9_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_10_xo_0_1 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s17 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(7),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s21 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(13),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s31 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s61 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(14)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s71 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(8),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(15)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s81 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s91 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s101 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s111 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s121 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s131 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s141 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s151 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(15),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s161 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(14),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_0_xo_0_1 : LUT6
    generic map(
      INIT => X"59A6A659A65959A6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0351,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0818_xo_0_2 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0818
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0836_xo_0_2 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_26_XOR_602_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0836
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT110 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT210 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out16,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_10_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT33 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out17,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_11_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT41 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out18,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_12_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT51 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out19,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_13_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT61 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out20,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_14_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT71 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out22,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_15_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT81 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out23,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_16_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT91 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out24,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_17_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT101 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out25,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_18_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT111 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out26,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_19_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT121 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out21,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_1_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT131 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out27,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_20_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT141 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out28,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_21_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT151 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out29,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_22_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT161 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out30,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_23_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT171 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out31,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_24_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT181 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_25_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT191 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out3,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_26_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT201 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out4,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_27_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT211 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out5,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_28_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT221 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out6,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_29_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT231 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_2_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT241 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out7,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_30_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT251 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out8,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_31_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT261 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out9,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_3_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT271 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out10,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_4_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT281 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out11,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_5_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT291 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out12,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_6_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT301 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out13,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_7_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT311 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out14,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_8_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mmux_gold_crc_31_PWR_67_o_mux_9_OUT321 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out15,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_gold_crc_31_PWR_67_o_mux_9_OUT_9_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0821_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0886,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0810_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0810
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0885_xo_0_1 : LUT6
    generic map(
      INIT => X"59A6A659A65959A6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port401 : LUT6
    generic map(
      INIT => X"0200020002020200"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port40
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port463 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_84_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_83_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0890(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_n0625_202,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port462_1305
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port145 : LUT5
    generic map(
      INIT => X"0000FDFF"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port144_1365
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_4 : LUT6
    generic map(
      INIT => X"6996966996969696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_Q,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_1_1389,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_9_xo_0_2_1390,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_wd_ctr(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Madd_hwa_cy(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_3 : LUT5
    generic map(
      INIT => X"D22D2DD2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo_0_1_1410,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_syn_calc_11_xo(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_icap_s_9_XOR_1188_o_xo_0_SW0 : LUT6
    generic map(
      INIT => X"D22D2DD22DD2D22D"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      O => N22
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof1_SW0 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      O => N50
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof5_SW0 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      O => N58
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof13_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => N74
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof16_SW0 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_979_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      O => N80
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof301 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_3_icap_s_0_XOR_1220_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(9),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof30
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof31_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      O => N104
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_0_Q : LUT4
    generic map(
      INIT => X"3FD5"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_0_Q_139
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_glue_set : LUT5
    generic map(
      INIT => X"DFDFDF00"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_133_o2,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_293,
      I4 => inject_strobe,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_errinj_ego_glue_set_1459
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof27_SW1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0821,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_1171_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      O => N106
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof27 : LUT6
    generic map(
      INIT => X"D77D7DD728828228"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I4 => N106,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out5
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof23_SW1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_16_XOR_1137_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0822,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0825,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      O => N108
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof23 : LUT6
    generic map(
      INIT => X"AA8AAABAAABAAA8A"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_26_XOR_562_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I5 => N108,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof_mmx_out3
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port141121 : LUT6
    generic map(
      INIT => X"8080800080008000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port14112
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_1_Q : LUT4
    generic map(
      INIT => X"D515"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_96_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(5),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_1_Q_137
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port25211 : LUT6
    generic map(
      INIT => X"AAAAAAAA00000002"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2521
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_glue_set : LUT4
    generic map(
      INIT => X"7222"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_291,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ws_pid_5_AND_141_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_eccerr_387,
      I3 => NlwRenamedSig_OI_U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syndromevalid,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_ecc_glue_set_1460
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_2 : LUT6
    generic map(
      INIT => X"A9A656595659A9A6"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sof,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_Q,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(6),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle_11_reduce_xor_111_xo_0_1_1412
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_2 : LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0743
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2011 : LUT6
    generic map(
      INIT => X"1111111111111110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0827,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0833,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port201
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_dbuf_sel,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_n0267_inv
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc21 : LUT6
    generic map(
      INIT => X"2AAAAA2AAAAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_burst_607,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt101_1383,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt102_1384,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(7),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_halt10,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle13 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle21 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(10),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(10)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle31 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(11),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_to_next_cycle(11)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle41 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(1)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle51 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(2),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(2)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle61 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(3)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle71 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(4),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(4)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle81 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(5)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle101 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(7),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(7),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(7)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle111 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(8),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(8)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle121 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(9),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(9)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s51 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(13)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_17_scan_crc_27_XOR_1111_o_xo_0_1 : LUT5
    generic map(
      INIT => X"10EFEF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_scan_crc_27_XOR_1111_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_31_XOR_1246_o_xo_0_1 : LUT5
    generic map(
      INIT => X"10EFEF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(31),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_31_XOR_1246_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0910_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(14),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0910
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0856_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0856
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0889_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(9),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0889
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0867_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0867
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0865_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0865
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0866_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(20),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0866
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0855_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(13),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0855
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv1 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0775_inv
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_22_scan_crc_30_XOR_1235_o_xo_0_1 : LUT6
    generic map(
      INIT => X"9696969696699696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(22),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(6),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_30_XOR_1235_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_scan_crc_9_icap_s_0_XOR_552_o_xo_0_1 : LUT6
    generic map(
      INIT => X"9696969696699696"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0885,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_9_icap_s_0_XOR_552_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o3 : LUT6
    generic map(
      INIT => X"1010101010101000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_ignore,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_calc(9),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o2_1386,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_syn_flag_rb_eof_AND_124_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_glue_set : LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_ignore_364,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_glue_set_1457
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_glue_set : LUT4
    generic map(
      INIT => X"FFA2"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_glue_set_1458
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_1_Q : LUT5
    generic map(
      INIT => X"E41BE4E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_inc2,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_1_Q_529
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"1BE41BE41BE4E4E4"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A12,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Sh1,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_read_strobe,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_write_strobe,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_531
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0810_5_2 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0810
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv1 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_crc_initialize_reg_295,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_readback_start_366,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0772_inv
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0851_xo_0_1 : LUT4
    generic map(
      INIT => X"EF10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0851
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof2_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_14_XOR_572_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      O => N52
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof3_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_0_scan_crc_28_XOR_460_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      O => N54
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof4_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_icap_s_1_scan_crc_6_XOR_520_o,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_472_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      O => N56
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof9_SW0 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_icap_s_0_XOR_612_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_31_scan_crc_3_XOR_494_o,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      O => N66
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof10_SW0 : LUT5
    generic map(
      INIT => X"69969669"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_scan_crc_2_XOR_484_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      O => N68
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof26_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_4_scan_crc_28_XOR_502_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_17_icap_s_0_XOR_1152_o,
      O => N98
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_rb_eof15_SW0 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_9_XOR_582_o,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_22_icap_s_0_XOR_532_o,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc_5_scan_crc_26_XOR_510_o,
      O => N78
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_6_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(10),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_n0890_rs_lut_6_Q_131
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port1231 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_n0777_5_1,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_n0743_5_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port123
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0869_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(26),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0869
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0876_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(13),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(21),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(20),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0876
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0873_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(4),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(28),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0873
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0886_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(6),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(9),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(30),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(17),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0886
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0858_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(5),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(29),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(25),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0858
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0891_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(15),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(3),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(27),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(23),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0891
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_n0349_xo_0_1 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(2),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0349
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_n0354_xo_0_1 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(9),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0354
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0884_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(18),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(24),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0884
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_Mxor_n0854_xo_0_1 : LUT6
    generic map(
      INIT => X"0110FEEFFEEF0110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(19),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_scan_crc(16),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_example_crc_n0854
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_contrib_to_next_cycle91 : LUT6
    generic map(
      INIT => X"6666666A66666666"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_contrib_from_this_cycle(6),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_scan_state(6),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d3_367,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(6)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mmux_icap_s41 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_icap_s(12)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eof
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_n0821_5_1 : LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(5),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(4),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(1),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(2),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_pid_reg(3),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_n0821
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_frame_par_we1 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d2_368,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_ecc_initialize_reg_294,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_frb_d1_369,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_contrib_from_this_cycle_3_xo_0_SW0 : LUT5
    generic map(
      INIT => X"FDFEFEFD"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(11),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(10),
      O => N20
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_Mxor_n0351_xo_0_1 : LUT6
    generic map(
      INIT => X"0110100110010110"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_sos_dummy_290,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rb_eor_dummy_289,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(8),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(12),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(4),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_icap_o_d2(0),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_ecc_n0351
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2111 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0440"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(8),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_86_o_11_1_118,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(4),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(6),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_89_o,
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_87_o,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port2110_1340
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port148 : LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_n0795,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I5 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port147_1368
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o1 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(2),
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(3),
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(1),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_PWR_7_o_equal_82_o_11_1,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_rdbk_syn_11_rdbk_syn_11_OR_80_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_init_sync_a : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => N1,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_a
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_init_sync_b : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_a,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_b
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_init_sync_c : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_b,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_c
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_init_sync_d : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_c,
      Q => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_b_ena1_INV_0 : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_ssi_init_c,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_b_ena
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_7_o1_INV_0 : INV
    port map (
      I => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      O => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_7_o
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79 : MUXF7
    port map (
      I0 => N110,
      I1 => N111,
      S => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(1),
      O => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port78
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79_F : LUT6
    generic map(
      INIT => X"2020220220202000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => NlwRenamedSig_OI_icap_i(15),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I5 => NlwRenamedSig_OI_icap_i(7),
      O => N110
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port79_G : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => U0_wrapper_wrapper_gens6_wrapper_controller_Mmux_in_port221,
      I1 => U0_wrapper_wrapper_gens6_wrapper_controller_n0736,
      I2 => U0_wrapper_wrapper_gens6_wrapper_controller_port_id(0),
      I3 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_end_ptr(0),
      I4 => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8),
      O => N111
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18 : RAMB16BWER
    generic map(
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      INITP_00 => X"5FF76AA832803FF4F4D3F3FD3FFFFF4F50D82BB4382F88000D3F337778FFFF8F",
      INITP_01 => X"FEFFFFF6FFFFDBFFD33F37CFCF7FD7DDA83283F7D3CCFFF3FFFF7FFFF4FFFD35",
      INITP_02 => X"800A0B580A0AEEEEEEC2D55400CCCF0550032FFBFEFFBCFFCFEF33FF33AA03FB",
      INITP_03 => X"8C3FF8C2083EFF7BFF976AAAA2FFF2D2D2A8297B4290030A2D2D23CFFCFED75E",
      INITP_04 => X"ABA2200EAAE0A880A8800A880A880B4BB223223223223223222F0CB2CE222FFF",
      INITP_05 => X"20E9D40A0EA5000EAA0A5502AAAA23A23A22238800AAA2002FBDEFBEFEFE8883",
      INITP_06 => X"002BCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCAB574354D00E828368AA20E9D74",
      INITP_07 => X"C000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4010C000CF1E0F014015401540154015401540154015C000CF1E0F0040154015",
      INIT_01 => X"6B0D6A0C50552008401E401A01DC01FB001F01F1006050AD400850594004501B",
      INIT_02 => X"10B002CAE007A00F10E0ED0602CA02CAE0050000E00BA00F10A06E106D0F6C0E",
      INIT_03 => X"FBD0DAC06B026A0150462E80E004A01F10C0ED09EC0802CAE00A5C554042A07F",
      INIT_04 => X"600A0207021101A502BE0297029702074048031F404858552040600702ED5855",
      INIT_05 => X"020750A44001600350A42002401E400201E201FB0000029C405502C454544041",
      INIT_06 => X"4D0E01974C08CA09CB0A0AA60B010E000F000159013902BE029750832001401E",
      INIT_07 => X"AB008A01409B02C4029C547E4F00547E4E83CC08CE09CF0ACD08CA09CB0AFCD0",
      INIT_08 => X"02C454934041600A0207021101A502BE02970297549740086003406BAF008E01",
      INIT_09 => X"01320176012800DD019F40A340A3549A4002409B01A2016A029C409B01A2016A",
      INIT_0A => X"50CD2004401E400201FB000801F1C02001EB0132012800DD019F40A9A0DF01EB",
      INIT_0B => X"CD08CE09CF0ABDC04C0E01974D08CE09CF0A0E000F000159013754CD202001EB",
      INIT_0C => X"01F1C04001EB50D1250101320176012D40B7AF008E0140C854C54F0054C54E83",
      INIT_0D => X"54E64702670340D80000400201E201FB000254DB202001EB01F1A0BF01EB40D4",
      INIT_0E => X"010203360350035E0338034A034C036854F14704A00001020336034A034C034A",
      INIT_0F => X"034803660348A000011B01020336035803600338034A034C036854FD4708A000",
      INIT_10 => X"600401C5107001C500000706000007066706A00F6007033803440362A0000336",
      INIT_11 => X"01C5600A0338034A0370A000033601C5600801C5600903380344035A033601C5",
      INIT_12 => X"0344035A0348A0000336036603600348A000033601C5600B0338036A03460338",
      INIT_13 => X"AD009CA04F234E224D214C200A00413A0A04A0000336034A035E034CA0000336",
      INIT_14 => X"64080B000A834F0E01974E0E01974D0E01974C0E0197015D0B000A04AF00AE00",
      INIT_15 => X"019BCF0E019BA000015D0B000A84A0005D51EB00CA01AF00AE00BD509C406509",
      INIT_16 => X"01000083C10AC00901000000A000CA0E019BCB0E019BCC0E019BCD0E019BCE0E",
      INIT_17 => X"090E06004908480805000700C10AC00901000000A0005D71E100C001C2080200",
      INIT_18 => X"0346033801C61C700338034A0370A000557C47428701557F4610860119890808",
      INIT_19 => X"00C0A000559B2010400CA00055972020400CA000C501033601C61C600338036A",
      INIT_1A => X"C0010101A007030002002008600B620A0300050104A641A705000400A000C014",
      INIT_1B => X"55BD2002400CA000C008C209C30AF0104008C209C30AB350924041AF010659B3",
      INIT_1C => X"01000C060100A000037801D701CD037801D701CD1C00A00055C12001400CA000",
      INIT_1D => X"036A035A03440352A0008130810759DA410AA00001000C0601000C0601000C06",
      INIT_1E => X"A01F4006A000A060400641E60354A0000338033C036051E9400001EEA0000336",
      INIT_1F => X"C106D10001EBA11F1100420401EB03380348034EC106D10001EEA1601100A000",
      INIT_20 => X"02140C000242C00A0080C00B0093C0090084A000033601C501EE033803480368",
      INIT_21 => X"0080C00B00A9C0090092A000022D0246010000A0027C0D00A00002140C0DA000",
      INIT_22 => X"00D7C00900CA423F0080C00B00CBC00900B6423F0080C00B00B7C00900A8423F",
      INIT_23 => X"C00A423F00A1C00B00B3C0090076423F0090C00B0077C00900D6423F0080C00B",
      INIT_24 => X"E130E128C108C008C2090296C20A0200E128E002A00056422080400AA0000242",
      INIT_25 => X"C108C008C20902BAC20A0200E128E001E002E130C108C008C20902ACC20A0200",
      INIT_26 => X"CF08CE08CD08CC080277A000E001E130C108C008C20902CEC20A0200E130E128",
      INIT_27 => X"A000CD08CC080284A000C00900AEC00A0000A0004F084E084D084C080277A000",
      INIT_28 => X"028002270246A0000271021B0246A000C00900D0C00A0000A0004D084C080284",
      INIT_29 => X"6C06A000023902ACA00002335A9B2D80029FA000022D027CA0000221026BA000",
      INIT_2A => X"6F056E046D076C06A000CF08CE08CD08CC08C00900DCC00A00006F056E046D07",
      INIT_2B => X"400202B5A000C00A0002C0090028C0016009C000600842A7C009007CC00A0001",
      INIT_2C => X"0F000E000D000C000B000A06A000C0034008C002400802B5A000C0084003C008",
      INIT_2D => X"E61AE519C60AC50946084508C60AC509A6009520A6009520060405806200A000",
      INIT_2E => X"6409630802E1A000E61AE519A6008504661A6519460845084608450802D1A000",
      INIT_2F => X"0200E2076414631342F5E414E31382015AFCF460D350661865170200E414E313",
      INIT_30 => X"E304E2050200E206641463134300E414E31382015B0AE400D350531145024508",
      INIT_31 => X"02E1A000E207C2C06207A000E207C2406207531B4301E304E2050200E206A000",
      INIT_32 => X"9350533350200000620743248001A40093704708532B50200000620663040400",
      INIT_33 => X"437801364378013E4378015F437801204378010DA000E409E308432D8001B460",
      INIT_34 => X"4378014643780145437801444378014343780142437801414378013643780133",
      INIT_35 => X"4378014E4378014D4378014C4378014B4378014A437801494378014843780147",
      INIT_36 => X"437801564378015543780154437801534378015243780151437801504378014F",
      INIT_37 => X"00000000000000000000A000C10D01C14378015A437801594378015843780157",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"43FF000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RSTTYPE => "SYNC",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0
    )
    port map (
      REGCEA => N1,
      CLKA => icap_clk,
      ENB => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_b_ena,
      RSTB => N1,
      CLKB => icap_clk,
      REGCEB => N1,
      RSTA => N1,
      ENA => N1,
      DIPA(3) => N1,
      DIPA(2) => N1,
      DIPA(1) => N0,
      DIPA(0) => N0,
      WEA(3) => N1,
      WEA(2) => N1,
      WEA(1) => N1,
      WEA(0) => N1,
      DOA(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_31_UNCONNECTED,
      DOA(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_30_UNCONNECTED,
      DOA(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_29_UNCONNECTED,
      DOA(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_28_UNCONNECTED,
      DOA(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_27_UNCONNECTED,
      DOA(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_26_UNCONNECTED,
      DOA(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_25_UNCONNECTED,
      DOA(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_24_UNCONNECTED,
      DOA(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_23_UNCONNECTED,
      DOA(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_22_UNCONNECTED,
      DOA(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_21_UNCONNECTED,
      DOA(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_20_UNCONNECTED,
      DOA(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_19_UNCONNECTED,
      DOA(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_18_UNCONNECTED,
      DOA(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_17_UNCONNECTED,
      DOA(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_16_UNCONNECTED,
      DOA(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_15_UNCONNECTED,
      DOA(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_14_UNCONNECTED,
      DOA(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_13_UNCONNECTED,
      DOA(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_12_UNCONNECTED,
      DOA(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_11_UNCONNECTED,
      DOA(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_10_UNCONNECTED,
      DOA(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_9_UNCONNECTED,
      DOA(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_8_UNCONNECTED,
      DOA(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_7_UNCONNECTED,
      DOA(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_6_UNCONNECTED,
      DOA(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_5_UNCONNECTED,
      DOA(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_4_UNCONNECTED,
      DOA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_3_UNCONNECTED,
      DOA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_2_UNCONNECTED,
      DOA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_1_UNCONNECTED,
      DOA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOA_0_UNCONNECTED,
      ADDRA(13) => N0,
      ADDRA(12) => N0,
      ADDRA(11) => N0,
      ADDRA(10) => N0,
      ADDRA(9) => N0,
      ADDRA(8) => N0,
      ADDRA(7) => N0,
      ADDRA(6) => N0,
      ADDRA(5) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => N1,
      ADDRA(2) => N1,
      ADDRA(1) => N1,
      ADDRA(0) => N1,
      ADDRB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_address(9),
      ADDRB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_address(8),
      ADDRB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_address(7),
      ADDRB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_address(6),
      ADDRB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_address(5),
      ADDRB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_address(4),
      ADDRB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_address(3),
      ADDRB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_address(2),
      ADDRB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_address(1),
      ADDRB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_address(0),
      ADDRB(3) => N1,
      ADDRB(2) => N1,
      ADDRB(1) => N1,
      ADDRB(0) => N1,
      DIB(31) => N1,
      DIB(30) => N1,
      DIB(29) => N1,
      DIB(28) => N1,
      DIB(27) => N1,
      DIB(26) => N1,
      DIB(25) => N1,
      DIB(24) => N1,
      DIB(23) => N1,
      DIB(22) => N1,
      DIB(21) => N1,
      DIB(20) => N1,
      DIB(19) => N1,
      DIB(18) => N1,
      DIB(17) => N1,
      DIB(16) => N1,
      DIB(15) => N1,
      DIB(14) => N1,
      DIB(13) => N1,
      DIB(12) => N1,
      DIB(11) => N1,
      DIB(10) => N1,
      DIB(9) => N1,
      DIB(8) => N1,
      DIB(7) => N1,
      DIB(6) => N1,
      DIB(5) => N1,
      DIB(4) => N1,
      DIB(3) => N1,
      DIB(2) => N1,
      DIB(1) => N1,
      DIB(0) => N1,
      DOPA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPA_0_UNCONNECTED,
      DIPB(3) => N1,
      DIPB(2) => N1,
      DIPB(1) => N1,
      DIPB(0) => N1,
      DOPB(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPB_2_UNCONNECTED,
      DOPB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(17),
      DOPB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(16),
      DOB(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_31_UNCONNECTED,
      DOB(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_30_UNCONNECTED,
      DOB(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_29_UNCONNECTED,
      DOB(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_28_UNCONNECTED,
      DOB(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_27_UNCONNECTED,
      DOB(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_26_UNCONNECTED,
      DOB(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_25_UNCONNECTED,
      DOB(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_24_UNCONNECTED,
      DOB(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_23_UNCONNECTED,
      DOB(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_22_UNCONNECTED,
      DOB(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_21_UNCONNECTED,
      DOB(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_20_UNCONNECTED,
      DOB(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_19_UNCONNECTED,
      DOB(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_18_UNCONNECTED,
      DOB(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_17_UNCONNECTED,
      DOB(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOB_16_UNCONNECTED,
      DOB(15) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(15),
      DOB(14) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(14),
      DOB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(13),
      DOB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(12),
      DOB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(11),
      DOB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(10),
      DOB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(9),
      DOB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(8),
      DOB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(7),
      DOB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(6),
      DOB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(5),
      DOB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(4),
      DOB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(3),
      DOB(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(2),
      DOB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(1),
      DOB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction1(0),
      WEB(3) => N1,
      WEB(2) => N1,
      WEB(1) => N1,
      WEB(0) => N1,
      DIA(31) => N1,
      DIA(30) => N1,
      DIA(29) => N1,
      DIA(28) => N1,
      DIA(27) => N1,
      DIA(26) => N1,
      DIA(25) => N1,
      DIA(24) => N1,
      DIA(23) => N1,
      DIA(22) => N1,
      DIA(21) => N1,
      DIA(20) => N1,
      DIA(19) => N1,
      DIA(18) => N1,
      DIA(17) => N1,
      DIA(16) => N1,
      DIA(15) => N0,
      DIA(14) => N0,
      DIA(13) => N0,
      DIA(12) => N0,
      DIA(11) => N0,
      DIA(10) => N0,
      DIA(9) => N0,
      DIA(8) => N0,
      DIA(7) => N0,
      DIA(6) => N0,
      DIA(5) => N0,
      DIA(4) => N0,
      DIA(3) => N0,
      DIA(2) => N0,
      DIA(1) => N0,
      DIA(0) => N0
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18 : RAMB16BWER
    generic map(
      EN_RSTRAM_A => FALSE,
      EN_RSTRAM_B => FALSE,
      INITP_00 => X"23623F3FFF3F83E083E0FA0A00FDAA0BD34D34D34D34AF7F0FFF33FFF8DDDF8F",
      INITP_01 => X"FCFFFEAADF0DCF30F4FDFF2F3F4FDFFDF4D3DC3F774888888D2E23CE3E3E3E36",
      INITP_02 => X"30BFF333FF333FC3FBFFFFFFFBFFFFFFFA080CD334E2D2DCB724B3FF3CCCCF0F",
      INITP_03 => X"FFF8C3FF8C2083EFF7BFF976AAAA2FFF2D2D2A8297B4290030999D99AAAAC30C",
      INITP_04 => X"128A94248DB6744A0A5AA37402E8A288B4BB223223223223223222F0CB2CE222",
      INITP_05 => X"BEFBFBFA220EAE88803AAB82A202A2002A202A20288D3FFDF4D3D2234DD38E8E",
      INITP_06 => X"CCCCCCA0DA2A883A75D083A750283A94003AA829540A23A23A2222AA8800BEF7",
      INITP_07 => X"C00000000000000000000000000000000002BCCCCCCCCCCCCCCCCCCCCCCCCCCC",
      INIT_00 => X"4015C000CF1E0F01509B4000506F4002501B400101E8C000CF1E0F000112C000",
      INIT_01 => X"010100C00201014E015E401A01D601F5001F01EB006040154015401540154015",
      INIT_02 => X"4F100C0250414F080C0150414F000C000F080C0E014A541D4E9302DA021502AF",
      INIT_03 => X"50414FE80C0750414F880C0650414F700C0550414F400C0450414F200C035041",
      INIT_04 => X"4D084C084F084E08032A4015504B5FC00F0E0F0E0F0E0F0EAF704F1EEC004015",
      INIT_05 => X"C01FE010401F02400285C01FC010401F0158017CEF02EE014F274E26ED18EC17",
      INIT_06 => X"0285400201DC01F50002014A0153014AC01FE020401F02400285C01FC020401F",
      INIT_07 => X"401AE00B4019508B2008E012401CE011401B400201DC01F5000003740392406F",
      INIT_08 => X"000140910095E003000240910095E003000440910095E00300085C874042E00A",
      INIT_09 => X"E010E08050B920804013A0000346E0084015E0094016400201F500040374E003",
      INIT_0A => X"400B5100400C510020086010C0130080E00C400FE00D4010E00E4011E00F4012",
      INIT_0B => X"40F954C0404F400D54F82002400C40F954B9400A40D2A00F600C037603A454B6",
      INIT_0C => X"400D01B7037654F64020400D01B703A454D8405240F70164037403A654C64053",
      INIT_0D => X"037654F64020400D01B7039C54F8404E4000037403B601D11100C01F58F60190",
      INIT_0E => X"54E2C20103B601D11100DA0054E7C1010189010458F60190400D01B70A000209",
      INIT_0F => X"400201DC01F5000202400374039E400201DC0374410EEE10ED0FEC0EEB0DEA0C",
      INIT_10 => X"0010037401C06C0C01C06C0D01C06C0E01C06C0F03B601D1A10F61100376039C",
      INIT_11 => X"A000551CC00101200007B0002080401EA00001F50001013E01290118400201F5",
      INIT_12 => X"400D55312002400C023CC0060000A0005526C20102FFA0005521C101012501FF",
      INIT_13 => X"038003A6A000C01FA00F401FC0130080400E400E4131400E55362020400C412C",
      INIT_14 => X"03860392A00003740396039E414C037C0378037E03AC0378039A038A03A60378",
      INIT_15 => X"03A6038CA000037603960384038803A4415C03A80392039C0392415C03A00382",
      INIT_16 => X"038C039A037401C04C2401C04C2501C00C000376038C03A641FEA00F401F0376",
      INIT_17 => X"0D1B02AF010300A0A000015E01F001FA037401C06C0101C06C0201C00C000376",
      INIT_18 => X"A0000F000E000D000C000B000A06A00002FDCC10CD0002F60101004002FD0CEE",
      INIT_19 => X"04A641A105000400A000800AA000C0F6B80080075D9AC011B800C0E9B80080B9",
      INIT_1A => X"C30AB350924041A9010659ADC0010101A007030002002008600B620A03000501",
      INIT_1B => X"1C00A00055BB2001400CA00055B72002400CA000C008C209C30AF0104008C209",
      INIT_1C => X"01000C0601000C0601000C0601000C060100A00003B601D101C703B601D101C7",
      INIT_1D => X"039E51E3400001E8A000037403A8039803820390A0008130810759D4410AA000",
      INIT_1E => X"C106D10001E8A1601100A000A01F4006A000A060400641E00392A0000376037A",
      INIT_1F => X"037401BF01E80376038603A6C106D10001E5A11F110041FE01E503760386038C",
      INIT_20 => X"02E50D00A000020E0C0DA000020E0C00023CC00A0080C00B0093C0090084A000",
      INIT_21 => X"0080C00B00B7C00900A842390080C00B00A9C0090092A000022702AF010000A0",
      INIT_22 => X"0077C00900D642390080C00B00D7C00900CA42390080C00B00CBC00900B64239",
      INIT_23 => X"A000563C2080400AA000023CC00A423900A1C00B00B3C009007642390090C00B",
      INIT_24 => X"640163096208A0000346C229E2094225C228E2084224A000E01B0000C01400C0",
      INIT_25 => X"661A6519E309E208A3008201C329C228A000E01B000156585350565852406502",
      INIT_26 => X"E3040300527A4401A00053704401E30483015E6C53406304C4014408C60AC509",
      INIT_27 => X"A30F83016307E306E3040300A000E61AE519A6008501661A6519E30683016306",
      INIT_28 => X"20804013548F20805477204040140300C01D00010245A000C31D0304033AE307",
      INIT_29 => X"407156A04049400D56A62002400C40715699400E6010C0130080E010E0805299",
      INIT_2A => X"E002A000E01B0000C01D00025E882201621B024D01DC0164037403A656A64053",
      INIT_2B => X"E130C108C008C20902ACC20A0200E130E128C108C008C2090296C20A0200E128",
      INIT_2C => X"C008C20902CEC20A0200E130E128C108C008C20902BAC20A0200E128E001E002",
      INIT_2D => X"A0004F084E084D084C0802E0A000CF08CE08CD08CC0802E0A000E001E130C108",
      INIT_2E => X"00D0C00A0000A0004D084C0802EDA000CD08CC0802EDA000C00900AEC00A0000",
      INIT_2F => X"A000022702E5A000021B02D4A00002E9022102AFA00002DA021502AFA000C009",
      INIT_30 => X"C00900DCC00A00006F056E046D076C06A00002330308A000022D5B042D800308",
      INIT_31 => X"40020315A000C00A0002C0090028C0016009C0006008A000CF08CE08CD08CC08",
      INIT_32 => X"9520A6009520060405806200A000C0034008C00240080315A000C0084003C008",
      INIT_33 => X"65194608450846084508032AA000E61AE519C60AC50946084508C60AC509A600",
      INIT_34 => X"F460D350661865170200E414E31364096308033AA000E61AE519A6008504661A",
      INIT_35 => X"82015B63E400D350536A450245080200E20764146313434EE414E31382015B55",
      INIT_36 => X"53704301E304E2050200E206A000E304E2050200E206641463134359E414E313",
      INIT_37 => X"43B6013343B6013643B6013E43B6015F43B6012043B6010DA000E207C2C06207",
      INIT_38 => X"43B6014743B6014643B6014543B6014443B6014343B6014243B6014143B60136",
      INIT_39 => X"43B6014F43B6014E43B6014D43B6014C43B6014B43B6014A43B6014943B60148",
      INIT_3A => X"43B6015743B6015643B6015543B6015443B6015343B6015243B6015143B60150",
      INIT_3B => X"0000000000000000000000000000A000C10D01BB43B6015A43B6015943B60158",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"43FF000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RSTTYPE => "SYNC",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0
    )
    port map (
      REGCEA => N1,
      CLKA => icap_clk,
      ENB => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_b_ena,
      RSTB => N1,
      CLKB => icap_clk,
      REGCEB => N1,
      RSTA => N1,
      ENA => N1,
      DIPA(3) => N1,
      DIPA(2) => N1,
      DIPA(1) => N0,
      DIPA(0) => N0,
      WEA(3) => N1,
      WEA(2) => N1,
      WEA(1) => N1,
      WEA(0) => N1,
      DOA(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_31_UNCONNECTED,
      DOA(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_30_UNCONNECTED,
      DOA(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_29_UNCONNECTED,
      DOA(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_28_UNCONNECTED,
      DOA(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_27_UNCONNECTED,
      DOA(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_26_UNCONNECTED,
      DOA(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_25_UNCONNECTED,
      DOA(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_24_UNCONNECTED,
      DOA(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_23_UNCONNECTED,
      DOA(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_22_UNCONNECTED,
      DOA(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_21_UNCONNECTED,
      DOA(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_20_UNCONNECTED,
      DOA(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_19_UNCONNECTED,
      DOA(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_18_UNCONNECTED,
      DOA(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_17_UNCONNECTED,
      DOA(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_16_UNCONNECTED,
      DOA(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_15_UNCONNECTED,
      DOA(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_14_UNCONNECTED,
      DOA(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_13_UNCONNECTED,
      DOA(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_12_UNCONNECTED,
      DOA(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_11_UNCONNECTED,
      DOA(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_10_UNCONNECTED,
      DOA(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_9_UNCONNECTED,
      DOA(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_8_UNCONNECTED,
      DOA(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_7_UNCONNECTED,
      DOA(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_6_UNCONNECTED,
      DOA(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_5_UNCONNECTED,
      DOA(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_4_UNCONNECTED,
      DOA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_3_UNCONNECTED,
      DOA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_2_UNCONNECTED,
      DOA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_1_UNCONNECTED,
      DOA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOA_0_UNCONNECTED,
      ADDRA(13) => N0,
      ADDRA(12) => N0,
      ADDRA(11) => N0,
      ADDRA(10) => N0,
      ADDRA(9) => N0,
      ADDRA(8) => N0,
      ADDRA(7) => N0,
      ADDRA(6) => N0,
      ADDRA(5) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => N1,
      ADDRA(2) => N1,
      ADDRA(1) => N1,
      ADDRA(0) => N1,
      ADDRB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_address(9),
      ADDRB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_address(8),
      ADDRB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_address(7),
      ADDRB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_address(6),
      ADDRB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_address(5),
      ADDRB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_address(4),
      ADDRB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_address(3),
      ADDRB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_address(2),
      ADDRB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_address(1),
      ADDRB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_address(0),
      ADDRB(3) => N1,
      ADDRB(2) => N1,
      ADDRB(1) => N1,
      ADDRB(0) => N1,
      DIB(31) => N1,
      DIB(30) => N1,
      DIB(29) => N1,
      DIB(28) => N1,
      DIB(27) => N1,
      DIB(26) => N1,
      DIB(25) => N1,
      DIB(24) => N1,
      DIB(23) => N1,
      DIB(22) => N1,
      DIB(21) => N1,
      DIB(20) => N1,
      DIB(19) => N1,
      DIB(18) => N1,
      DIB(17) => N1,
      DIB(16) => N1,
      DIB(15) => N1,
      DIB(14) => N1,
      DIB(13) => N1,
      DIB(12) => N1,
      DIB(11) => N1,
      DIB(10) => N1,
      DIB(9) => N1,
      DIB(8) => N1,
      DIB(7) => N1,
      DIB(6) => N1,
      DIB(5) => N1,
      DIB(4) => N1,
      DIB(3) => N1,
      DIB(2) => N1,
      DIB(1) => N1,
      DIB(0) => N1,
      DOPA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPA_0_UNCONNECTED,
      DIPB(3) => N1,
      DIPB(2) => N1,
      DIPB(1) => N1,
      DIPB(0) => N1,
      DOPB(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPB_2_UNCONNECTED,
      DOPB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(17),
      DOPB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(16),
      DOB(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_31_UNCONNECTED,
      DOB(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_30_UNCONNECTED,
      DOB(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_29_UNCONNECTED,
      DOB(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_28_UNCONNECTED,
      DOB(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_27_UNCONNECTED,
      DOB(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_26_UNCONNECTED,
      DOB(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_25_UNCONNECTED,
      DOB(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_24_UNCONNECTED,
      DOB(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_23_UNCONNECTED,
      DOB(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_22_UNCONNECTED,
      DOB(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_21_UNCONNECTED,
      DOB(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_20_UNCONNECTED,
      DOB(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_19_UNCONNECTED,
      DOB(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_18_UNCONNECTED,
      DOB(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_17_UNCONNECTED,
      DOB(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOB_16_UNCONNECTED,
      DOB(15) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(15),
      DOB(14) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(14),
      DOB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(13),
      DOB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(12),
      DOB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(11),
      DOB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(10),
      DOB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(9),
      DOB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(8),
      DOB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(7),
      DOB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(6),
      DOB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(5),
      DOB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(4),
      DOB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(3),
      DOB(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(2),
      DOB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(1),
      DOB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_instrom_instruction0(0),
      WEB(3) => N1,
      WEB(2) => N1,
      WEB(1) => N1,
      WEB(0) => N1,
      DIA(31) => N1,
      DIA(30) => N1,
      DIA(29) => N1,
      DIA(28) => N1,
      DIA(27) => N1,
      DIA(26) => N1,
      DIA(25) => N1,
      DIA(24) => N1,
      DIA(23) => N1,
      DIA(22) => N1,
      DIA(21) => N1,
      DIA(20) => N1,
      DIA(19) => N1,
      DIA(18) => N1,
      DIA(17) => N1,
      DIA(16) => N1,
      DIA(15) => N0,
      DIA(14) => N0,
      DIA(13) => N0,
      DIA(12) => N0,
      DIA(11) => N0,
      DIA(10) => N0,
      DIA(9) => N0,
      DIA(8) => N0,
      DIA(7) => N0,
      DIA(6) => N0,
      DIA(5) => N0,
      DIA(4) => N0,
      DIA(3) => N0,
      DIA(2) => N0,
      DIA(1) => N0,
      DIA(0) => N0
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage : RAMB16BWER
    generic map(
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"5555C00000C00D5700C00355700C003000000000000000000000000000000000",
      INITP_01 => X"000000000000000000000000000D55C000D55555555555555555555555555555",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"FFFFFFFF2000200028022000FFFF200020005566AA99FFFFFFFFFFFF11111111",
      INIT_05 => X"2000200028012000FFFF20002000DADADADA30022000FFFFFFFFE0B0E0AEFFFF",
      INIT_06 => X"FAFAFAFA30222000FFFF20002000DADA30012000FFFFFFFFE0D0FFFFFFFFFFFF",
      INIT_07 => X"A1B0A1AEA1ACA1AAA1A8A1A6FFFFFFFFFFFF20002000004100004880000430A1",
      INIT_08 => X"A1D0A1CEA1CCA1CAA1C8A1C6A1C4A1C2A1C0A1BEA1BCA1BAA1B8A1B6A1B4A1B2",
      INIT_09 => X"A1F0A1EEA1ECA1EAA1E8A1E6A1E4A1E2A1E0A1DEA1DCA1DAA1D8A1D6A1D4A1D2",
      INIT_0A => X"A210A20EA20CA20AA208A206A204A202A200A1FEA1FCA1FAA1F8A1F6A1F4A1F2",
      INIT_0B => X"FAFAFAFA30222000FFFFA226A224A222A220A21EA21CA21AA218A216A214A212",
      INIT_0C => X"000130A11D1D1D1D31C22000FFFFFFFFE19AE198FFFFFFFFFFFF2000200029C2",
      INIT_0D => X"DADADADADADADADADADADADADADADADADADADADADADADADADADA008200005062",
      INIT_0E => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_0F => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_10 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADADADADADADA",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"DEADDEADDEADDEADDEADDEADFFFF20002000DEFC9876FFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_17 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_18 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_19 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1A => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1B => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1C => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1D => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1E => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_1F => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_20 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_21 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_22 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_23 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_24 => X"1E1F1F1F181E1F191E1F1E0401FB07EA058A054B051A04EE04C604A704900490",
      INIT_25 => X"1F181E1F1E1F1E1F1F1F1E1F1E181F1E191F1E1E0402E80B9E021E1E1F191E1F",
      INIT_26 => X"1E1F1F1F1E1F1E1F191E1F1E1F1E181F1E191F1E1E0403F513C7021E1E1F191E",
      INIT_27 => X"191E1F1E1F1E181F1E191F1E1E040470237E021E1E1F191E1F181E1F1E1F1E1F",
      INIT_28 => X"1E0405023C16021E1E1F191E1F1F1E1F1E1F1E191E1F1E1F1E1F1F1F1E1F1E1F",
      INIT_29 => X"1E1F1E1F1E191E1F1E1F1E1F1F1F1E1F1E1F191E1F1E1F1E181F1E1F1E191F1E",
      INIT_2A => X"181F1E1F191E1F1E1F181E1F191E1F1E04069C4F4E021E1E1F191E1F181E1F1F",
      INIT_2B => X"1E1F191E1F1E1F1F1E1F1E1F1E191E1F1E1F1E1F1F1F1E1F1E1F191E1F1E1F1E",
      INIT_2C => X"1F1E1F1E1F1E1F1E1F1E181F1E191F1E1E0408DE6A66021E1E1F191E1F181E1F",
      INIT_2D => X"1F1E1F1E1F1E1F1E1F1F1F1E1F1E1F1E1F1E1F1E1F191E1F1E1F1E181E1F1E19",
      INIT_2E => X"DEADDEAD021E1E1F191E1F181E1F1E1F1E1F1E1F191E1F1E1F1E1F1E1F1E191E",
      INIT_2F => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_30 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_31 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_32 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_33 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_34 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_35 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_36 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_37 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_38 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_39 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3A => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3B => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3C => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3D => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3E => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_3F => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_A => X"FFFFFFFFF",
      INIT_B => X"FFFFFFFFF",
      INIT_FILE => "NONE",
      RSTTYPE => "SYNC",
      RST_PRIORITY_A => "SR",
      RST_PRIORITY_B => "SR",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      SRVAL_A => X"FFFFFFFFF",
      SRVAL_B => X"FFFFFFFFF",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0
    )
    port map (
      REGCEA => N1,
      CLKA => icap_clk,
      ENB => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_7_o,
      RSTB => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      CLKB => icap_clk,
      REGCEB => N1,
      RSTA => U0_wrapper_wrapper_gens6_wrapper_controller_sync_init,
      ENA => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_7_o,
      DIPA(3) => N1,
      DIPA(2) => N1,
      DIPA(1) => N1,
      DIPA(0) => N1,
      WEA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(1),
      WEA(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(0),
      WEA(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(1),
      WEA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_wea(0),
      DOA(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_31_UNCONNECTED,
      DOA(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_30_UNCONNECTED,
      DOA(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_29_UNCONNECTED,
      DOA(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_28_UNCONNECTED,
      DOA(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_27_UNCONNECTED,
      DOA(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_26_UNCONNECTED,
      DOA(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_25_UNCONNECTED,
      DOA(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_24_UNCONNECTED,
      DOA(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_23_UNCONNECTED,
      DOA(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_22_UNCONNECTED,
      DOA(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_21_UNCONNECTED,
      DOA(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_20_UNCONNECTED,
      DOA(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_19_UNCONNECTED,
      DOA(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_18_UNCONNECTED,
      DOA(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_17_UNCONNECTED,
      DOA(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_16_UNCONNECTED,
      DOA(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_15_UNCONNECTED,
      DOA(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_14_UNCONNECTED,
      DOA(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_13_UNCONNECTED,
      DOA(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_12_UNCONNECTED,
      DOA(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_11_UNCONNECTED,
      DOA(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_10_UNCONNECTED,
      DOA(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_9_UNCONNECTED,
      DOA(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_8_UNCONNECTED,
      DOA(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_7_UNCONNECTED,
      DOA(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_6_UNCONNECTED,
      DOA(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_5_UNCONNECTED,
      DOA(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_4_UNCONNECTED,
      DOA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_3_UNCONNECTED,
      DOA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_2_UNCONNECTED,
      DOA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_1_UNCONNECTED,
      DOA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOA_0_UNCONNECTED,
      ADDRA(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(9),
      ADDRA(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(8),
      ADDRA(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(7),
      ADDRA(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(6),
      ADDRA(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(5),
      ADDRA(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(4),
      ADDRA(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(3),
      ADDRA(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(2),
      ADDRA(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(1),
      ADDRA(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_addra(0),
      ADDRA(3) => N1,
      ADDRA(2) => N1,
      ADDRA(1) => N1,
      ADDRA(0) => N1,
      ADDRB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr_10_606,
      ADDRB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(9),
      ADDRB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(8),
      ADDRB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(7),
      ADDRB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(6),
      ADDRB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(5),
      ADDRB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(4),
      ADDRB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(3),
      ADDRB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(2),
      ADDRB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_sta_ptr(1),
      ADDRB(3) => N1,
      ADDRB(2) => N1,
      ADDRB(1) => N1,
      ADDRB(0) => N1,
      DIB(31) => N1,
      DIB(30) => N1,
      DIB(29) => N1,
      DIB(28) => N1,
      DIB(27) => N1,
      DIB(26) => N1,
      DIB(25) => N1,
      DIB(24) => N1,
      DIB(23) => N1,
      DIB(22) => N1,
      DIB(21) => N1,
      DIB(20) => N1,
      DIB(19) => N1,
      DIB(18) => N1,
      DIB(17) => N1,
      DIB(16) => N1,
      DIB(15) => N1,
      DIB(14) => N1,
      DIB(13) => N1,
      DIB(12) => N1,
      DIB(11) => N1,
      DIB(10) => N1,
      DIB(9) => N1,
      DIB(8) => N1,
      DIB(7) => N1,
      DIB(6) => N1,
      DIB(5) => N1,
      DIB(4) => N1,
      DIB(3) => N1,
      DIB(2) => N1,
      DIB(1) => N1,
      DIB(0) => N1,
      DOPA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPA_0_UNCONNECTED,
      DIPB(3) => N1,
      DIPB(2) => N1,
      DIPB(1) => N1,
      DIPB(0) => N1,
      DOPB(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPB_2_UNCONNECTED,
      DOPB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_17_Q,
      DOPB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_doutb_8_Q,
      DOB(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_31_UNCONNECTED,
      DOB(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_30_UNCONNECTED,
      DOB(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_29_UNCONNECTED,
      DOB(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_28_UNCONNECTED,
      DOB(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_27_UNCONNECTED,
      DOB(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_26_UNCONNECTED,
      DOB(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_25_UNCONNECTED,
      DOB(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_24_UNCONNECTED,
      DOB(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_23_UNCONNECTED,
      DOB(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_22_UNCONNECTED,
      DOB(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_21_UNCONNECTED,
      DOB(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_20_UNCONNECTED,
      DOB(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_19_UNCONNECTED,
      DOB(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_18_UNCONNECTED,
      DOB(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_17_UNCONNECTED,
      DOB(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOB_16_UNCONNECTED,
      DOB(15) => NlwRenamedSig_OI_icap_i(8),
      DOB(14) => NlwRenamedSig_OI_icap_i(9),
      DOB(13) => NlwRenamedSig_OI_icap_i(10),
      DOB(12) => NlwRenamedSig_OI_icap_i(11),
      DOB(11) => NlwRenamedSig_OI_icap_i(12),
      DOB(10) => NlwRenamedSig_OI_icap_i(13),
      DOB(9) => NlwRenamedSig_OI_icap_i(14),
      DOB(8) => NlwRenamedSig_OI_icap_i(15),
      DOB(7) => NlwRenamedSig_OI_icap_i(0),
      DOB(6) => NlwRenamedSig_OI_icap_i(1),
      DOB(5) => NlwRenamedSig_OI_icap_i(2),
      DOB(4) => NlwRenamedSig_OI_icap_i(3),
      DOB(3) => NlwRenamedSig_OI_icap_i(4),
      DOB(2) => NlwRenamedSig_OI_icap_i(5),
      DOB(1) => NlwRenamedSig_OI_icap_i(6),
      DOB(0) => NlwRenamedSig_OI_icap_i(7),
      WEB(3) => N1,
      WEB(2) => N1,
      WEB(1) => N1,
      WEB(0) => N1,
      DIA(31) => N1,
      DIA(30) => N1,
      DIA(29) => N1,
      DIA(28) => N1,
      DIA(27) => N1,
      DIA(26) => N1,
      DIA(25) => N1,
      DIA(24) => N1,
      DIA(23) => N1,
      DIA(22) => N1,
      DIA(21) => N1,
      DIA(20) => N1,
      DIA(19) => N1,
      DIA(18) => N1,
      DIA(17) => N1,
      DIA(16) => N1,
      DIA(15) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_16_Q,
      DIA(14) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_15_Q,
      DIA(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_14_Q,
      DIA(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_13_Q,
      DIA(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_12_Q,
      DIA(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_11_Q,
      DIA(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_10_Q,
      DIA(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_9_Q,
      DIA(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_7_Q,
      DIA(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_6_Q,
      DIA(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_5_Q,
      DIA(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_4_Q,
      DIA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_3_Q,
      DIA(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_2_Q,
      DIA(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_1_Q,
      DIA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_dbuffer_dina_0_Q
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1 : RAMB16BWER
    generic map(
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DATA_WIDTH_A => 9,
      DATA_WIDTH_B => 9,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE"
    )
    port map (
      REGCEA => N1,
      CLKA => icap_clk,
      ENB => N0,
      RSTB => N1,
      CLKB => icap_clk,
      REGCEB => N1,
      RSTA => N1,
      ENA => N0,
      DIPA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPA_1_UNCONNECTED,
      DIPA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(8),
      WEA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      WEA(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      WEA(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      WEA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      DOA(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_31_UNCONNECTED,
      DOA(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_30_UNCONNECTED,
      DOA(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_29_UNCONNECTED,
      DOA(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_28_UNCONNECTED,
      DOA(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_27_UNCONNECTED,
      DOA(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_26_UNCONNECTED,
      DOA(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_25_UNCONNECTED,
      DOA(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_24_UNCONNECTED,
      DOA(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_23_UNCONNECTED,
      DOA(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_22_UNCONNECTED,
      DOA(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_21_UNCONNECTED,
      DOA(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_20_UNCONNECTED,
      DOA(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_19_UNCONNECTED,
      DOA(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_18_UNCONNECTED,
      DOA(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_17_UNCONNECTED,
      DOA(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_16_UNCONNECTED,
      DOA(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_15_UNCONNECTED,
      DOA(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_14_UNCONNECTED,
      DOA(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_13_UNCONNECTED,
      DOA(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_12_UNCONNECTED,
      DOA(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_11_UNCONNECTED,
      DOA(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_10_UNCONNECTED,
      DOA(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_9_UNCONNECTED,
      DOA(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOA_8_UNCONNECTED,
      DOA(7) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(7),
      DOA(6) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(6),
      DOA(5) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(5),
      DOA(4) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(4),
      DOA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(3),
      DOA(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(2),
      DOA(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(1),
      DOA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(0),
      ADDRA(13) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10_307,
      ADDRA(12) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9_306,
      ADDRA(11) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8_305,
      ADDRA(10) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7_304,
      ADDRA(9) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6_303,
      ADDRA(8) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5_302,
      ADDRA(7) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4_301,
      ADDRA(6) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3_300,
      ADDRA(5) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2_299,
      ADDRA(4) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1_298,
      ADDRA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0_297,
      ADDRA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_2_UNCONNECTED,
      ADDRA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_1_UNCONNECTED,
      ADDRA(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRA_0_UNCONNECTED,
      ADDRB(13) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10_912,
      ADDRB(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9_911,
      ADDRB(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8_910,
      ADDRB(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(7),
      ADDRB(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(6),
      ADDRB(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(5),
      ADDRB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(4),
      ADDRB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(3),
      ADDRB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(2),
      ADDRB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(1),
      ADDRB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(0),
      ADDRB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_ADDRB_0_UNCONNECTED,
      DIB(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_31_UNCONNECTED,
      DIB(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_30_UNCONNECTED,
      DIB(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_29_UNCONNECTED,
      DIB(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_28_UNCONNECTED,
      DIB(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_27_UNCONNECTED,
      DIB(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_26_UNCONNECTED,
      DIB(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_25_UNCONNECTED,
      DIB(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_24_UNCONNECTED,
      DIB(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_23_UNCONNECTED,
      DIB(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_22_UNCONNECTED,
      DIB(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_21_UNCONNECTED,
      DIB(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_20_UNCONNECTED,
      DIB(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_19_UNCONNECTED,
      DIB(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_18_UNCONNECTED,
      DIB(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_17_UNCONNECTED,
      DIB(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_16_UNCONNECTED,
      DIB(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_15_UNCONNECTED,
      DIB(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_14_UNCONNECTED,
      DIB(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_13_UNCONNECTED,
      DIB(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_12_UNCONNECTED,
      DIB(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_11_UNCONNECTED,
      DIB(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_10_UNCONNECTED,
      DIB(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_9_UNCONNECTED,
      DIB(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIB_8_UNCONNECTED,
      DIB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(7),
      DIB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(6),
      DIB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(5),
      DIB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(4),
      DIB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(3),
      DIB(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(2),
      DIB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(1),
      DIB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(0),
      DOPA(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPA_1_UNCONNECTED,
      DOPA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(8),
      DIPB(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIPB_1_UNCONNECTED,
      DIPB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(8),
      DOPB(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOPB_1_UNCONNECTED,
      DOPB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(8),
      DOB(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_31_UNCONNECTED,
      DOB(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_30_UNCONNECTED,
      DOB(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_29_UNCONNECTED,
      DOB(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_28_UNCONNECTED,
      DOB(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_27_UNCONNECTED,
      DOB(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_26_UNCONNECTED,
      DOB(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_25_UNCONNECTED,
      DOB(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_24_UNCONNECTED,
      DOB(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_23_UNCONNECTED,
      DOB(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_22_UNCONNECTED,
      DOB(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_21_UNCONNECTED,
      DOB(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_20_UNCONNECTED,
      DOB(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_19_UNCONNECTED,
      DOB(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_18_UNCONNECTED,
      DOB(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_17_UNCONNECTED,
      DOB(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_16_UNCONNECTED,
      DOB(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_15_UNCONNECTED,
      DOB(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_14_UNCONNECTED,
      DOB(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_13_UNCONNECTED,
      DOB(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_12_UNCONNECTED,
      DOB(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_11_UNCONNECTED,
      DOB(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_10_UNCONNECTED,
      DOB(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_9_UNCONNECTED,
      DOB(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DOB_8_UNCONNECTED,
      DOB(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(7),
      DOB(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(6),
      DOB(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(5),
      DOB(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(4),
      DOB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(3),
      DOB(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(2),
      DOB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(1),
      DOB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(0),
      WEB(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      WEB(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      WEB(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      WEB(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      DIA(31) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_31_UNCONNECTED,
      DIA(30) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_30_UNCONNECTED,
      DIA(29) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_29_UNCONNECTED,
      DIA(28) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_28_UNCONNECTED,
      DIA(27) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_27_UNCONNECTED,
      DIA(26) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_26_UNCONNECTED,
      DIA(25) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_25_UNCONNECTED,
      DIA(24) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_24_UNCONNECTED,
      DIA(23) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_23_UNCONNECTED,
      DIA(22) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_22_UNCONNECTED,
      DIA(21) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_21_UNCONNECTED,
      DIA(20) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_20_UNCONNECTED,
      DIA(19) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_19_UNCONNECTED,
      DIA(18) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_18_UNCONNECTED,
      DIA(17) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_17_UNCONNECTED,
      DIA(16) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_16_UNCONNECTED,
      DIA(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_15_UNCONNECTED,
      DIA(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_14_UNCONNECTED,
      DIA(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_13_UNCONNECTED,
      DIA(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_12_UNCONNECTED,
      DIA(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_11_UNCONNECTED,
      DIA(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_10_UNCONNECTED,
      DIA(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_9_UNCONNECTED,
      DIA(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem1_DIA_8_UNCONNECTED,
      DIA(7) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(7),
      DIA(6) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(6),
      DIA(5) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(5),
      DIA(4) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(4),
      DIA(3) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(3),
      DIA(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(2),
      DIA(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(1),
      DIA(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(0)
    );
  U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2 : RAMB8BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DATA_WIDTH_A => 4,
      DATA_WIDTH_B => 4,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL"
    )
    port map (
      RSTBRST => N1,
      ENBRDEN => N0,
      REGCEA => N1,
      ENAWREN => N0,
      CLKAWRCLK => icap_clk,
      CLKBRDCLK => icap_clk,
      REGCEBREGCE => N1,
      RSTA => N1,
      WEAWEL(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      WEAWEL(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_we,
      DOADO(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_15_UNCONNECTED,
      DOADO(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_14_UNCONNECTED,
      DOADO(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_13_UNCONNECTED,
      DOADO(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_12_UNCONNECTED,
      DOADO(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_11_UNCONNECTED,
      DOADO(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_10_UNCONNECTED,
      DOADO(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_9_UNCONNECTED,
      DOADO(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_8_UNCONNECTED,
      DOADO(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_7_UNCONNECTED,
      DOADO(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_6_UNCONNECTED,
      DOADO(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_5_UNCONNECTED,
      DOADO(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_4_UNCONNECTED,
      DOADO(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOADO_3_UNCONNECTED,
      DOADO(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(11),
      DOADO(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(10),
      DOADO(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_o(9),
      DOPADOP(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPBDOP_1_UNCONNECTED,
      DOPBDOP(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOPBDOP_0_UNCONNECTED,
      WEBWEU(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      WEBWEU(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_wr_decode_2_wr_decode_3_OR_19_o,
      ADDRAWRADDR(12) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_10_307,
      ADDRAWRADDR(11) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_9_306,
      ADDRAWRADDR(10) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_8_305,
      ADDRAWRADDR(9) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_7_304,
      ADDRAWRADDR(8) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_6_303,
      ADDRAWRADDR(7) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_5_302,
      ADDRAWRADDR(6) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_4_301,
      ADDRAWRADDR(5) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_3_300,
      ADDRAWRADDR(4) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_2_299,
      ADDRAWRADDR(3) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_1_298,
      ADDRAWRADDR(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_count_0_297,
      ADDRAWRADDR(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRAWRADDR_1_UNCONNECTED,
      ADDRAWRADDR(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRAWRADDR_0_UNCONNECTED,
      DIPBDIP(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPBDIP_1_UNCONNECTED,
      DIPBDIP(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPBDIP_0_UNCONNECTED,
      DIBDI(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_15_UNCONNECTED,
      DIBDI(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_14_UNCONNECTED,
      DIBDI(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_13_UNCONNECTED,
      DIBDI(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_12_UNCONNECTED,
      DIBDI(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_11_UNCONNECTED,
      DIBDI(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_10_UNCONNECTED,
      DIBDI(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_9_UNCONNECTED,
      DIBDI(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_8_UNCONNECTED,
      DIBDI(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_7_UNCONNECTED,
      DIBDI(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_6_UNCONNECTED,
      DIBDI(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_5_UNCONNECTED,
      DIBDI(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIBDI_4_UNCONNECTED,
      DIBDI(3) => N1,
      DIBDI(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(11),
      DIBDI(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(10),
      DIBDI(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_din_from_cpu(9),
      DIADI(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_15_UNCONNECTED,
      DIADI(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_14_UNCONNECTED,
      DIADI(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_13_UNCONNECTED,
      DIADI(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_12_UNCONNECTED,
      DIADI(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_11_UNCONNECTED,
      DIADI(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_10_UNCONNECTED,
      DIADI(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_9_UNCONNECTED,
      DIADI(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_8_UNCONNECTED,
      DIADI(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_7_UNCONNECTED,
      DIADI(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_6_UNCONNECTED,
      DIADI(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_5_UNCONNECTED,
      DIADI(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIADI_4_UNCONNECTED,
      DIADI(3) => N1,
      DIADI(2) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(11),
      DIADI(1) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(10),
      DIADI(0) => U0_wrapper_wrapper_gens6_wrapper_controller_frame_par_i(9),
      ADDRBRDADDR(12) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_10_912,
      ADDRBRDADDR(11) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_9_911,
      ADDRBRDADDR(10) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel_8_910,
      ADDRBRDADDR(9) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(7),
      ADDRBRDADDR(8) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(6),
      ADDRBRDADDR(7) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(5),
      ADDRBRDADDR(6) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(4),
      ADDRBRDADDR(5) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(3),
      ADDRBRDADDR(4) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(2),
      ADDRBRDADDR(3) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(1),
      ADDRBRDADDR(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_frm_sel(0),
      ADDRBRDADDR(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRBRDADDR_1_UNCONNECTED,
      ADDRBRDADDR(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_ADDRBRDADDR_0_UNCONNECTED,
      DOBDO(15) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_15_UNCONNECTED,
      DOBDO(14) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_14_UNCONNECTED,
      DOBDO(13) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_13_UNCONNECTED,
      DOBDO(12) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_12_UNCONNECTED,
      DOBDO(11) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_11_UNCONNECTED,
      DOBDO(10) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_10_UNCONNECTED,
      DOBDO(9) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_9_UNCONNECTED,
      DOBDO(8) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_8_UNCONNECTED,
      DOBDO(7) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_7_UNCONNECTED,
      DOBDO(6) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_6_UNCONNECTED,
      DOBDO(5) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_5_UNCONNECTED,
      DOBDO(4) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_4_UNCONNECTED,
      DOBDO(3) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DOBDO_3_UNCONNECTED,
      DOBDO(2) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(11),
      DOBDO(1) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(10),
      DOBDO(0) => U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_dout_for_cpu(9),
      DIPADIP(1) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPADIP_1_UNCONNECTED,
      DIPADIP(0) => NLW_U0_wrapper_wrapper_gens6_wrapper_controller_controller_pbuffer_Mram_pbuffer_mem2_DIPADIP_0_UNCONNECTED
    );

end STRUCTURE;

-- synthesis translate_on
