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

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<12> > col_reg_148;
    sc_signal< sc_lv<12> > tmp_3_fu_159_p1;
    sc_signal< bool > ap_sig_bdd_63;
    sc_signal< sc_lv<12> > tmp_11_fu_163_p1;
    sc_signal< sc_lv<1> > exitcond1_fu_171_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_75;
    sc_signal< sc_lv<11> > row_1_fu_176_p2;
    sc_signal< sc_lv<11> > row_1_reg_264;
    sc_signal< sc_lv<1> > exitcond_fu_182_p2;
    sc_signal< sc_lv<1> > exitcond_reg_269;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_86;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_109;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<12> > col_1_fu_187_p2;
    sc_signal< sc_lv<11> > row_reg_137;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_3;
    sc_signal< bool > ap_sig_bdd_133;
    sc_signal< sc_lv<12> > row_cast_fu_167_p1;
    sc_signal< sc_lv<3> > tmp_8_fu_193_p4;
    sc_signal< sc_lv<3> > tmp_9_fu_212_p4;
    sc_signal< sc_lv<3> > tmp_s_fu_231_p4;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<4> ap_ST_st5_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_109();
    void thread_ap_sig_bdd_133();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_63();
    void thread_ap_sig_bdd_75();
    void thread_ap_sig_bdd_86();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st5_fsm_3();
    void thread_col_1_fu_187_p2();
    void thread_exitcond1_fu_171_p2();
    void thread_exitcond_fu_182_p2();
    void thread_img_0_data_stream_0_V_read();
    void thread_img_0_data_stream_1_V_read();
    void thread_img_0_data_stream_2_V_read();
    void thread_img_1_data_stream_0_V_din();
    void thread_img_1_data_stream_0_V_write();
    void thread_img_1_data_stream_1_V_din();
    void thread_img_1_data_stream_1_V_write();
    void thread_img_1_data_stream_2_V_din();
    void thread_img_1_data_stream_2_V_write();
    void thread_row_1_fu_176_p2();
    void thread_row_cast_fu_167_p1();
    void thread_tmp_11_fu_163_p1();
    void thread_tmp_3_fu_159_p1();
    void thread_tmp_8_fu_193_p4();
    void thread_tmp_9_fu_212_p4();
    void thread_tmp_s_fu_231_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif