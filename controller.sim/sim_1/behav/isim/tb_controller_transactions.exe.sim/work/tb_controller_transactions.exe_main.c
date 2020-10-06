/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *WORK_P_2751945778;
char *WORK_P_0127026521;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *UNISIM_P_0947159679;
char *UNIMACRO_P_0947159679;
char *WORK_P_2278313657;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_2751945778_init();
    work_p_0127026521_init();
    work_p_2278313657_init();
    unimacro_p_0947159679_init();
    unisim_p_0947159679_init();
    work_a_2166523021_3212880686_init();
    work_a_1315998102_3212880686_init();
    work_a_2013115731_3212880686_init();
    work_a_1619435792_3212880686_init();
    work_a_3559826415_1314495723_init();
    work_a_2277493259_1314495723_init();
    work_a_2239630122_1314495723_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_3931149195_2584565154_init();
    unisim_a_1490675510_1976025627_init();
    work_a_2378907233_0912031422_init();
    work_a_0053410324_1516540902_init();
    work_a_3036940741_1516540902_init();
    work_a_3778072772_1516540902_init();
    work_a_0000666241_1878664202_init();
    work_a_2235652577_3212880686_init();
    xilinxcorelib_a_0041946476_3212880686_init();
    xilinxcorelib_a_2570771257_3212880686_init();
    xilinxcorelib_a_1566321184_3212880686_init();
    xilinxcorelib_a_2966187009_3212880686_init();
    work_a_3092592765_3695657646_init();
    xilinxcorelib_a_4236939037_3212880686_init();
    xilinxcorelib_a_2589771895_3212880686_init();
    xilinxcorelib_a_2385246859_3212880686_init();
    work_a_2939038782_3716491417_init();
    work_a_1251976121_3212880686_init();
    work_a_1208337864_1181938964_init();
    work_a_3680648371_3212880686_init();
    work_a_3381399262_3212880686_init();
    work_a_3636295006_3212880686_init();
    work_a_2269469917_3212880686_init();
    work_a_2908643630_3212880686_init();
    work_a_2420000926_3212880686_init();
    work_a_1739828456_3212880686_init();
    work_a_1523811672_3212880686_init();
    work_a_1892202667_3212880686_init();
    work_a_1302892827_3212880686_init();
    work_a_1032044078_3212880686_init();
    work_a_0014915486_3212880686_init();
    work_a_0720939629_3212880686_init();
    work_a_0395871197_3212880686_init();
    work_a_2115507079_1181938964_init();


    xsi_register_tops("work_a_2115507079_1181938964");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_2751945778 = xsi_get_engine_memory("work_p_2751945778");
    WORK_P_0127026521 = xsi_get_engine_memory("work_p_0127026521");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    UNIMACRO_P_0947159679 = xsi_get_engine_memory("unimacro_p_0947159679");
    WORK_P_2278313657 = xsi_get_engine_memory("work_p_2278313657");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
