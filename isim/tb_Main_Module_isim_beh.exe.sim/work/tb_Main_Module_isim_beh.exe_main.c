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
char *WORK_P_4053066488;
char *IEEE_P_1242562249;
char *WORK_P_0159274485;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *WORK_P_2423718991;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_2423718991_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_4053066488_init();
    work_p_0159274485_init();
    work_a_4221267735_3212880686_init();
    work_a_2028110206_3212880686_init();
    work_a_4046387644_3212880686_init();
    work_a_1285194421_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2750190074_3212880686_init();
    work_a_3517922167_3212880686_init();
    work_a_0179509061_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_0992922103_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_0852166632_3212880686_init();
    work_a_2991416129_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_1130845995_0831356973_init();
    work_a_3720894149_0831356973_init();
    work_a_2889154880_3212880686_init();
    work_a_3769101412_2372691052_init();


    xsi_register_tops("work_a_3769101412_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_4053066488 = xsi_get_engine_memory("work_p_4053066488");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_0159274485 = xsi_get_engine_memory("work_p_0159274485");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_2423718991 = xsi_get_engine_memory("work_p_2423718991");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
