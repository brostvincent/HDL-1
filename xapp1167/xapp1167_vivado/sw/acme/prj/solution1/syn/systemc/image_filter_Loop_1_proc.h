// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_Loop_1_proc_HH_
#define _image_filter_Loop_1_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_mac_muladd_8ns_6ns_8ns_13_1.h"
#include "image_filter_am_addmul_8ns_9ns_12ns_22_1.h"
#include "image_filter_Loop_1_proc_line_buffer_0_0_val.h"

namespace ap_rtl {

struct image_filter_Loop_1_proc : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > rows;
    sc_in< sc_lv<32> > cols;
    sc_in< sc_lv<8> > img_0_data_stream_0_V_dout;
    sc_in< sc_logic > img_0_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_0_data_stream_1_V_dout;
    sc_in< sc_logic > img_0_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_0_data_stream_2_V_dout;
    sc_in< sc_logic > img_0_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_2_V_read;
    sc_out< sc_lv<8> > img_1_data_stream_0_V_din;
    sc_in< sc_logic > img_1_data_stream_0_V_full_n;
    sc_out< sc_logic > img_1_data_stream_0_V_write;
    sc_out< sc_lv<8> > img_1_data_stream_1_V_din;
    sc_in< sc_logic > img_1_data_stream_1_V_full_n;
    sc_out< sc_logic > img_1_data_stream_1_V_write;
    sc_out< sc_lv<8> > img_1_data_stream_2_V_din;
    sc_in< sc_logic > img_1_data_stream_2_V_full_n;
    sc_out< sc_logic > img_1_data_stream_2_V_write;


    // Module declarations
    image_filter_Loop_1_proc(sc_module_name name);
    SC_HAS_PROCESS(image_filter_Loop_1_proc);

    ~image_filter_Loop_1_proc();

    sc_trace_file* mVcdFile;

    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_0_0_val_U;
    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_0_1_val_U;
    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_0_2_val_U;
    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_1_0_val_U;
    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_1_1_val_U;
    image_filter_Loop_1_proc_line_buffer_0_0_val* line_buffer_1_2_val_U;
    image_filter_mac_muladd_8ns_6ns_8ns_13_1<1,1,8,6,8,13>* image_filter_mac_muladd_8ns_6ns_8ns_13_1_U15;
    image_filter_mac_muladd_8ns_6ns_8ns_13_1<1,1,8,6,8,13>* image_filter_mac_muladd_8ns_6ns_8ns_13_1_U16;
    image_filter_mac_muladd_8ns_6ns_8ns_13_1<1,1,8,6,8,13>* image_filter_mac_muladd_8ns_6ns_8ns_13_1_U17;
    image_filter_am_addmul_8ns_9ns_12ns_22_1<1,1,8,9,12,22>* image_filter_am_addmul_8ns_9ns_12ns_22_1_U18;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<11> > col_reg_341;
    sc_signal< sc_lv<12> > tmp_10_cast_fu_373_p1;
    sc_signal< bool > ap_sig_bdd_65;
    sc_signal< sc_lv<12> > tmp_11_cast_fu_387_p1;
    sc_signal< sc_lv<11> > tmp_7_fu_391_p2;
    sc_signal< sc_lv<11> > tmp_8_fu_397_p2;
    sc_signal< sc_lv<12> > tmp_21_fu_403_p1;
    sc_signal< sc_lv<12> > tmp_24_fu_407_p1;
    sc_signal< sc_lv<1> > exitcond1_fu_415_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_85;
    sc_signal< sc_lv<11> > row_1_fu_420_p2;
    sc_signal< sc_lv<11> > row_1_reg_1326;
    sc_signal< sc_lv<1> > tmp_9_fu_426_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_1331;
    sc_signal< sc_lv<1> > tmp_10_fu_437_p2;
    sc_signal< sc_lv<1> > tmp_10_reg_1336;
    sc_signal< sc_lv<1> > tmp_11_fu_443_p2;
    sc_signal< sc_lv<1> > tmp_11_reg_1341;
    sc_signal< sc_lv<1> > tmp_12_fu_449_p2;
    sc_signal< sc_lv<1> > tmp_12_reg_1346;
    sc_signal< sc_lv<1> > exitcond_fu_454_p2;
    sc_signal< sc_lv<1> > exitcond_reg_1351;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_107;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_lv<1> > or_cond_reg_1360;
    sc_signal< bool > ap_sig_bdd_124;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_lv<1> > or_cond2_reg_1410;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it7;
    sc_signal< bool > ap_sig_bdd_152;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1351_pp0_it6;
    sc_signal< sc_lv<11> > col_1_fu_459_p2;
    sc_signal< sc_lv<1> > or_cond_fu_474_p2;
    sc_signal< sc_lv<11> > line_buffer_1_0_val_addr_reg_1364;
    sc_signal< sc_lv<11> > line_buffer_1_1_val_addr_reg_1370;
    sc_signal< sc_lv<11> > line_buffer_1_2_val_addr_reg_1376;
    sc_signal< sc_lv<11> > line_buffer_0_0_val_addr_reg_1382;
    sc_signal< sc_lv<11> > ap_reg_ppstg_line_buffer_0_0_val_addr_reg_1382_pp0_it1;
    sc_signal< sc_lv<11> > line_buffer_0_1_val_addr_reg_1388;
    sc_signal< sc_lv<11> > ap_reg_ppstg_line_buffer_0_1_val_addr_reg_1388_pp0_it1;
    sc_signal< sc_lv<11> > line_buffer_0_2_val_addr_reg_1394;
    sc_signal< sc_lv<11> > ap_reg_ppstg_line_buffer_0_2_val_addr_reg_1394_pp0_it1;
    sc_signal< sc_lv<1> > tmp11_fu_506_p2;
    sc_signal< sc_lv<1> > tmp11_reg_1400;
    sc_signal< sc_lv<1> > tmp12_fu_511_p2;
    sc_signal< sc_lv<1> > tmp12_reg_1405;
    sc_signal< sc_lv<1> > or_cond2_fu_522_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_1410_pp0_it6;
    sc_signal< sc_lv<8> > line_buffer_1_0_val_q0;
    sc_signal< sc_lv<8> > R_reg_1414;
    sc_signal< sc_lv<8> > line_buffer_1_1_val_q0;
    sc_signal< sc_lv<8> > G_reg_1419;
    sc_signal< sc_lv<8> > line_buffer_1_2_val_q0;
    sc_signal< sc_lv<8> > B_reg_1425;
    sc_signal< sc_lv<10> > tmp9_fu_554_p2;
    sc_signal< sc_lv<10> > tmp9_reg_1430;
    sc_signal< sc_lv<8> > line_buffer_0_0_val_q0;
    sc_signal< sc_lv<8> > pix_val_0_reg_1435;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_0_reg_1435_pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_0_reg_1435_pp0_it3;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_0_reg_1435_pp0_it4;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_0_reg_1435_pp0_it5;
    sc_signal< sc_lv<8> > line_buffer_0_1_val_q0;
    sc_signal< sc_lv<8> > pix_val_1_reg_1442;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_1_reg_1442_pp0_it2;
    sc_signal< sc_lv<8> > line_buffer_0_2_val_q0;
    sc_signal< sc_lv<8> > pix_val_2_reg_1449;
    sc_signal< sc_lv<8> > ap_reg_ppstg_pix_val_2_reg_1449_pp0_it2;
    sc_signal< sc_lv<1> > or_cond3_fu_560_p2;
    sc_signal< sc_lv<1> > or_cond3_reg_1455;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond3_reg_1455_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond3_reg_1455_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond3_reg_1455_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond3_reg_1455_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond3_reg_1455_pp0_it6;
    sc_signal< sc_lv<8> > G_4_reg_1459;
    sc_signal< sc_lv<8> > tmp_i_reg_1464;
    sc_signal< sc_lv<10> > tmp4_fu_653_p2;
    sc_signal< sc_lv<10> > tmp4_reg_1469;
    sc_signal< sc_lv<15> > tmp_6_i2_fu_701_p2;
    sc_signal< sc_lv<15> > tmp_6_i2_reg_1474;
    sc_signal< sc_lv<13> > grp_fu_1203_p3;
    sc_signal< sc_lv<13> > tmp10_reg_1479;
    sc_signal< sc_lv<8> > y_window_2_1_1_reg_1484;
    sc_signal< sc_lv<8> > ap_reg_ppstg_y_window_2_1_1_reg_1484_pp0_it4;
    sc_signal< sc_lv<8> > y_fu_710_p2;
    sc_signal< sc_lv<8> > y_reg_1490;
    sc_signal< sc_lv<8> > tmp_i1_reg_1495;
    sc_signal< sc_lv<8> > y_2_fu_820_p2;
    sc_signal< sc_lv<8> > y_2_reg_1500;
    sc_signal< sc_lv<9> > tmp_2_i3_fu_832_p2;
    sc_signal< sc_lv<9> > tmp_2_i3_reg_1506;
    sc_signal< sc_lv<9> > ap_reg_ppstg_tmp_2_i3_reg_1506_pp0_it4;
    sc_signal< sc_lv<9> > ap_reg_ppstg_tmp_2_i3_reg_1506_pp0_it5;
    sc_signal< sc_lv<11> > x_weight_2_1_2_i_fu_916_p2;
    sc_signal< sc_lv<11> > x_weight_2_1_2_i_reg_1511;
    sc_signal< sc_lv<11> > tmp_19_2_cast_i_fu_942_p1;
    sc_signal< sc_lv<11> > tmp_19_2_cast_i_reg_1516;
    sc_signal< sc_lv<11> > y_weight_2_2_i_fu_945_p2;
    sc_signal< sc_lv<11> > y_weight_2_2_i_reg_1521;
    sc_signal< sc_lv<1> > tmp_i_29_fu_1015_p2;
    sc_signal< sc_lv<1> > tmp_i_29_reg_1526;
    sc_signal< sc_lv<8> > tmp_28_fu_1021_p1;
    sc_signal< sc_lv<8> > tmp_28_reg_1531;
    sc_signal< sc_lv<8> > tmp_22_fu_1025_p2;
    sc_signal< sc_lv<8> > tmp_22_reg_1536;
    sc_signal< sc_lv<1> > tmp_4_i_fu_1031_p2;
    sc_signal< sc_lv<1> > tmp_4_i_reg_1541;
    sc_signal< sc_lv<8> > tmp_29_fu_1037_p1;
    sc_signal< sc_lv<8> > tmp_29_reg_1546;
    sc_signal< sc_lv<8> > tmp_25_fu_1041_p2;
    sc_signal< sc_lv<8> > tmp_25_reg_1551;
    sc_signal< sc_lv<8> > edge_weight_i_fu_1061_p2;
    sc_signal< sc_lv<8> > edge_weight_i_reg_1556;
    sc_signal< sc_lv<1> > tmp_7_i_fu_1067_p2;
    sc_signal< sc_lv<1> > tmp_7_i_reg_1561;
    sc_signal< sc_lv<1> > tmp_8_i3_fu_1073_p2;
    sc_signal< sc_lv<1> > tmp_8_i3_reg_1567;
    sc_signal< sc_lv<22> > grp_fu_1229_p3;
    sc_signal< sc_lv<22> > mul_reg_1572;
    sc_signal< sc_lv<8> > edge_val_1_fu_1107_p3;
    sc_signal< sc_lv<8> > sepia_val_0_reg_1583;
    sc_signal< sc_lv<8> > sepia_val_2_fu_1157_p3;
    sc_signal< sc_lv<8> > sepia_val_2_reg_1588;
    sc_signal< sc_lv<8> > sepia_val_1_fu_1177_p3;
    sc_signal< sc_lv<8> > sepia_val_1_reg_1593;
    sc_signal< sc_lv<11> > line_buffer_0_0_val_address0;
    sc_signal< sc_logic > line_buffer_0_0_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_0_0_val_address1;
    sc_signal< sc_logic > line_buffer_0_0_val_ce1;
    sc_signal< sc_logic > line_buffer_0_0_val_we1;
    sc_signal< sc_lv<8> > line_buffer_0_0_val_d1;
    sc_signal< sc_lv<11> > line_buffer_0_1_val_address0;
    sc_signal< sc_logic > line_buffer_0_1_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_0_1_val_address1;
    sc_signal< sc_logic > line_buffer_0_1_val_ce1;
    sc_signal< sc_logic > line_buffer_0_1_val_we1;
    sc_signal< sc_lv<8> > line_buffer_0_1_val_d1;
    sc_signal< sc_lv<11> > line_buffer_0_2_val_address0;
    sc_signal< sc_logic > line_buffer_0_2_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_0_2_val_address1;
    sc_signal< sc_logic > line_buffer_0_2_val_ce1;
    sc_signal< sc_logic > line_buffer_0_2_val_we1;
    sc_signal< sc_lv<8> > line_buffer_0_2_val_d1;
    sc_signal< sc_lv<11> > line_buffer_1_0_val_address0;
    sc_signal< sc_logic > line_buffer_1_0_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_1_0_val_address1;
    sc_signal< sc_logic > line_buffer_1_0_val_ce1;
    sc_signal< sc_logic > line_buffer_1_0_val_we1;
    sc_signal< sc_lv<8> > line_buffer_1_0_val_d1;
    sc_signal< sc_lv<11> > line_buffer_1_1_val_address0;
    sc_signal< sc_logic > line_buffer_1_1_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_1_1_val_address1;
    sc_signal< sc_logic > line_buffer_1_1_val_ce1;
    sc_signal< sc_logic > line_buffer_1_1_val_we1;
    sc_signal< sc_lv<8> > line_buffer_1_1_val_d1;
    sc_signal< sc_lv<11> > line_buffer_1_2_val_address0;
    sc_signal< sc_logic > line_buffer_1_2_val_ce0;
    sc_signal< sc_lv<11> > line_buffer_1_2_val_address1;
    sc_signal< sc_logic > line_buffer_1_2_val_ce1;
    sc_signal< sc_logic > line_buffer_1_2_val_we1;
    sc_signal< sc_lv<8> > line_buffer_1_2_val_d1;
    sc_signal< sc_lv<11> > row_reg_330;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_3;
    sc_signal< bool > ap_sig_bdd_390;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it7;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it8;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it1;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it3;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it5;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_edge_val1_reg_352pp0_it6;
    sc_signal< sc_lv<64> > tmp_16_fu_479_p1;
    sc_signal< sc_lv<8> > y_window_0_1_fu_132;
    sc_signal< sc_lv<8> > y_window_0_2_fu_136;
    sc_signal< sc_lv<8> > y_window_2_2_fu_140;
    sc_signal< sc_lv<8> > y_window_1_1_fu_144;
    sc_signal< sc_lv<8> > y_1_fu_843_p2;
    sc_signal< sc_lv<8> > y_window_1_2_fu_148;
    sc_signal< sc_lv<8> > y_window_2_1_fu_152;
    sc_signal< sc_lv<8> > B_1_fu_156;
    sc_signal< sc_lv<8> > G_1_fu_160;
    sc_signal< sc_lv<8> > R_1_fu_164;
    sc_signal< sc_lv<11> > tmp_1_fu_363_p1;
    sc_signal< sc_lv<11> > tmp_s_fu_367_p2;
    sc_signal< sc_lv<11> > tmp_2_fu_377_p1;
    sc_signal< sc_lv<11> > tmp_6_fu_381_p2;
    sc_signal< sc_lv<12> > row_cast_fu_411_p1;
    sc_signal< sc_lv<12> > output_row_fu_431_p2;
    sc_signal< sc_lv<12> > col_cast_fu_465_p1;
    sc_signal< sc_lv<1> > tmp_14_fu_469_p2;
    sc_signal< sc_lv<12> > output_col_fu_489_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_495_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_501_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_516_p2;
    sc_signal< sc_lv<9> > p_shl2_i_fu_542_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_i_cast_fu_550_p1;
    sc_signal< sc_lv<14> > p_shl1_i_fu_576_p3;
    sc_signal< sc_lv<15> > p_shl_i_fu_590_p3;
    sc_signal< sc_lv<15> > p_shl1_cast_i_fu_583_p1;
    sc_signal< sc_lv<15> > tmp58_cast_fu_604_p1;
    sc_signal< sc_lv<15> > tmp_6_i_fu_607_p2;
    sc_signal< sc_lv<16> > tmp_6_cast_i_fu_613_p1;
    sc_signal< sc_lv<16> > p_shl_cast_i_fu_597_p1;
    sc_signal< sc_lv<13> > grp_fu_1220_p3;
    sc_signal< sc_lv<16> > tmp2_fu_617_p2;
    sc_signal< sc_lv<16> > tmp60_cast_fu_623_p1;
    sc_signal< sc_lv<16> > tmp_8_i_fu_626_p2;
    sc_signal< sc_lv<9> > p_shl2_i6_fu_642_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_i7_cast_fu_649_p1;
    sc_signal< sc_lv<14> > p_shl1_i1_fu_659_p3;
    sc_signal< sc_lv<9> > p_shl2_i1_fu_671_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_i29_cast_fu_679_p1;
    sc_signal< sc_lv<10> > tmp7_fu_691_p2;
    sc_signal< sc_lv<15> > p_shl1_cast_i1_fu_667_p1;
    sc_signal< sc_lv<15> > tmp64_cast_fu_697_p1;
    sc_signal< sc_lv<14> > p_shl1_i4_fu_715_p3;
    sc_signal< sc_lv<15> > p_shl_i1_fu_729_p3;
    sc_signal< sc_lv<15> > p_shl1_cast_i5_fu_722_p1;
    sc_signal< sc_lv<15> > tmp61_cast_fu_743_p1;
    sc_signal< sc_lv<15> > tmp_6_i1_fu_746_p2;
    sc_signal< sc_lv<16> > tmp_6_cast_i1_fu_752_p1;
    sc_signal< sc_lv<16> > p_shl_cast_i1_fu_736_p1;
    sc_signal< sc_lv<13> > grp_fu_1211_p3;
    sc_signal< sc_lv<16> > tmp5_fu_756_p2;
    sc_signal< sc_lv<16> > tmp63_cast_fu_762_p1;
    sc_signal< sc_lv<16> > tmp_8_i1_fu_765_p2;
    sc_signal< sc_lv<15> > p_shl_i2_fu_781_p3;
    sc_signal< sc_lv<16> > tmp_6_cast_i2_fu_792_p1;
    sc_signal< sc_lv<16> > p_shl_cast_i2_fu_788_p1;
    sc_signal< sc_lv<16> > tmp8_fu_795_p2;
    sc_signal< sc_lv<16> > tmp66_cast_fu_801_p1;
    sc_signal< sc_lv<16> > tmp_8_i2_fu_804_p2;
    sc_signal< sc_lv<8> > tmp_i2_fu_810_p4;
    sc_signal< sc_lv<9> > tmp_cast_i2_fu_826_p1;
    sc_signal< sc_lv<9> > tmp_cast_i_fu_829_p1;
    sc_signal< sc_lv<9> > tmp_23_0_1_i_fu_860_p3;
    sc_signal< sc_lv<9> > tmp_19_0_2_cast1_i_cast_fu_872_p1;
    sc_signal< sc_lv<9> > tmp_19_0_cast2_i_cast_fu_857_p1;
    sc_signal< sc_lv<9> > x_weight_2_0_2_i_fu_876_p2;
    sc_signal< sc_lv<9> > p_shl8_i_fu_886_p3;
    sc_signal< sc_lv<11> > x_weight_2_0_2_cast_i_fu_882_p1;
    sc_signal< sc_lv<11> > p_shl8_cast_i_fu_894_p1;
    sc_signal< sc_lv<9> > tmp_21_1_2_i_fu_904_p3;
    sc_signal< sc_lv<11> > tmp_21_1_2_cast_i_fu_912_p1;
    sc_signal< sc_lv<11> > x_weight_2_1_1_i_fu_898_p2;
    sc_signal< sc_lv<9> > tmp13_fu_922_p2;
    sc_signal< sc_lv<10> > tmp_23_0_1_cast_i_fu_868_p1;
    sc_signal< sc_lv<10> > tmp69_cast_fu_928_p1;
    sc_signal< sc_lv<10> > y_weight_2_1_2_i_fu_932_p2;
    sc_signal< sc_lv<11> > y_weight_2_1_2_cast_i_fu_938_p1;
    sc_signal< sc_lv<9> > p_shl_i3_fu_983_p3;
    sc_signal< sc_lv<11> > p_shl_cast_i3_fu_990_p1;
    sc_signal< sc_lv<11> > tmp_19_2_2_cast_i_fu_999_p1;
    sc_signal< sc_lv<11> > x_weight_2_2_i_fu_979_p2;
    sc_signal< sc_lv<11> > y_weight_2_2_1_i_fu_994_p2;
    sc_signal< sc_lv<11> > x_weight_2_2_2_i_fu_1003_p2;
    sc_signal< sc_lv<11> > y_weight_2_2_2_i_fu_1009_p2;
    sc_signal< sc_lv<8> > tmp_23_fu_1051_p3;
    sc_signal< sc_lv<8> > tmp_26_fu_1056_p3;
    sc_signal< sc_lv<1> > not_tmp_7_i_fu_1090_p2;
    sc_signal< sc_lv<1> > tmp_27_fu_1103_p2;
    sc_signal< sc_lv<8> > p_i_cast_fu_1095_p3;
    sc_signal< sc_lv<8> > edge_val_fu_1085_p2;
    sc_signal< sc_lv<9> > B_cast_i_fu_1115_p4;
    sc_signal< sc_lv<9> > R_3_fu_1124_p2;
    sc_signal< sc_lv<1> > tmp_30_fu_1145_p3;
    sc_signal< sc_lv<8> > tmp_31_fu_1153_p1;
    sc_signal< sc_lv<9> > G_3_fu_1130_p2;
    sc_signal< sc_lv<1> > tmp_32_fu_1165_p3;
    sc_signal< sc_lv<8> > tmp_33_fu_1173_p1;
    sc_signal< sc_lv<8> > grp_fu_1203_p0;
    sc_signal< sc_lv<6> > grp_fu_1203_p1;
    sc_signal< sc_lv<8> > grp_fu_1203_p2;
    sc_signal< sc_lv<8> > grp_fu_1211_p0;
    sc_signal< sc_lv<6> > grp_fu_1211_p1;
    sc_signal< sc_lv<8> > grp_fu_1211_p2;
    sc_signal< sc_lv<8> > grp_fu_1220_p0;
    sc_signal< sc_lv<6> > grp_fu_1220_p1;
    sc_signal< sc_lv<8> > grp_fu_1220_p2;
    sc_signal< sc_lv<8> > grp_fu_1229_p0;
    sc_signal< sc_lv<9> > grp_fu_1229_p1;
    sc_signal< sc_lv<12> > grp_fu_1229_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_lv<13> > grp_fu_1203_p00;
    sc_signal< sc_lv<13> > grp_fu_1203_p20;
    sc_signal< sc_lv<13> > grp_fu_1211_p00;
    sc_signal< sc_lv<13> > grp_fu_1211_p20;
    sc_signal< sc_lv<13> > grp_fu_1220_p00;
    sc_signal< sc_lv<13> > grp_fu_1220_p20;
    sc_signal< sc_lv<10> > grp_fu_1229_p00;
    sc_signal< sc_lv<10> > grp_fu_1229_p10;
    sc_signal< bool > ap_sig_bdd_416;
    sc_signal< bool > ap_sig_bdd_405;
    sc_signal< bool > ap_sig_bdd_309;
    sc_signal< bool > ap_sig_bdd_397;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<4> ap_ST_st12_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<11> ap_const_lv11_7FF;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<12> ap_const_lv12_FFF;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<10> ap_const_lv10_80;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_37;
    static const sc_lv<8> ap_const_lv8_CD;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<9> ap_const_lv9_3C;
    static const sc_lv<9> ap_const_lv9_22;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<13> ap_const_lv13_19;
    static const sc_lv<22> ap_const_lv22_556;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_B_cast_i_fu_1115_p4();
    void thread_G_3_fu_1130_p2();
    void thread_R_3_fu_1124_p2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_phiprechg_edge_val1_reg_352pp0_it1();
    void thread_ap_sig_bdd_107();
    void thread_ap_sig_bdd_124();
    void thread_ap_sig_bdd_152();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_309();
    void thread_ap_sig_bdd_390();
    void thread_ap_sig_bdd_397();
    void thread_ap_sig_bdd_405();
    void thread_ap_sig_bdd_416();
    void thread_ap_sig_bdd_65();
    void thread_ap_sig_bdd_85();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st12_fsm_3();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_col_1_fu_459_p2();
    void thread_col_cast_fu_465_p1();
    void thread_edge_val_1_fu_1107_p3();
    void thread_edge_val_fu_1085_p2();
    void thread_edge_weight_i_fu_1061_p2();
    void thread_exitcond1_fu_415_p2();
    void thread_exitcond_fu_454_p2();
    void thread_grp_fu_1203_p0();
    void thread_grp_fu_1203_p00();
    void thread_grp_fu_1203_p1();
    void thread_grp_fu_1203_p2();
    void thread_grp_fu_1203_p20();
    void thread_grp_fu_1211_p0();
    void thread_grp_fu_1211_p00();
    void thread_grp_fu_1211_p1();
    void thread_grp_fu_1211_p2();
    void thread_grp_fu_1211_p20();
    void thread_grp_fu_1220_p0();
    void thread_grp_fu_1220_p00();
    void thread_grp_fu_1220_p1();
    void thread_grp_fu_1220_p2();
    void thread_grp_fu_1220_p20();
    void thread_grp_fu_1229_p0();
    void thread_grp_fu_1229_p00();
    void thread_grp_fu_1229_p1();
    void thread_grp_fu_1229_p10();
    void thread_grp_fu_1229_p2();
    void thread_img_0_data_stream_0_V_read();
    void thread_img_0_data_stream_1_V_read();
    void thread_img_0_data_stream_2_V_read();
    void thread_img_1_data_stream_0_V_din();
    void thread_img_1_data_stream_0_V_write();
    void thread_img_1_data_stream_1_V_din();
    void thread_img_1_data_stream_1_V_write();
    void thread_img_1_data_stream_2_V_din();
    void thread_img_1_data_stream_2_V_write();
    void thread_line_buffer_0_0_val_address0();
    void thread_line_buffer_0_0_val_address1();
    void thread_line_buffer_0_0_val_ce0();
    void thread_line_buffer_0_0_val_ce1();
    void thread_line_buffer_0_0_val_d1();
    void thread_line_buffer_0_0_val_we1();
    void thread_line_buffer_0_1_val_address0();
    void thread_line_buffer_0_1_val_address1();
    void thread_line_buffer_0_1_val_ce0();
    void thread_line_buffer_0_1_val_ce1();
    void thread_line_buffer_0_1_val_d1();
    void thread_line_buffer_0_1_val_we1();
    void thread_line_buffer_0_2_val_address0();
    void thread_line_buffer_0_2_val_address1();
    void thread_line_buffer_0_2_val_ce0();
    void thread_line_buffer_0_2_val_ce1();
    void thread_line_buffer_0_2_val_d1();
    void thread_line_buffer_0_2_val_we1();
    void thread_line_buffer_1_0_val_address0();
    void thread_line_buffer_1_0_val_address1();
    void thread_line_buffer_1_0_val_ce0();
    void thread_line_buffer_1_0_val_ce1();
    void thread_line_buffer_1_0_val_d1();
    void thread_line_buffer_1_0_val_we1();
    void thread_line_buffer_1_1_val_address0();
    void thread_line_buffer_1_1_val_address1();
    void thread_line_buffer_1_1_val_ce0();
    void thread_line_buffer_1_1_val_ce1();
    void thread_line_buffer_1_1_val_d1();
    void thread_line_buffer_1_1_val_we1();
    void thread_line_buffer_1_2_val_address0();
    void thread_line_buffer_1_2_val_address1();
    void thread_line_buffer_1_2_val_ce0();
    void thread_line_buffer_1_2_val_ce1();
    void thread_line_buffer_1_2_val_d1();
    void thread_line_buffer_1_2_val_we1();
    void thread_not_tmp_7_i_fu_1090_p2();
    void thread_or_cond2_fu_522_p2();
    void thread_or_cond3_fu_560_p2();
    void thread_or_cond_fu_474_p2();
    void thread_output_col_fu_489_p2();
    void thread_output_row_fu_431_p2();
    void thread_p_i_cast_fu_1095_p3();
    void thread_p_shl1_cast_i1_fu_667_p1();
    void thread_p_shl1_cast_i5_fu_722_p1();
    void thread_p_shl1_cast_i_fu_583_p1();
    void thread_p_shl1_i1_fu_659_p3();
    void thread_p_shl1_i4_fu_715_p3();
    void thread_p_shl1_i_fu_576_p3();
    void thread_p_shl2_cast_i29_cast_fu_679_p1();
    void thread_p_shl2_cast_i7_cast_fu_649_p1();
    void thread_p_shl2_cast_i_cast_fu_550_p1();
    void thread_p_shl2_i1_fu_671_p3();
    void thread_p_shl2_i6_fu_642_p3();
    void thread_p_shl2_i_fu_542_p3();
    void thread_p_shl8_cast_i_fu_894_p1();
    void thread_p_shl8_i_fu_886_p3();
    void thread_p_shl_cast_i1_fu_736_p1();
    void thread_p_shl_cast_i2_fu_788_p1();
    void thread_p_shl_cast_i3_fu_990_p1();
    void thread_p_shl_cast_i_fu_597_p1();
    void thread_p_shl_i1_fu_729_p3();
    void thread_p_shl_i2_fu_781_p3();
    void thread_p_shl_i3_fu_983_p3();
    void thread_p_shl_i_fu_590_p3();
    void thread_row_1_fu_420_p2();
    void thread_row_cast_fu_411_p1();
    void thread_sepia_val_1_fu_1177_p3();
    void thread_sepia_val_2_fu_1157_p3();
    void thread_tmp11_fu_506_p2();
    void thread_tmp12_fu_511_p2();
    void thread_tmp13_fu_922_p2();
    void thread_tmp2_fu_617_p2();
    void thread_tmp4_fu_653_p2();
    void thread_tmp58_cast_fu_604_p1();
    void thread_tmp5_fu_756_p2();
    void thread_tmp60_cast_fu_623_p1();
    void thread_tmp61_cast_fu_743_p1();
    void thread_tmp63_cast_fu_762_p1();
    void thread_tmp64_cast_fu_697_p1();
    void thread_tmp66_cast_fu_801_p1();
    void thread_tmp69_cast_fu_928_p1();
    void thread_tmp7_fu_691_p2();
    void thread_tmp8_fu_795_p2();
    void thread_tmp9_fu_554_p2();
    void thread_tmp_10_cast_fu_373_p1();
    void thread_tmp_10_fu_437_p2();
    void thread_tmp_11_cast_fu_387_p1();
    void thread_tmp_11_fu_443_p2();
    void thread_tmp_12_fu_449_p2();
    void thread_tmp_14_fu_469_p2();
    void thread_tmp_16_fu_479_p1();
    void thread_tmp_17_fu_495_p2();
    void thread_tmp_18_fu_501_p2();
    void thread_tmp_19_0_2_cast1_i_cast_fu_872_p1();
    void thread_tmp_19_0_cast2_i_cast_fu_857_p1();
    void thread_tmp_19_2_2_cast_i_fu_999_p1();
    void thread_tmp_19_2_cast_i_fu_942_p1();
    void thread_tmp_19_fu_516_p2();
    void thread_tmp_1_fu_363_p1();
    void thread_tmp_21_1_2_cast_i_fu_912_p1();
    void thread_tmp_21_1_2_i_fu_904_p3();
    void thread_tmp_21_fu_403_p1();
    void thread_tmp_22_fu_1025_p2();
    void thread_tmp_23_0_1_cast_i_fu_868_p1();
    void thread_tmp_23_0_1_i_fu_860_p3();
    void thread_tmp_23_fu_1051_p3();
    void thread_tmp_24_fu_407_p1();
    void thread_tmp_25_fu_1041_p2();
    void thread_tmp_26_fu_1056_p3();
    void thread_tmp_27_fu_1103_p2();
    void thread_tmp_28_fu_1021_p1();
    void thread_tmp_29_fu_1037_p1();
    void thread_tmp_2_fu_377_p1();
    void thread_tmp_2_i3_fu_832_p2();
    void thread_tmp_30_fu_1145_p3();
    void thread_tmp_31_fu_1153_p1();
    void thread_tmp_32_fu_1165_p3();
    void thread_tmp_33_fu_1173_p1();
    void thread_tmp_4_i_fu_1031_p2();
    void thread_tmp_6_cast_i1_fu_752_p1();
    void thread_tmp_6_cast_i2_fu_792_p1();
    void thread_tmp_6_cast_i_fu_613_p1();
    void thread_tmp_6_fu_381_p2();
    void thread_tmp_6_i1_fu_746_p2();
    void thread_tmp_6_i2_fu_701_p2();
    void thread_tmp_6_i_fu_607_p2();
    void thread_tmp_7_fu_391_p2();
    void thread_tmp_7_i_fu_1067_p2();
    void thread_tmp_8_fu_397_p2();
    void thread_tmp_8_i1_fu_765_p2();
    void thread_tmp_8_i2_fu_804_p2();
    void thread_tmp_8_i3_fu_1073_p2();
    void thread_tmp_8_i_fu_626_p2();
    void thread_tmp_9_fu_426_p2();
    void thread_tmp_cast_i2_fu_826_p1();
    void thread_tmp_cast_i_fu_829_p1();
    void thread_tmp_i2_fu_810_p4();
    void thread_tmp_i_29_fu_1015_p2();
    void thread_tmp_s_fu_367_p2();
    void thread_x_weight_2_0_2_cast_i_fu_882_p1();
    void thread_x_weight_2_0_2_i_fu_876_p2();
    void thread_x_weight_2_1_1_i_fu_898_p2();
    void thread_x_weight_2_1_2_i_fu_916_p2();
    void thread_x_weight_2_2_2_i_fu_1003_p2();
    void thread_x_weight_2_2_i_fu_979_p2();
    void thread_y_1_fu_843_p2();
    void thread_y_2_fu_820_p2();
    void thread_y_fu_710_p2();
    void thread_y_weight_2_1_2_cast_i_fu_938_p1();
    void thread_y_weight_2_1_2_i_fu_932_p2();
    void thread_y_weight_2_2_1_i_fu_994_p2();
    void thread_y_weight_2_2_2_i_fu_1009_p2();
    void thread_y_weight_2_2_i_fu_945_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif