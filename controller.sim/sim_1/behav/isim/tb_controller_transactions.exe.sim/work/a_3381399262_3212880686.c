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
static const char *ng0 = "C:/Users/nn_w7/Desktop/Controller/controller.srcs/sim_1/new/SPI_state.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3381399262_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 3472);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    memcpy(t12, t2, 24U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(24U);
    memset(t1, 0, 24U);
    t5 = t1;
    memset(t5, (unsigned char)2, 24U);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 24U);
    goto LAB3;

LAB5:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t8 = (t4 == (unsigned char)2);
    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(37, ng0);
    t9 = (24 - 2);
    t2 = (t0 + 5652);
    *((int *)t2) = t9;
    t6 = (t0 + 5656);
    *((int *)t6) = 0;
    t10 = t9;
    t11 = 0;

LAB11:    if (t10 >= t11)
        goto LAB12;

LAB14:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t9 = (0 - 23);
    t15 = (t9 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t5 + t17);
    *((unsigned char *)t1) = t3;
    goto LAB9;

LAB12:    xsi_set_current_line(38, ng0);
    t7 = (t0 + 2088U);
    t12 = *((char **)t7);
    t7 = (t0 + 5652);
    t13 = *((int *)t7);
    t14 = (t13 - 23);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(23, 0, -1, *((int *)t7));
    t16 = (1U * t15);
    t17 = (0 + t16);
    t18 = (t12 + t17);
    t19 = *((unsigned char *)t18);
    t20 = (t0 + 2088U);
    t21 = *((char **)t20);
    t20 = (t0 + 5652);
    t22 = *((int *)t20);
    t23 = (t22 + 1);
    t24 = (t23 - 23);
    t25 = (t24 * -1);
    xsi_vhdl_check_range_of_index(23, 0, -1, t23);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t28 = (t21 + t27);
    *((unsigned char *)t28) = t19;

LAB13:    t1 = (t0 + 5652);
    t10 = *((int *)t1);
    t2 = (t0 + 5656);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB14;

LAB15:    t9 = (t10 + -1);
    t10 = t9;
    t5 = (t0 + 5652);
    *((int *)t5) = t10;
    goto LAB11;

}


extern void work_a_3381399262_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3381399262_3212880686_p_0};
	xsi_register_didat("work_a_3381399262_3212880686", "isim/tb_controller_transactions.exe.sim/work/a_3381399262_3212880686.didat");
	xsi_register_executes(pe);
}
