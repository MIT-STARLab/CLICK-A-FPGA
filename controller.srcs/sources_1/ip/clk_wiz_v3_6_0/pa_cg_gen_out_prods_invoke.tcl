# Tcl script generated by PlanAhead

set reloadAllCoreGenRepositories false

set tclUtilsPath "c:/Xilinx/14.7/ISE_DS/PlanAhead/scripts/pa_cg_utils.tcl"

set repoPaths ""

set cgIndexMapPath "Z:/Cores/Controller/controller.srcs/sources_1/ip/cg_nt_index_map.xml"

set cgProjectPath "z:/Cores/Controller/controller.srcs/sources_1/ip/clk_wiz_v3_6_0/coregen.cgc"

set ipFile "z:/Cores/Controller/controller.srcs/sources_1/ip/clk_wiz_v3_6_0/clk_wiz_v3_6_0.xco"

set ipName "clk_wiz_v3_6_0"

set hdlType "VHDL"

set cgPartSpec "xc6slx9-3tqg144"

set chains "GENERATE_CURRENT_CHAIN"

set params ""

set bomFilePath "z:/Cores/Controller/controller.srcs/sources_1/ip/clk_wiz_v3_6_0/pa_cg_bom.xml"

# generate the IP
set result [source "c:/Xilinx/14.7/ISE_DS/PlanAhead/scripts/pa_cg_gen_out_prods.tcl"]

exit $result

