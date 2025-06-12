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
static const char *ng0 = "D:/ASU/Sphomore/CSE221  Logic Design and Computer Organization/Major task/phase 2/COPROJECT_ph2_v2/SL2.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0992922103_3212880686_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char t17[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(34, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (32 - 3);
    t4 = (31 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 4848);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 29;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 29);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t17 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 0;
    t18 = (t14 + 4U);
    *((int *)t18) = 1;
    t18 = (t14 + 8U);
    *((int *)t18) = 1;
    t19 = (1 - 0);
    t16 = (t19 * 1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t1, t12, (char)97, t7, t17, (char)101);
    t16 = (30U + 2U);
    t20 = (32U != t16);
    if (t20 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 2872);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t9, 32U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t25 = (t0 + 2792);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t16, 0);
    goto LAB6;

}


extern void work_a_0992922103_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0992922103_3212880686_p_0};
	xsi_register_didat("work_a_0992922103_3212880686", "isim/Main_Module_isim_beh.exe.sim/work/a_0992922103_3212880686.didat");
	xsi_register_executes(pe);
}
