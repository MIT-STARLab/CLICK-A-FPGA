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
static const char *ng0 = "C:/Users/nn_w7/Desktop/Controller/controller.srcs/sources_1/new/uartOC.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2239630122_1314495723_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5344);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t1 = (t0 + 3648U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t13 = (t12 - 1);
    t2 = (t11 == t13);
    if (t2 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t12 = (t11 + 1);
    t1 = (t0 + 5440);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 5440);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5440);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_2239630122_1314495723_p_1(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned char t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5360);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t13 = (3 - 3);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t4 + t15);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t17 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 3;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t18 = (1 - 3);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t19;
    t7 = xsi_base_array_concat(t7, t16, t8, (char)99, t2, (char)97, t1, t17, (char)101);
    t19 = (1U + 3U);
    t5 = (4U != t19);
    if (t5 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 5568);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t20 = (t12 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t18 = (0 - 3);
    t13 = (t18 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 2952U);
    t7 = *((char **)t4);
    t22 = (1 - 3);
    t19 = (t22 * -1);
    t23 = (1U * t19);
    t24 = (0 + t23);
    t4 = (t7 + t24);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t2, t5);
    t8 = (t0 + 2952U);
    t9 = *((char **)t8);
    t25 = (2 - 3);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t8 = (t9 + t28);
    t29 = *((unsigned char *)t8);
    t30 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t6, t29);
    t10 = (t0 + 2952U);
    t11 = *((char **)t10);
    t31 = (3 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t10 = (t11 + t34);
    t35 = *((unsigned char *)t10);
    t36 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t30, t35);
    t12 = (t0 + 5632);
    t20 = (t12 + 56U);
    t21 = *((char **)t20);
    t37 = (t21 + 56U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = t36;
    xsi_driver_first_trans_fast(t12);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(79, ng0);
    t3 = xsi_get_transient_memory(4U);
    memset(t3, 0, 4U);
    t7 = t3;
    memset(t7, (unsigned char)3, 4U);
    t8 = (t0 + 5568);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 5632);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_size_not_matching(4U, t19, 0);
    goto LAB9;

}


extern void work_a_2239630122_1314495723_init()
{
	static char *pe[] = {(void *)work_a_2239630122_1314495723_p_0,(void *)work_a_2239630122_1314495723_p_1};
	xsi_register_didat("work_a_2239630122_1314495723", "isim/tb_controller_transactions.exe.sim/work/a_2239630122_1314495723.didat");
	xsi_register_executes(pe);
}
