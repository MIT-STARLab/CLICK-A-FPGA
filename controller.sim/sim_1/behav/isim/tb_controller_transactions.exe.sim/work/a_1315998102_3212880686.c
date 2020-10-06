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
static const char *ng0 = "C:/Users/nn_w7/Desktop/Controller/controller.srcs/sources_1/new/SPI1.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1315998102_3212880686_p_0(char *t0)
{
    char t11[16];
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
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 6368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t5 = t1;
    memset(t5, (unsigned char)2, 6U);
    t6 = (t0 + 6480);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 6544);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 6608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 6672);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 6736);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 6800);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6864);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4072U);
    t5 = *((char **)t2);
    t2 = (t0 + 11216U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t5, t2, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t4 = (6U != t13);
    if (t4 == 1)
        goto LAB8;

LAB9:    t8 = (t0 + 6480);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 6U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t16 = (5 - 5);
    t12 = (t16 * -1);
    t13 = (1U * t12);
    t17 = (0 + t13);
    t1 = (t2 + t17);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 6864);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t16 = (5 - 5);
    t12 = (t16 * -1);
    t13 = (1U * t12);
    t17 = (0 + t13);
    t1 = (t2 + t17);
    t3 = *((unsigned char *)t1);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = (t0 + 6928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 11216U);
    t5 = (t0 + 11349);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 5;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t16 = (5 - 0);
    t12 = (t16 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 6672);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB11:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 11216U);
    t5 = (t0 + 4072U);
    t6 = *((char **)t5);
    t5 = (t0 + 11216U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:
LAB14:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t1 = (t0 + 11216U);
    t5 = (t0 + 4072U);
    t6 = *((char **)t5);
    t5 = (t0 + 11216U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB20:    goto LAB6;

LAB8:    xsi_size_not_matching(6U, t13, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(89, ng0);
    t8 = (t0 + 6672);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB11;

LAB13:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6736);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 6544);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(98, ng0);
    t7 = (t0 + 6736);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    goto LAB17;

LAB19:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6800);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 6608);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 6U);
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB22:    xsi_set_current_line(107, ng0);
    t7 = (t0 + 6800);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    goto LAB23;

}

static void work_a_1315998102_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 6384);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 6992);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(118, ng0);
    t1 = xsi_get_transient_memory(24U);
    memset(t1, 0, 24U);
    t2 = t1;
    memset(t2, (unsigned char)2, 24U);
    t5 = (t0 + 7056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 24U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 11355);
    t5 = (t0 + 7120);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 11357);
    t5 = (t0 + 7184);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 11359);
    t5 = (t0 + 7248);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3912U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t10 = (t4 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3272U);
    t6 = *((char **)t2);
    t2 = (t0 + 7248);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t6, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7120);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t12 = (t10 == (unsigned char)3);
    if (t12 == 1)
        goto LAB17;

LAB18:    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    t4 = t14;

LAB19:    if (t4 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 6992);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(139, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)2);
    if (t10 == 1)
        goto LAB26;

LAB27:    t3 = (unsigned char)0;

LAB28:    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 6992);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t17 = (23 - 23);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t5 = (t0 + 7056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 24U);
    xsi_driver_first_trans_delta(t5, 0U, 24U, 0LL);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 11363);
    t5 = (t0 + 7184);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);

LAB21:    goto LAB12;

LAB14:    t1 = (t0 + 3112U);
    t6 = *((char **)t1);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)2);
    t3 = t16;
    goto LAB16;

LAB17:    t4 = (unsigned char)1;
    goto LAB19;

LAB20:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t17 = (23 - 23);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t5 + t19);
    t6 = (t0 + 7056);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 24U);
    xsi_driver_first_trans_delta(t6, 0U, 24U, 0LL);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 11361);
    t5 = (t0 + 7184);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB21;

LAB23:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 11365);
    t7 = (t0 + 7184);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t20 = *((char **)t11);
    memcpy(t20, t1, 2U);
    xsi_driver_first_trans_fast(t7);
    goto LAB24;

LAB26:    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB28;

}

static void work_a_1315998102_3212880686_p_2(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 6400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 7312);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 11367);
    t5 = (t0 + 7376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 7440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 3912U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t10 = (t4 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 3752U);
    t6 = *((char **)t2);
    t2 = (t0 + 3592U);
    t7 = *((char **)t2);
    t2 = (t0 + 11184U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 23, 1, t11);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t8 = (t6 + t15);
    t16 = *((unsigned char *)t8);
    t9 = (t0 + 7312);
    t17 = (t9 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t16;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(167, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:
LAB15:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 7440);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 11372);
    t5 = (t0 + 7376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB12;

LAB14:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t1 = (t0 + 11184U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t5, t1, 1);
    t7 = (t21 + 12U);
    t13 = *((unsigned int *)t7);
    t14 = (1U * t13);
    t10 = (5U != t14);
    if (t10 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 7376);
    t9 = (t8 + 56U);
    t17 = *((char **)t9);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 5U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 11184U);
    t5 = (t0 + 11377);
    t7 = (t21 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (4 - 0);
    t13 = (t11 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t21);
    if (t3 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB15;

LAB17:    xsi_size_not_matching(5U, t14, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(170, ng0);
    t8 = (t0 + 7440);
    t9 = (t8 + 56U);
    t17 = *((char **)t9);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    goto LAB20;

}


extern void work_a_1315998102_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1315998102_3212880686_p_0,(void *)work_a_1315998102_3212880686_p_1,(void *)work_a_1315998102_3212880686_p_2};
	xsi_register_didat("work_a_1315998102_3212880686", "isim/tb_controller_transactions.exe.sim/work/a_1315998102_3212880686.didat");
	xsi_register_executes(pe);
}
