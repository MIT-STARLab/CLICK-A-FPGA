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
static const char *ng0 = "C:/Users/nn_w7/Desktop/Controller/controller.srcs/sources_1/new/SPI2.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2013115731_3212880686_p_0(char *t0)
{
    char t14[16];
    char t17[16];
    char t31[16];
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
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t15;
    unsigned int t16;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 5120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 5216);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t11 = (6 - 6);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t5 + t13);
    t6 = (t14 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 6;
    t7 = (t6 + 4U);
    *((int *)t7) = 5;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t15 = (5 - 6);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t16;
    t7 = (t0 + 9221);
    t9 = (t17 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t18 = (1 - 0);
    t16 = (t18 * 1);
    t16 = (t16 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t16;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t14, t7, t17);
    if (t19 == 1)
        goto LAB11;

LAB12:    t4 = (unsigned char)0;

LAB13:    if (t4 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t11 = (6 - 6);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t5 = (t14 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 6;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t15 = (5 - 6);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t16;
    t6 = (t0 + 9223);
    t8 = (t17 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t18 = (1 - 0);
    t16 = (t18 * 1);
    t16 = (t16 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t16;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t14, t6, t17);
    if (t4 == 1)
        goto LAB17;

LAB18:    t3 = (unsigned char)0;

LAB19:    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(71, ng0);
    t26 = (t0 + 2152U);
    t27 = *((char **)t26);
    t28 = (6 - 4);
    t29 = (t28 * 1U);
    t30 = (0 + t29);
    t26 = (t27 + t30);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 4;
    t33 = (t32 + 4U);
    *((int *)t33) = 1;
    t33 = (t32 + 8U);
    *((int *)t33) = -1;
    t34 = (1 - 4);
    t35 = (t34 * -1);
    t35 = (t35 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t35;
    t36 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t26, t31);
    t37 = (t36 - 15);
    t35 = (t37 * -1);
    t38 = (1 * t35);
    t39 = (0U + t38);
    t33 = (t0 + 5216);
    t40 = (t33 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    *((unsigned char *)t43) = (unsigned char)3;
    xsi_driver_first_trans_delta(t33, t39, 1, 0LL);
    goto LAB9;

LAB11:    t10 = (t0 + 2152U);
    t20 = *((char **)t10);
    t21 = (0 - 6);
    t16 = (t21 * -1);
    t22 = (1U * t16);
    t23 = (0 + t22);
    t10 = (t20 + t23);
    t24 = *((unsigned char *)t10);
    t25 = (t24 == (unsigned char)2);
    t4 = t25;
    goto LAB13;

LAB14:    xsi_set_current_line(74, ng0);
    t20 = (t0 + 2152U);
    t26 = *((char **)t20);
    t28 = (6 - 4);
    t29 = (t28 * 1U);
    t30 = (0 + t29);
    t20 = (t26 + t30);
    t27 = (t31 + 0U);
    t32 = (t27 + 0U);
    *((int *)t32) = 4;
    t32 = (t27 + 4U);
    *((int *)t32) = 1;
    t32 = (t27 + 8U);
    *((int *)t32) = -1;
    t34 = (1 - 4);
    t35 = (t34 * -1);
    t35 = (t35 + 1);
    t32 = (t27 + 12U);
    *((unsigned int *)t32) = t35;
    t36 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t20, t31);
    t37 = (t36 - 15);
    t35 = (t37 * -1);
    t38 = (1 * t35);
    t39 = (0U + t38);
    t32 = (t0 + 5216);
    t33 = (t32 + 56U);
    t40 = *((char **)t33);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = (unsigned char)2;
    xsi_driver_first_trans_delta(t32, t39, 1, 0LL);
    goto LAB15;

LAB17:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t21 = (0 - 6);
    t16 = (t21 * -1);
    t22 = (1U * t16);
    t23 = (0 + t22);
    t9 = (t10 + t23);
    t19 = *((unsigned char *)t9);
    t24 = (t19 == (unsigned char)3);
    t3 = t24;
    goto LAB19;

}

static void work_a_2013115731_3212880686_p_1(char *t0)
{
    char t18[16];
    char t26[16];
    char t28[16];
    char t32[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t27;
    char *t29;
    unsigned char t30;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13};

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB3:    t1 = (t0 + 5136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5280);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(88, ng0);
    t1 = xsi_get_transient_memory(256U);
    memset(t1, 0, 256U);
    t2 = t1;
    t9 = (8U * 1U);
    t5 = t2;
    memset(t5, (unsigned char)2, t9);
    t3 = (t9 != 0);
    if (t3 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 5344);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 256U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(89, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)3, 12U);
    t5 = (t0 + 5408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    memcpy(t11, t1, 12U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 9225);
    t5 = (t0 + 5472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    t10 = (256U / t9);
    xsi_mem_set_data(t2, t2, t9, t10);
    goto LAB6;

LAB7:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB10:    goto LAB8;

LAB11:    xsi_set_current_line(101, ng0);
    t6 = (t0 + 5792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 < 31);
    if (t3 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 5280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB10;

LAB12:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 > 16);
    if (t3 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 == 16);
    if (t3 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t14 = (t13 + 1);
    t1 = (t0 + 5600);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);

LAB37:
LAB24:    goto LAB10;

LAB13:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t14 = (16 - 1);
    t3 = (t13 == t14);
    if (t3 != 0)
        goto LAB39;

LAB41:
LAB40:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 < 16);
    if (t3 != 0)
        goto LAB45;

LAB47:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 5280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t14 = (t13 + 1);
    t1 = (t0 + 5664);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);

LAB46:    goto LAB10;

LAB14:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t14 = *((int *)t5);
    t4 = (t14 < 16);
    if (t4 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t14 = (t13 + 1);
    t1 = (t0 + 5664);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t14;
    xsi_driver_first_trans_fast(t1);

LAB18:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 < 4);
    if (t3 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 9120U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t14 = (t13 - 11);
    t9 = (t14 * -1);
    t10 = (1 * t9);
    t17 = (0U + t10);
    t5 = (t0 + 5408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t17, 1, 0LL);

LAB21:    goto LAB15;

LAB17:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2792U);
    t6 = *((char **)t1);
    t15 = *((int *)t6);
    t16 = (t15 + 1);
    t1 = (t0 + 5600);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(111, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t5 = t1;
    memset(t5, (unsigned char)3, 12U);
    t6 = (t0 + 5408);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 12U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB21;

LAB23:    xsi_set_current_line(122, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t5 = t1;
    memset(t5, (unsigned char)3, 12U);
    t6 = (t0 + 5408);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 12U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 9120U);
    t5 = (t0 + 9229);
    t7 = (t18 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t13 = (3 - 0);
    t9 = (t13 * 1);
    t9 = (t9 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t9;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t18);
    if (t3 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 9120U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t18, t2, t1, 1);
    t6 = (t18 + 12U);
    t9 = *((unsigned int *)t6);
    t10 = (1U * t9);
    t3 = (4U != t10);
    if (t3 == 1)
        goto LAB29;

LAB30:    t7 = (t0 + 5472);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    memcpy(t19, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB27:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t1 = (t0 + 9120U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t14 = (t13 - 15);
    t9 = (t14 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t13);
    t10 = (1U * t9);
    t17 = (0 + t10);
    t6 = (t2 + t17);
    t3 = *((unsigned char *)t6);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB24;

LAB26:    xsi_set_current_line(125, ng0);
    t8 = (t0 + 9233);
    t12 = (t0 + 5472);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB27;

LAB29:    xsi_size_not_matching(4U, t10, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(132, ng0);
    t7 = (t0 + 9237);
    t11 = (t0 + 2472U);
    t12 = *((char **)t11);
    t23 = (1 - 1);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t11 = (t12 + t25);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t26 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 3;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t15 = (3 - 0);
    t27 = (t15 * 1);
    t27 = (t27 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t27;
    t22 = (t28 + 0U);
    t29 = (t22 + 0U);
    *((int *)t29) = 1;
    t29 = (t22 + 4U);
    *((int *)t29) = 4;
    t29 = (t22 + 8U);
    *((int *)t29) = 1;
    t16 = (4 - 1);
    t27 = (t16 * 1);
    t27 = (t27 + 1);
    t29 = (t22 + 12U);
    *((unsigned int *)t29) = t27;
    t19 = xsi_base_array_concat(t19, t18, t20, (char)97, t7, t26, (char)97, t11, t28, (char)101);
    t27 = (4U + 4U);
    t30 = (8U != t27);
    if (t30 == 1)
        goto LAB34;

LAB35:    t29 = (t0 + 2632U);
    t31 = *((char **)t29);
    t33 = ((IEEE_P_2592010699) + 4024);
    t34 = (t0 + 9120U);
    t29 = xsi_base_array_concat(t29, t32, t33, (char)97, t31, t34, (char)99, (unsigned char)2, (char)101);
    t35 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t29, t32);
    t36 = (t35 - 0);
    t37 = (t36 * 1);
    t38 = (8U * t37);
    t39 = (0U + t38);
    t40 = (t0 + 5344);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t19, 8U);
    xsi_driver_first_trans_delta(t40, t39, 8U, 0LL);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t9 = (5 - 1);
    t10 = (t9 * 1U);
    t17 = (0 + t10);
    t1 = (t2 + t17);
    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 9120U);
    t5 = xsi_base_array_concat(t5, t18, t7, (char)97, t6, t8, (char)99, (unsigned char)3, (char)101);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t18);
    t14 = (t13 - 0);
    t23 = (t14 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t11 = (t0 + 5344);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t1, 8U);
    xsi_driver_first_trans_delta(t11, t25, 8U, 0LL);
    goto LAB32;

LAB34:    xsi_size_not_matching(8U, t27, 0);
    goto LAB35;

LAB36:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 5536);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(139, ng0);
    t1 = (t0 + 5280);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB37;

LAB39:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 3272U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t30 = (t4 == (unsigned char)3);
    if (t30 != 0)
        goto LAB42;

LAB44:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t14 = (t13 - 1);
    t9 = (t14 * 1);
    t10 = (1 * t9);
    t17 = (0U + t10);
    t1 = (t0 + 5728);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t1, t17, 1, 0LL);

LAB43:    goto LAB40;

LAB42:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 5792);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB43;

LAB45:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t14 = *((int *)t5);
    t15 = (t14 + 1);
    t1 = (t0 + 5600);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t15;
    xsi_driver_first_trans_fast(t1);
    goto LAB46;

}


extern void work_a_2013115731_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2013115731_3212880686_p_0,(void *)work_a_2013115731_3212880686_p_1};
	xsi_register_didat("work_a_2013115731_3212880686", "isim/tb_controller_transactions.exe.sim/work/a_2013115731_3212880686.didat");
	xsi_register_executes(pe);
}
