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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/nn_w7/Desktop/Controller/controller.srcs/sim_1/new/SPI_rd.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1523811672_3212880686_p_0(char *t0)
{
    char t6[16];
    char t9[16];
    char *t1;
    char *t3;
    char *t5;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 6388);
    t3 = (t0 + 6400);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6296U);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t5 = xsi_base_array_concat(t5, t6, t7, (char)97, t1, t8, (char)97, t3, t9, (char)101);
    t13 = (12U + 4U);
    t14 = (16U != t13);
    if (t14 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3880);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 16U);
    xsi_driver_first_trans_fast(t11);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t13, 0);
    goto LAB6;

}

static void work_a_1523811672_3212880686_p_1(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;
    int64 t12;
    unsigned char t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t20;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 3800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6404);
    t6 = (t0 + 3944);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4008);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1312U);
    t11 = xsi_signal_get_last_event(t2);
    t12 = (7.5000000000000000 * 1000000LL);
    t4 = (t11 < t12);
    if (t4 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1632U);
    t11 = xsi_signal_get_last_event(t1);
    t12 = (0.50000000000000000 * 1000000LL);
    t3 = (t11 < t12);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB17;

LAB19:
LAB18:
LAB15:    goto LAB6;

LAB8:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 6408);
    xsi_report(t5, 25U, (unsigned char)0);
    goto LAB9;

LAB11:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 6433);
    xsi_report(t2, 29U, (unsigned char)0);
    goto LAB12;

LAB14:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4008);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 6462);
    t5 = (t0 + 3944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB15;

LAB17:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    if (t13 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6312U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t19, t2, t1, 1);
    t6 = (t19 + 12U);
    t16 = *((unsigned int *)t6);
    t17 = (1U * t16);
    t3 = (4U != t17);
    if (t3 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 3944);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6312U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t20 = (t15 - 0);
    t16 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t15);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t6 = (t2 + t18);
    t3 = *((unsigned char *)t6);
    t7 = (t0 + 4008);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t7);

LAB21:    goto LAB18;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 6466);
    t7 = (t0 + 3944);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t15 = (0 - 0);
    t16 = (t15 * 1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 4008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB21;

LAB23:    xsi_size_not_matching(4U, t17, 0);
    goto LAB24;

}


extern void work_a_1523811672_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1523811672_3212880686_p_0,(void *)work_a_1523811672_3212880686_p_1};
	xsi_register_didat("work_a_1523811672_3212880686", "isim/tb_controller_transactions.exe.sim/work/a_1523811672_3212880686.didat");
	xsi_register_executes(pe);
}
