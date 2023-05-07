/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_1074(char*, char *);
IKI_DLLESPEC extern void execute_5363(char*, char *);
IKI_DLLESPEC extern void execute_5364(char*, char *);
IKI_DLLESPEC extern void execute_5365(char*, char *);
IKI_DLLESPEC extern void execute_5366(char*, char *);
IKI_DLLESPEC extern void execute_1278(char*, char *);
IKI_DLLESPEC extern void execute_1279(char*, char *);
IKI_DLLESPEC extern void execute_1412(char*, char *);
IKI_DLLESPEC extern void execute_1413(char*, char *);
IKI_DLLESPEC extern void execute_1546(char*, char *);
IKI_DLLESPEC extern void execute_1547(char*, char *);
IKI_DLLESPEC extern void execute_1680(char*, char *);
IKI_DLLESPEC extern void execute_1681(char*, char *);
IKI_DLLESPEC extern void execute_1814(char*, char *);
IKI_DLLESPEC extern void execute_1815(char*, char *);
IKI_DLLESPEC extern void execute_1948(char*, char *);
IKI_DLLESPEC extern void execute_1949(char*, char *);
IKI_DLLESPEC extern void execute_2082(char*, char *);
IKI_DLLESPEC extern void execute_2083(char*, char *);
IKI_DLLESPEC extern void execute_2216(char*, char *);
IKI_DLLESPEC extern void execute_2217(char*, char *);
IKI_DLLESPEC extern void execute_2350(char*, char *);
IKI_DLLESPEC extern void execute_2351(char*, char *);
IKI_DLLESPEC extern void execute_2484(char*, char *);
IKI_DLLESPEC extern void execute_2485(char*, char *);
IKI_DLLESPEC extern void execute_2618(char*, char *);
IKI_DLLESPEC extern void execute_2619(char*, char *);
IKI_DLLESPEC extern void execute_2752(char*, char *);
IKI_DLLESPEC extern void execute_2753(char*, char *);
IKI_DLLESPEC extern void execute_2886(char*, char *);
IKI_DLLESPEC extern void execute_2887(char*, char *);
IKI_DLLESPEC extern void execute_3020(char*, char *);
IKI_DLLESPEC extern void execute_3021(char*, char *);
IKI_DLLESPEC extern void execute_3154(char*, char *);
IKI_DLLESPEC extern void execute_3155(char*, char *);
IKI_DLLESPEC extern void execute_3288(char*, char *);
IKI_DLLESPEC extern void execute_3289(char*, char *);
IKI_DLLESPEC extern void execute_3422(char*, char *);
IKI_DLLESPEC extern void execute_3423(char*, char *);
IKI_DLLESPEC extern void execute_3556(char*, char *);
IKI_DLLESPEC extern void execute_3557(char*, char *);
IKI_DLLESPEC extern void execute_3690(char*, char *);
IKI_DLLESPEC extern void execute_3691(char*, char *);
IKI_DLLESPEC extern void execute_3824(char*, char *);
IKI_DLLESPEC extern void execute_3825(char*, char *);
IKI_DLLESPEC extern void execute_3958(char*, char *);
IKI_DLLESPEC extern void execute_3959(char*, char *);
IKI_DLLESPEC extern void execute_4092(char*, char *);
IKI_DLLESPEC extern void execute_4093(char*, char *);
IKI_DLLESPEC extern void execute_4226(char*, char *);
IKI_DLLESPEC extern void execute_4227(char*, char *);
IKI_DLLESPEC extern void execute_4360(char*, char *);
IKI_DLLESPEC extern void execute_4361(char*, char *);
IKI_DLLESPEC extern void execute_4494(char*, char *);
IKI_DLLESPEC extern void execute_4495(char*, char *);
IKI_DLLESPEC extern void execute_4628(char*, char *);
IKI_DLLESPEC extern void execute_4629(char*, char *);
IKI_DLLESPEC extern void execute_4762(char*, char *);
IKI_DLLESPEC extern void execute_4763(char*, char *);
IKI_DLLESPEC extern void execute_4896(char*, char *);
IKI_DLLESPEC extern void execute_4897(char*, char *);
IKI_DLLESPEC extern void execute_5030(char*, char *);
IKI_DLLESPEC extern void execute_5031(char*, char *);
IKI_DLLESPEC extern void execute_5164(char*, char *);
IKI_DLLESPEC extern void execute_5165(char*, char *);
IKI_DLLESPEC extern void execute_5298(char*, char *);
IKI_DLLESPEC extern void execute_5299(char*, char *);
IKI_DLLESPEC extern void execute_5300(char*, char *);
IKI_DLLESPEC extern void execute_5301(char*, char *);
IKI_DLLESPEC extern void execute_5302(char*, char *);
IKI_DLLESPEC extern void execute_5303(char*, char *);
IKI_DLLESPEC extern void execute_5304(char*, char *);
IKI_DLLESPEC extern void execute_5305(char*, char *);
IKI_DLLESPEC extern void execute_5306(char*, char *);
IKI_DLLESPEC extern void execute_5307(char*, char *);
IKI_DLLESPEC extern void execute_5308(char*, char *);
IKI_DLLESPEC extern void execute_5309(char*, char *);
IKI_DLLESPEC extern void execute_5310(char*, char *);
IKI_DLLESPEC extern void execute_5311(char*, char *);
IKI_DLLESPEC extern void execute_5312(char*, char *);
IKI_DLLESPEC extern void execute_5313(char*, char *);
IKI_DLLESPEC extern void execute_5314(char*, char *);
IKI_DLLESPEC extern void execute_5315(char*, char *);
IKI_DLLESPEC extern void execute_5316(char*, char *);
IKI_DLLESPEC extern void execute_5317(char*, char *);
IKI_DLLESPEC extern void execute_5318(char*, char *);
IKI_DLLESPEC extern void execute_5319(char*, char *);
IKI_DLLESPEC extern void execute_5320(char*, char *);
IKI_DLLESPEC extern void execute_5321(char*, char *);
IKI_DLLESPEC extern void execute_5322(char*, char *);
IKI_DLLESPEC extern void execute_5323(char*, char *);
IKI_DLLESPEC extern void execute_5324(char*, char *);
IKI_DLLESPEC extern void execute_5325(char*, char *);
IKI_DLLESPEC extern void execute_5326(char*, char *);
IKI_DLLESPEC extern void execute_5327(char*, char *);
IKI_DLLESPEC extern void execute_5328(char*, char *);
IKI_DLLESPEC extern void execute_5329(char*, char *);
IKI_DLLESPEC extern void execute_5330(char*, char *);
IKI_DLLESPEC extern void execute_5331(char*, char *);
IKI_DLLESPEC extern void execute_5332(char*, char *);
IKI_DLLESPEC extern void execute_5333(char*, char *);
IKI_DLLESPEC extern void execute_5334(char*, char *);
IKI_DLLESPEC extern void execute_5335(char*, char *);
IKI_DLLESPEC extern void execute_5336(char*, char *);
IKI_DLLESPEC extern void execute_5337(char*, char *);
IKI_DLLESPEC extern void execute_5338(char*, char *);
IKI_DLLESPEC extern void execute_5339(char*, char *);
IKI_DLLESPEC extern void execute_5340(char*, char *);
IKI_DLLESPEC extern void execute_5341(char*, char *);
IKI_DLLESPEC extern void execute_5342(char*, char *);
IKI_DLLESPEC extern void execute_5343(char*, char *);
IKI_DLLESPEC extern void execute_5344(char*, char *);
IKI_DLLESPEC extern void execute_5345(char*, char *);
IKI_DLLESPEC extern void execute_5346(char*, char *);
IKI_DLLESPEC extern void execute_5347(char*, char *);
IKI_DLLESPEC extern void execute_5348(char*, char *);
IKI_DLLESPEC extern void execute_5349(char*, char *);
IKI_DLLESPEC extern void execute_5350(char*, char *);
IKI_DLLESPEC extern void execute_5351(char*, char *);
IKI_DLLESPEC extern void execute_5352(char*, char *);
IKI_DLLESPEC extern void execute_5353(char*, char *);
IKI_DLLESPEC extern void execute_5354(char*, char *);
IKI_DLLESPEC extern void execute_5355(char*, char *);
IKI_DLLESPEC extern void execute_5356(char*, char *);
IKI_DLLESPEC extern void execute_5357(char*, char *);
IKI_DLLESPEC extern void execute_5358(char*, char *);
IKI_DLLESPEC extern void execute_5359(char*, char *);
IKI_DLLESPEC extern void execute_5360(char*, char *);
IKI_DLLESPEC extern void execute_5361(char*, char *);
IKI_DLLESPEC extern void execute_5362(char*, char *);
IKI_DLLESPEC extern void execute_1080(char*, char *);
IKI_DLLESPEC extern void execute_1084(char*, char *);
IKI_DLLESPEC extern void execute_1088(char*, char *);
IKI_DLLESPEC extern void execute_1092(char*, char *);
IKI_DLLESPEC extern void execute_1096(char*, char *);
IKI_DLLESPEC extern void execute_1100(char*, char *);
IKI_DLLESPEC extern void execute_1104(char*, char *);
IKI_DLLESPEC extern void execute_1108(char*, char *);
IKI_DLLESPEC extern void execute_1112(char*, char *);
IKI_DLLESPEC extern void execute_1116(char*, char *);
IKI_DLLESPEC extern void execute_1120(char*, char *);
IKI_DLLESPEC extern void execute_1124(char*, char *);
IKI_DLLESPEC extern void execute_1128(char*, char *);
IKI_DLLESPEC extern void execute_1132(char*, char *);
IKI_DLLESPEC extern void execute_1136(char*, char *);
IKI_DLLESPEC extern void execute_1140(char*, char *);
IKI_DLLESPEC extern void execute_1144(char*, char *);
IKI_DLLESPEC extern void execute_1145(char*, char *);
IKI_DLLESPEC extern void execute_1081(char*, char *);
IKI_DLLESPEC extern void execute_1082(char*, char *);
IKI_DLLESPEC extern void execute_1083(char*, char *);
IKI_DLLESPEC extern void execute_1076(char*, char *);
IKI_DLLESPEC extern void execute_1077(char*, char *);
IKI_DLLESPEC extern void execute_1078(char*, char *);
IKI_DLLESPEC extern void execute_1079(char*, char *);
IKI_DLLESPEC extern void execute_5367(char*, char *);
IKI_DLLESPEC extern void execute_5368(char*, char *);
IKI_DLLESPEC extern void execute_5369(char*, char *);
IKI_DLLESPEC extern void execute_5370(char*, char *);
IKI_DLLESPEC extern void execute_5371(char*, char *);
IKI_DLLESPEC extern void execute_5372(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[162] = {(funcp)execute_1074, (funcp)execute_5363, (funcp)execute_5364, (funcp)execute_5365, (funcp)execute_5366, (funcp)execute_1278, (funcp)execute_1279, (funcp)execute_1412, (funcp)execute_1413, (funcp)execute_1546, (funcp)execute_1547, (funcp)execute_1680, (funcp)execute_1681, (funcp)execute_1814, (funcp)execute_1815, (funcp)execute_1948, (funcp)execute_1949, (funcp)execute_2082, (funcp)execute_2083, (funcp)execute_2216, (funcp)execute_2217, (funcp)execute_2350, (funcp)execute_2351, (funcp)execute_2484, (funcp)execute_2485, (funcp)execute_2618, (funcp)execute_2619, (funcp)execute_2752, (funcp)execute_2753, (funcp)execute_2886, (funcp)execute_2887, (funcp)execute_3020, (funcp)execute_3021, (funcp)execute_3154, (funcp)execute_3155, (funcp)execute_3288, (funcp)execute_3289, (funcp)execute_3422, (funcp)execute_3423, (funcp)execute_3556, (funcp)execute_3557, (funcp)execute_3690, (funcp)execute_3691, (funcp)execute_3824, (funcp)execute_3825, (funcp)execute_3958, (funcp)execute_3959, (funcp)execute_4092, (funcp)execute_4093, (funcp)execute_4226, (funcp)execute_4227, (funcp)execute_4360, (funcp)execute_4361, (funcp)execute_4494, (funcp)execute_4495, (funcp)execute_4628, (funcp)execute_4629, (funcp)execute_4762, (funcp)execute_4763, (funcp)execute_4896, (funcp)execute_4897, (funcp)execute_5030, (funcp)execute_5031, (funcp)execute_5164, (funcp)execute_5165, (funcp)execute_5298, (funcp)execute_5299, (funcp)execute_5300, (funcp)execute_5301, (funcp)execute_5302, (funcp)execute_5303, (funcp)execute_5304, (funcp)execute_5305, (funcp)execute_5306, (funcp)execute_5307, (funcp)execute_5308, (funcp)execute_5309, (funcp)execute_5310, (funcp)execute_5311, (funcp)execute_5312, (funcp)execute_5313, (funcp)execute_5314, (funcp)execute_5315, (funcp)execute_5316, (funcp)execute_5317, (funcp)execute_5318, (funcp)execute_5319, (funcp)execute_5320, (funcp)execute_5321, (funcp)execute_5322, (funcp)execute_5323, (funcp)execute_5324, (funcp)execute_5325, (funcp)execute_5326, (funcp)execute_5327, (funcp)execute_5328, (funcp)execute_5329, (funcp)execute_5330, (funcp)execute_5331, (funcp)execute_5332, (funcp)execute_5333, (funcp)execute_5334, (funcp)execute_5335, (funcp)execute_5336, (funcp)execute_5337, (funcp)execute_5338, (funcp)execute_5339, (funcp)execute_5340, (funcp)execute_5341, (funcp)execute_5342, (funcp)execute_5343, (funcp)execute_5344, (funcp)execute_5345, (funcp)execute_5346, (funcp)execute_5347, (funcp)execute_5348, (funcp)execute_5349, (funcp)execute_5350, (funcp)execute_5351, (funcp)execute_5352, (funcp)execute_5353, (funcp)execute_5354, (funcp)execute_5355, (funcp)execute_5356, (funcp)execute_5357, (funcp)execute_5358, (funcp)execute_5359, (funcp)execute_5360, (funcp)execute_5361, (funcp)execute_5362, (funcp)execute_1080, (funcp)execute_1084, (funcp)execute_1088, (funcp)execute_1092, (funcp)execute_1096, (funcp)execute_1100, (funcp)execute_1104, (funcp)execute_1108, (funcp)execute_1112, (funcp)execute_1116, (funcp)execute_1120, (funcp)execute_1124, (funcp)execute_1128, (funcp)execute_1132, (funcp)execute_1136, (funcp)execute_1140, (funcp)execute_1144, (funcp)execute_1145, (funcp)execute_1081, (funcp)execute_1082, (funcp)execute_1083, (funcp)execute_1076, (funcp)execute_1077, (funcp)execute_1078, (funcp)execute_1079, (funcp)execute_5367, (funcp)execute_5368, (funcp)execute_5369, (funcp)execute_5370, (funcp)execute_5371, (funcp)execute_5372, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 162;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/CSA_MUX_TB_behav/xsim.reloc",  (void **)funcTab, 162);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/CSA_MUX_TB_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/CSA_MUX_TB_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/CSA_MUX_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/CSA_MUX_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/CSA_MUX_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
