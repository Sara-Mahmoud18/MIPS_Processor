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
static const char *ng0 = "D:/ASU/Sphomore/CSE221  Logic Design and Computer Organization/Major task/phase 2/COPROJECT_ph2_v2/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t3 = (t0 + 8808U);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t5 = (t0 + 8792U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t4, t3, t6, t5);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t1, t7, t2, t14);
    t16 = (t1 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (32U != t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 5192);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 32U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t25 = (t0 + 5032);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t18, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (2 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t16 = (t0 + 8728U);
    t18 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t15, t17, t16);
    t19 = (t15 + 12U);
    t20 = *((unsigned int *)t19);
    t21 = (1U * t20);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB7;

LAB8:    t23 = (t0 + 5256);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t18, 32U);
    xsi_driver_first_trans_fast(t23);

LAB2:    t28 = (t0 + 5048);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5256);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t21, 0);
    goto LAB8;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t16 = (t0 + 8712U);
    t18 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t15, t17, t16);
    t19 = (t15 + 12U);
    t20 = *((unsigned int *)t19);
    t21 = (1U * t20);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB7;

LAB8:    t23 = (t0 + 5320);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t18, 32U);
    xsi_driver_first_trans_fast(t23);

LAB2:    t28 = (t0 + 5064);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 5320);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t21, 0);
    goto LAB8;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
{
    char t6[16];
    char t12[16];
    char t17[16];
    char t35[16];
    char t41[16];
    char t46[16];
    char t64[16];
    char t70[16];
    char t84[16];
    char t90[16];
    char t99[16];
    char t101[16];
    char t105[16];
    char t114[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t36;
    char *t37;
    int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    int t44;
    unsigned char t45;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned char t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t65;
    char *t66;
    int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    int t73;
    unsigned char t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    char *t85;
    char *t86;
    int t87;
    unsigned int t88;
    char *t91;
    char *t92;
    int t93;
    unsigned char t94;
    char *t96;
    char *t98;
    char *t100;
    char *t102;
    char *t103;
    int t104;
    char *t106;
    int t107;
    char *t108;
    int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned char t112;
    char *t113;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned char t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (3 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 9044);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (1 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:    t30 = (t0 + 1352U);
    t31 = *((char **)t30);
    t32 = (3 - 1);
    t33 = (t32 * 1U);
    t34 = (0 + t33);
    t30 = (t31 + t34);
    t36 = (t35 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 1;
    t37 = (t36 + 4U);
    *((int *)t37) = 0;
    t37 = (t36 + 8U);
    *((int *)t37) = -1;
    t38 = (0 - 1);
    t39 = (t38 * -1);
    t39 = (t39 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t39;
    t37 = (t0 + 9046);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 0;
    t43 = (t42 + 4U);
    *((int *)t43) = 1;
    t43 = (t42 + 8U);
    *((int *)t43) = 1;
    t44 = (1 - 0);
    t39 = (t44 * 1);
    t39 = (t39 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t39;
    t45 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t30, t35, t37, t41);
    if (t45 != 0)
        goto LAB7;

LAB8:    t59 = (t0 + 1352U);
    t60 = *((char **)t59);
    t61 = (3 - 1);
    t62 = (t61 * 1U);
    t63 = (0 + t62);
    t59 = (t60 + t63);
    t65 = (t64 + 0U);
    t66 = (t65 + 0U);
    *((int *)t66) = 1;
    t66 = (t65 + 4U);
    *((int *)t66) = 0;
    t66 = (t65 + 8U);
    *((int *)t66) = -1;
    t67 = (0 - 1);
    t68 = (t67 * -1);
    t68 = (t68 + 1);
    t66 = (t65 + 12U);
    *((unsigned int *)t66) = t68;
    t66 = (t0 + 9048);
    t71 = (t70 + 0U);
    t72 = (t71 + 0U);
    *((int *)t72) = 0;
    t72 = (t71 + 4U);
    *((int *)t72) = 1;
    t72 = (t71 + 8U);
    *((int *)t72) = 1;
    t73 = (1 - 0);
    t68 = (t73 * 1);
    t68 = (t68 + 1);
    t72 = (t71 + 12U);
    *((unsigned int *)t72) = t68;
    t74 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t59, t64, t66, t70);
    if (t74 != 0)
        goto LAB11;

LAB12:    t80 = (t0 + 1352U);
    t81 = *((char **)t80);
    t68 = (3 - 1);
    t82 = (t68 * 1U);
    t83 = (0 + t82);
    t80 = (t81 + t83);
    t85 = (t84 + 0U);
    t86 = (t85 + 0U);
    *((int *)t86) = 1;
    t86 = (t85 + 4U);
    *((int *)t86) = 0;
    t86 = (t85 + 8U);
    *((int *)t86) = -1;
    t87 = (0 - 1);
    t88 = (t87 * -1);
    t88 = (t88 + 1);
    t86 = (t85 + 12U);
    *((unsigned int *)t86) = t88;
    t86 = (t0 + 9050);
    t91 = (t90 + 0U);
    t92 = (t91 + 0U);
    *((int *)t92) = 0;
    t92 = (t91 + 4U);
    *((int *)t92) = 1;
    t92 = (t91 + 8U);
    *((int *)t92) = 1;
    t93 = (1 - 0);
    t88 = (t93 * 1);
    t88 = (t88 + 1);
    t92 = (t91 + 12U);
    *((unsigned int *)t92) = t88;
    t94 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t80, t84, t86, t90);
    if (t94 != 0)
        goto LAB13;

LAB14:
LAB17:    t124 = xsi_get_transient_memory(32U);
    memset(t124, 0, 32U);
    t125 = t124;
    memset(t125, (unsigned char)4, 32U);
    t126 = (t0 + 5384);
    t127 = (t126 + 56U);
    t128 = *((char **)t127);
    t129 = (t128 + 56U);
    t130 = *((char **)t129);
    memcpy(t130, t124, 32U);
    xsi_driver_first_trans_fast(t126);

LAB2:    t131 = (t0 + 5080);
    *((int *)t131) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 2152U);
    t18 = *((char **)t14);
    t14 = (t0 + 8808U);
    t19 = (t0 + 1992U);
    t20 = *((char **)t19);
    t19 = (t0 + 8792U);
    t21 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t17, t18, t14, t20, t19);
    t22 = (t17 + 12U);
    t10 = *((unsigned int *)t22);
    t23 = (1U * t10);
    t24 = (32U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 5384);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 32U);
    xsi_driver_first_trans_fast(t25);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t23, 0);
    goto LAB6;

LAB7:    t43 = (t0 + 2152U);
    t47 = *((char **)t43);
    t43 = (t0 + 8808U);
    t48 = (t0 + 1992U);
    t49 = *((char **)t48);
    t48 = (t0 + 8792U);
    t50 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t46, t47, t43, t49, t48);
    t51 = (t46 + 12U);
    t39 = *((unsigned int *)t51);
    t52 = (1U * t39);
    t53 = (32U != t52);
    if (t53 == 1)
        goto LAB9;

LAB10:    t54 = (t0 + 5384);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t50, 32U);
    xsi_driver_first_trans_fast(t54);
    goto LAB2;

LAB9:    xsi_size_not_matching(32U, t52, 0);
    goto LAB10;

LAB11:    t72 = (t0 + 1832U);
    t75 = *((char **)t72);
    t72 = (t0 + 5384);
    t76 = (t72 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memcpy(t79, t75, 32U);
    xsi_driver_first_trans_fast(t72);
    goto LAB2;

LAB13:    t92 = (t0 + 9052);
    t96 = (t0 + 9080);
    t100 = ((IEEE_P_2592010699) + 4024);
    t102 = (t101 + 0U);
    t103 = (t102 + 0U);
    *((int *)t103) = 0;
    t103 = (t102 + 4U);
    *((int *)t103) = 27;
    t103 = (t102 + 8U);
    *((int *)t103) = 1;
    t104 = (27 - 0);
    t88 = (t104 * 1);
    t88 = (t88 + 1);
    t103 = (t102 + 12U);
    *((unsigned int *)t103) = t88;
    t103 = (t105 + 0U);
    t106 = (t103 + 0U);
    *((int *)t106) = 0;
    t106 = (t103 + 4U);
    *((int *)t106) = 2;
    t106 = (t103 + 8U);
    *((int *)t106) = 1;
    t107 = (2 - 0);
    t88 = (t107 * 1);
    t88 = (t88 + 1);
    t106 = (t103 + 12U);
    *((unsigned int *)t106) = t88;
    t98 = xsi_base_array_concat(t98, t99, t100, (char)97, t92, t101, (char)97, t96, t105, (char)101);
    t106 = (t0 + 1832U);
    t108 = *((char **)t106);
    t109 = (31 - 31);
    t88 = (t109 * -1);
    t110 = (1U * t88);
    t111 = (0 + t110);
    t106 = (t108 + t111);
    t112 = *((unsigned char *)t106);
    t115 = ((IEEE_P_2592010699) + 4024);
    t113 = xsi_base_array_concat(t113, t114, t115, (char)97, t98, t99, (char)99, t112, (char)101);
    t116 = (28U + 3U);
    t117 = (t116 + 1U);
    t118 = (32U != t117);
    if (t118 == 1)
        goto LAB15;

LAB16:    t119 = (t0 + 5384);
    t120 = (t119 + 56U);
    t121 = *((char **)t120);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    memcpy(t123, t113, 32U);
    xsi_driver_first_trans_fast(t119);
    goto LAB2;

LAB15:    xsi_size_not_matching(32U, t117, 0);
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_4(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8824U);
    t3 = (t0 + 9083);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 5448);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 5096);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 5448);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5112);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3,(void *)work_a_0832606739_3212880686_p_4,(void *)work_a_0832606739_3212880686_p_5};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Main_Module_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
