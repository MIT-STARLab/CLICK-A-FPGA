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
extern char *IEEE_P_1242562249;
extern char *WORK_P_0127026521;
extern char *IEEE_P_3620187407;
extern char *STD_STANDARD;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


void work_p_2278313657_sub_1964942743_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, char *t6, int t7)
{
    char t9[24];
    char t10[16];
    char t18[16];
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int64 t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 7;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 7);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t9 + 4U);
    t15 = (t6 != 0);
    if (t15 == 1)
        goto LAB3;

LAB2:    t16 = (t9 + 12U);
    *((char **)t16) = t10;
    t17 = (t9 + 20U);
    *((int *)t17) = t7;
    t19 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t18, t7, 7);
    t14 = (0 + 16U);
    t20 = (0 + 16U);
    t21 = (t20 + t3);
    t22 = (t5 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 7U);
    xsi_driver_first_trans_delta(t5, t21, 7U, 0LL);
    t14 = (0 + 0U);
    t20 = (0 + 0U);
    t21 = (t20 + t3);
    t11 = (t5 + 56U);
    t19 = *((char **)t11);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 8U);
    xsi_driver_first_trans_delta(t5, t21, 8U, 0LL);
    t14 = (0 + 24U);
    t20 = (0 + 24U);
    t21 = (t20 + t3);
    t11 = (t5 + 56U);
    t19 = *((char **)t11);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t21, 1, 0LL);
    t14 = (0 + 23U);
    t20 = (0 + 23U);
    t21 = (t20 + t3);
    t11 = (t5 + 56U);
    t19 = *((char **)t11);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t21, 1, 0LL);
    t11 = (t0 + 1648U);
    t19 = *((char **)t11);
    t26 = *((int64 *)t19);
    xsi_process_wait(t1, t26);

LAB7:    t11 = (t1 + 88U);
    t22 = *((char **)t11);
    t23 = (t22 + 2480U);
    *((unsigned int *)t23) = 1U;
    t24 = (t1 + 88U);
    t25 = *((char **)t24);
    t27 = (t25 + 0U);
    getcontext(t27);
    t28 = (t1 + 88U);
    t29 = *((char **)t28);
    t30 = (t29 + 2480U);
    t14 = *((unsigned int *)t30);
    if (t14 == 1)
        goto LAB8;

LAB9:    t31 = (t1 + 88U);
    t32 = *((char **)t31);
    t33 = (t32 + 2480U);
    *((unsigned int *)t33) = 3U;

LAB5:
LAB6:
LAB4:    t14 = (0 + 23U);
    t20 = (0 + 23U);
    t21 = (t20 + t3);
    t11 = (t5 + 56U);
    t19 = *((char **)t11);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t21, 1, 0LL);

LAB1:    return;
LAB3:    *((char **)t12) = t6;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

}

void work_p_2278313657_sub_2306368347_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, int t6)
{
    char t8[8];
    char t17[16];
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    int64 t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t9 = (t8 + 4U);
    *((int *)t9) = t6;
    t10 = (0 + 24U);
    t11 = (0 + 24U);
    t12 = (t11 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    t10 = (0 + 23U);
    t11 = (0 + 23U);
    t12 = (t11 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    t13 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t6, 7);
    t10 = (0 + 16U);
    t11 = (0 + 16U);
    t12 = (t11 + t3);
    t14 = (t5 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t13, 7U);
    xsi_driver_first_trans_delta(t5, t12, 7U, 0LL);
    t13 = (t0 + 1648U);
    t14 = *((char **)t13);
    t19 = *((int64 *)t14);
    xsi_process_wait(t1, t19);

LAB5:    t13 = (t1 + 88U);
    t15 = *((char **)t13);
    t16 = (t15 + 2480U);
    *((unsigned int *)t16) = 1U;
    t18 = (t1 + 88U);
    t20 = *((char **)t18);
    t21 = (t20 + 0U);
    getcontext(t21);
    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    t10 = *((unsigned int *)t24);
    if (t10 == 1)
        goto LAB6;

LAB7:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB3:
LAB4:
LAB2:    t10 = (0 + 24U);
    t11 = (0 + 24U);
    t12 = (t11 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);

LAB1:    return;
LAB6:    xsi_saveStackAndSuspend(t1);
    goto LAB7;

}

void work_p_2278313657_sub_3546961148_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, char *t6)
{
    char t8[24];
    char t9[16];
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    unsigned int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned char t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t8 + 4U);
    t14 = (t6 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t8 + 12U);
    *((char **)t15) = t9;

LAB4:
LAB5:    t13 = (0U + t3);
    t16 = (0U + t4);
    t17 = ((WORK_P_0127026521) + 1288U);
    t18 = *((char **)t17);
    t19 = *((int *)t18);
    work_p_2278313657_sub_2306368347_1836258224(t0, t1, t2, t13, t16, t5, t19);
    t10 = (t2 + 40U);
    t17 = *((char **)t10);
    t10 = (t17 + t4);
    t17 = (t0 + 3976);
    t18 = xsi_record_get_element_type(t17, 1);
    t20 = (t18 + 80U);
    t21 = *((char **)t20);
    t22 = (t21 + 0U);
    t12 = *((int *)t22);
    t23 = (t0 + 3976);
    t24 = xsi_record_get_element_type(t23, 1);
    t25 = (t24 + 80U);
    t26 = *((char **)t25);
    t27 = (t26 + 8U);
    t19 = *((int *)t27);
    t28 = (6 - t12);
    t13 = (t28 * t19);
    t16 = (1U * t13);
    t29 = (0 + 8U);
    t30 = (t29 + t16);
    t31 = (t10 + t30);
    t14 = *((unsigned char *)t31);
    t32 = (t14 == (unsigned char)3);
    if (t32 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB4;

LAB3:    *((char **)t11) = t6;
    goto LAB2;

LAB6:;
LAB7:
LAB1:    return;
LAB8:    t33 = (0U + t3);
    t34 = (0U + t4);
    t35 = (t9 + 12U);
    t36 = *((unsigned int *)t35);
    t36 = (t36 * 1U);
    t37 = (char *)alloca(t36);
    memcpy(t37, t6, t36);
    t38 = ((WORK_P_0127026521) + 7168U);
    t39 = *((char **)t38);
    t40 = *((int *)t39);
    work_p_2278313657_sub_1964942743_1836258224(t0, t1, t2, t33, t34, t5, t37, t40);
    goto LAB7;

LAB11:    goto LAB9;

}

void work_p_2278313657_sub_1470260200_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5)
{
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned char t27;
    unsigned char t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    int t33;

LAB0:
LAB2:
LAB3:    t8 = (0U + t3);
    t9 = (0U + t4);
    t10 = ((WORK_P_0127026521) + 1288U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    work_p_2278313657_sub_2306368347_1836258224(t0, t1, t2, t8, t9, t5, t12);
    t10 = (t2 + 40U);
    t11 = *((char **)t10);
    t10 = (t11 + t4);
    t11 = (t0 + 3976);
    t13 = xsi_record_get_element_type(t11, 1);
    t14 = (t13 + 80U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    t12 = *((int *)t16);
    t17 = (t0 + 3976);
    t18 = xsi_record_get_element_type(t17, 1);
    t19 = (t18 + 80U);
    t20 = *((char **)t19);
    t21 = (t20 + 8U);
    t22 = *((int *)t21);
    t23 = (5 - t12);
    t8 = (t23 * t22);
    t9 = (1U * t8);
    t24 = (0 + 8U);
    t25 = (t24 + t9);
    t26 = (t10 + t25);
    t27 = *((unsigned char *)t26);
    t28 = (t27 == (unsigned char)3);
    if (t28 != 0)
        goto LAB6;

LAB8:
LAB7:    goto LAB2;

LAB4:;
LAB5:
LAB1:    return;
LAB6:    t29 = (0U + t3);
    t30 = (0U + t4);
    t31 = ((WORK_P_0127026521) + 7288U);
    t32 = *((char **)t31);
    t33 = *((int *)t32);
    work_p_2278313657_sub_2306368347_1836258224(t0, t1, t2, t29, t30, t5, t33);
    goto LAB5;

LAB9:    goto LAB7;

}

void work_p_2278313657_sub_1105349237_1836258224(char *t0, char *t1, unsigned char t2, char *t3, unsigned int t4, unsigned int t5, char *t6)
{
    char t8[8];
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    static char *nl0[] = {&&LAB3, &&LAB3, &&LAB3, &&LAB4, &&LAB5, &&LAB7, &&LAB8, &&LAB9, &&LAB6, &&LAB10, &&LAB10, &&LAB10, &&LAB10};

LAB0:    t9 = (t8 + 4U);
    *((unsigned char *)t9) = t2;
    t10 = (char *)((nl0) + t2);
    goto **((char **)t10);

LAB2:
LAB1:    return;
LAB3:    t11 = (0 + t4);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB4:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)1;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB5:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)1;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB6:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB7:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB8:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)4;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB9:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)5;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

LAB10:    t11 = (0 + t4);
    t10 = (t6 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)6;
    xsi_driver_first_trans_delta(t6, t11, 1, 0LL);
    goto LAB2;

}

void work_p_2278313657_sub_1295934868_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, int64 t6, int64 t7)
{
    char t9[24];
    char *t10;
    char *t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t10 = (t9 + 4U);
    *((int64 *)t10) = t6;
    t11 = (t9 + 12U);
    *((int64 *)t11) = t7;

LAB2:
LAB3:    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    xsi_process_wait(t1, t6);

LAB9:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t12 = *((unsigned int *)t21);
    if (t12 == 1)
        goto LAB10;

LAB11:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB7:
LAB8:
LAB6:    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    xsi_process_wait(t1, t7);

LAB15:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t12 = *((unsigned int *)t21);
    if (t12 == 1)
        goto LAB16;

LAB17:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB13:
LAB14:
LAB12:    goto LAB2;

LAB4:;
LAB5:
LAB1:    return;
LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

LAB16:    xsi_saveStackAndSuspend(t1);
    goto LAB17;

}

void work_p_2278313657_sub_1104756998_1836258224(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, int64 t6, int64 t7)
{
    char t9[24];
    char *t10;
    char *t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t10 = (t9 + 4U);
    *((int64 *)t10) = t6;
    t11 = (t9 + 12U);
    *((int64 *)t11) = t7;
    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    xsi_process_wait(t1, t6);

LAB5:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t12 = *((unsigned int *)t21);
    if (t12 == 1)
        goto LAB6;

LAB7:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB3:
LAB4:
LAB2:    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);
    xsi_process_wait(t1, t7);

LAB11:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t12 = *((unsigned int *)t21);
    if (t12 == 1)
        goto LAB12;

LAB13:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB9:
LAB10:
LAB8:    t12 = (0 + t3);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, t12, 1, 0LL);

LAB17:    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t15 = (t14 + 2480U);
    *((unsigned int *)t15) = 1U;
    t16 = (t1 + 88U);
    t17 = *((char **)t16);
    t18 = (t17 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t12 = *((unsigned int *)t21);
    if (t12 == 1)
        goto LAB18;

LAB19:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB15:
LAB16:
LAB14:
LAB1:    return;
LAB6:    xsi_saveStackAndSuspend(t1);
    goto LAB7;

LAB12:    xsi_saveStackAndSuspend(t1);
    goto LAB13;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

}

void work_p_2278313657_sub_1645388937_1836258224(char *t0, char *t1, char *t2, char *t3, char *t4, char *t5, char *t6, char *t7)
{
    char t9[56];
    char t23[16];
    char t25[16];
    char t31[16];
    char t36[16];
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t22;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;

LAB0:    t10 = (t9 + 4U);
    t11 = (t2 != 0);
    if (t11 == 1)
        goto LAB3;

LAB2:    t12 = (t9 + 12U);
    *((char **)t12) = t3;
    t13 = (t9 + 20U);
    t14 = (t4 != 0);
    if (t14 == 1)
        goto LAB5;

LAB4:    t15 = (t9 + 28U);
    *((char **)t15) = t5;
    t16 = (t9 + 36U);
    t17 = (t6 != 0);
    if (t17 == 1)
        goto LAB7;

LAB6:    t18 = (t9 + 44U);
    *((char **)t18) = t7;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t3, t4, t5);
    if (t19 != 0)
        goto LAB8;

LAB10:    t20 = (t0 + 6169);
    t24 = ((STD_STANDARD) + 1008);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 1;
    t27 = (t26 + 4U);
    *((int *)t27) = 21;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (21 - 1);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t6, t7, (char)97, t20, t25, (char)101);
    t27 = ((STD_STANDARD) + 384);
    t32 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t3);
    t33 = xsi_int_to_mem(t32);
    t34 = xsi_string_variable_get_image(t31, t27, t33);
    t37 = ((STD_STANDARD) + 1008);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)97, t34, t31, (char)101);
    t38 = (t7 + 12U);
    t29 = *((unsigned int *)t38);
    t29 = (t29 * 1U);
    t30 = (t29 + 21U);
    t39 = (t31 + 12U);
    t40 = *((unsigned int *)t39);
    t41 = (t30 + t40);
    xsi_report(t35, t41, (unsigned char)0);

LAB9:
LAB1:    return;
LAB3:    *((char **)t10) = t2;
    goto LAB2;

LAB5:    *((char **)t13) = t4;
    goto LAB4;

LAB7:    *((char **)t16) = t6;
    goto LAB6;

LAB8:    t20 = (t0 + 6152);
    t24 = ((STD_STANDARD) + 1008);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 1;
    t27 = (t26 + 4U);
    *((int *)t27) = 17;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (17 - 1);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t6, t7, (char)97, t20, t25, (char)101);
    t27 = (t7 + 12U);
    t29 = *((unsigned int *)t27);
    t29 = (t29 * 1U);
    t30 = (t29 + 17U);
    xsi_report(t22, t30, (unsigned char)0);
    goto LAB9;

}

void work_p_2278313657_sub_546711705_1836258224(char *t0, char *t1, char *t2, char *t3)
{
    char t5[24];
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned int t11;

LAB0:    t6 = (t5 + 4U);
    t7 = (t2 != 0);
    if (t7 == 1)
        goto LAB3;

LAB2:    t8 = (t5 + 12U);
    *((char **)t8) = t3;
    t9 = (t0 + 6190);
    xsi_report(t9, 89U, 0);
    t9 = (t3 + 12U);
    t11 = *((unsigned int *)t9);
    t11 = (t11 * 1U);
    xsi_report(t2, t11, 0);
    t9 = (t0 + 6279);
    xsi_report(t9, 156U, 0);

LAB1:    return;
LAB3:    *((char **)t6) = t2;
    goto LAB2;

}


extern void work_p_2278313657_init()
{
	static char *se[] = {(void *)work_p_2278313657_sub_1964942743_1836258224,(void *)work_p_2278313657_sub_2306368347_1836258224,(void *)work_p_2278313657_sub_3546961148_1836258224,(void *)work_p_2278313657_sub_1470260200_1836258224,(void *)work_p_2278313657_sub_1105349237_1836258224,(void *)work_p_2278313657_sub_1295934868_1836258224,(void *)work_p_2278313657_sub_1104756998_1836258224,(void *)work_p_2278313657_sub_1645388937_1836258224,(void *)work_p_2278313657_sub_546711705_1836258224};
	xsi_register_didat("work_p_2278313657", "isim/tb_controller_transactions.exe.sim/work/p_2278313657.didat");
	xsi_register_subprogram_executes(se);
}
