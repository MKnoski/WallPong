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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/.Xilinx/lab12_czw/VGA_Driver.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3171904890_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    t1 = (t0 + 2264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2648);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(29, ng0);
    t7 = (75 * 1000000LL);
    t2 = (t0 + 2164);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 4729);
    *((int *)t2) = 1;
    t3 = (t0 + 4733);
    *((int *)t3) = 50000;
    t8 = 1;
    t9 = 50000;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(36, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 2648);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t10 = (t6 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(32, ng0);
    t7 = (25 * 1000000LL);
    t2 = (t0 + 2164);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 4729);
    t8 = *((int *)t2);
    t3 = (t0 + 4733);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB20:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 4729);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2648);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t7 = (25 * 1000000LL);
    t2 = (t0 + 2164);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}

static void work_a_3171904890_3212880686_p_1(char *t0)
{
    char t14[16];
    char t23[16];
    char t31[16];
    char t39[16];
    char t44[16];
    char t48[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t40;
    char *t41;
    int t42;
    unsigned char t43;
    char *t45;
    char *t46;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    unsigned int t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1396U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2604);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1512U);
    t11 = *((char **)t4);
    t4 = (t0 + 4664U);
    t12 = (t0 + 4737);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 9;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t11, t4, t12, t14);
    if (t19 == 1)
        goto LAB17;

LAB18:    t10 = (unsigned char)0;

LAB19:    if (t10 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2756);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2792);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2828);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4664U);
    t5 = (t0 + 4797);
    t12 = (t14 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t14);
    if (t3 == 1)
        goto LAB27;

LAB28:    t1 = (unsigned char)0;

LAB29:    if (t1 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2864);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB25:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1604U);
    t4 = *((char **)t2);
    t2 = (t0 + 4680U);
    t5 = (t0 + 4817);
    t12 = (t14 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t14);
    if (t3 == 1)
        goto LAB33;

LAB34:    t1 = (unsigned char)0;

LAB35:    if (t1 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2900);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB31:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4664U);
    t5 = (t0 + 4837);
    t12 = (t23 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t14, t4, t2, t5, t23);
    t15 = (t14 + 12U);
    t18 = *((unsigned int *)t15);
    t53 = (1U * t18);
    t1 = (10U != t53);
    if (t1 == 1)
        goto LAB36;

LAB37:    t16 = (t0 + 2936);
    t20 = (t16 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t24 = *((char **)t22);
    memcpy(t24, t13, 10U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4664U);
    t5 = (t0 + 4847);
    t12 = (t14 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t14);
    if (t1 != 0)
        goto LAB38;

LAB40:
LAB39:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1604U);
    t4 = *((char **)t2);
    t2 = (t0 + 4680U);
    t5 = (t0 + 4877);
    t12 = (t14 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t14);
    if (t1 != 0)
        goto LAB43;

LAB45:
LAB44:    goto LAB3;

LAB5:    t4 = (t0 + 1420U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(63, ng0);
    t41 = (t0 + 1604U);
    t45 = *((char **)t41);
    t41 = (t0 + 4680U);
    t46 = (t0 + 4777);
    t49 = (t48 + 0U);
    t50 = (t49 + 0U);
    *((int *)t50) = 0;
    t50 = (t49 + 4U);
    *((int *)t50) = 9;
    t50 = (t49 + 8U);
    *((int *)t50) = 1;
    t51 = (9 - 0);
    t18 = (t51 * 1);
    t18 = (t18 + 1);
    t50 = (t49 + 12U);
    *((unsigned int *)t50) = t18;
    t50 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t44, t45, t41, t46, t48);
    t52 = (t44 + 12U);
    t18 = *((unsigned int *)t52);
    t53 = (1U * t18);
    t54 = (10U != t53);
    if (t54 == 1)
        goto LAB20;

LAB21:    t55 = (t0 + 2684);
    t56 = (t55 + 32U);
    t57 = *((char **)t56);
    t58 = (t57 + 40U);
    t59 = *((char **)t58);
    memcpy(t59, t50, 10U);
    xsi_driver_first_trans_fast_port(t55);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4664U);
    t5 = (t0 + 4787);
    t12 = (t23 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 9;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (9 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t4, t2, t5, t23);
    t15 = (t14 + 12U);
    t18 = *((unsigned int *)t15);
    t53 = (1U * t18);
    t1 = (10U != t53);
    if (t1 == 1)
        goto LAB22;

LAB23:    t16 = (t0 + 2720);
    t20 = (t16 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t24 = *((char **)t22);
    memcpy(t24, t13, 10U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2756);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2792);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2828);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t11 = (t5 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t33 = (t0 + 1604U);
    t36 = *((char **)t33);
    t33 = (t0 + 4680U);
    t37 = (t0 + 4767);
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 0;
    t41 = (t40 + 4U);
    *((int *)t41) = 9;
    t41 = (t40 + 8U);
    *((int *)t41) = 1;
    t42 = (9 - 0);
    t18 = (t42 * 1);
    t18 = (t18 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t18;
    t43 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t36, t33, t37, t39);
    t8 = t43;
    goto LAB13;

LAB14:    t25 = (t0 + 1604U);
    t28 = *((char **)t25);
    t25 = (t0 + 4680U);
    t29 = (t0 + 4757);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 9;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t34 = (9 - 0);
    t18 = (t34 * 1);
    t18 = (t18 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t18;
    t35 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t28, t25, t29, t31);
    t9 = t35;
    goto LAB16;

LAB17:    t16 = (t0 + 1512U);
    t20 = *((char **)t16);
    t16 = (t0 + 4664U);
    t21 = (t0 + 4747);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 9;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (9 - 0);
    t18 = (t26 * 1);
    t18 = (t18 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t18;
    t27 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t20, t16, t21, t23);
    t10 = t27;
    goto LAB19;

LAB20:    xsi_size_not_matching(10U, t53, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(10U, t53, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(77, ng0);
    t22 = (t0 + 2864);
    t24 = (t22 + 32U);
    t25 = *((char **)t24);
    t28 = (t25 + 40U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB25;

LAB27:    t13 = (t0 + 1512U);
    t15 = *((char **)t13);
    t13 = (t0 + 4664U);
    t16 = (t0 + 4807);
    t21 = (t23 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 9;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t26 = (9 - 0);
    t18 = (t26 * 1);
    t18 = (t18 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t18;
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t15, t13, t16, t23);
    t1 = t6;
    goto LAB29;

LAB30:    xsi_set_current_line(84, ng0);
    t22 = (t0 + 2900);
    t24 = (t22 + 32U);
    t25 = *((char **)t24);
    t28 = (t25 + 40U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB31;

LAB33:    t13 = (t0 + 1604U);
    t15 = *((char **)t13);
    t13 = (t0 + 4680U);
    t16 = (t0 + 4827);
    t21 = (t23 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 9;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t26 = (9 - 0);
    t18 = (t26 * 1);
    t18 = (t18 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t18;
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t15, t13, t16, t23);
    t1 = t6;
    goto LAB35;

LAB36:    xsi_size_not_matching(10U, t53, 0);
    goto LAB37;

LAB38:    xsi_set_current_line(92, ng0);
    t13 = (t0 + 1604U);
    t15 = *((char **)t13);
    t13 = (t0 + 4680U);
    t16 = (t0 + 4857);
    t21 = (t31 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 9;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t26 = (9 - 0);
    t18 = (t26 * 1);
    t18 = (t18 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t18;
    t22 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t23, t15, t13, t16, t31);
    t24 = (t23 + 12U);
    t18 = *((unsigned int *)t24);
    t53 = (1U * t18);
    t3 = (10U != t53);
    if (t3 == 1)
        goto LAB41;

LAB42:    t25 = (t0 + 2972);
    t28 = (t25 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t32 = *((char **)t30);
    memcpy(t32, t22, 10U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4867);
    t5 = (t0 + 2936);
    t11 = (t5 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t15 = *((char **)t13);
    memcpy(t15, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB39;

LAB41:    xsi_size_not_matching(10U, t53, 0);
    goto LAB42;

LAB43:    xsi_set_current_line(97, ng0);
    t13 = (t0 + 4887);
    t16 = (t0 + 2972);
    t20 = (t16 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t24 = *((char **)t22);
    memcpy(t24, t13, 10U);
    xsi_driver_first_trans_fast(t16);
    goto LAB44;

}


extern void work_a_3171904890_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3171904890_3212880686_p_0,(void *)work_a_3171904890_3212880686_p_1};
	xsi_register_didat("work_a_3171904890_3212880686", "isim/VGA_driver_isim_beh.exe.sim/work/a_3171904890_3212880686.didat");
	xsi_register_executes(pe);
}
