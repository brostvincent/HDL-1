// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_arithm_pro_HH_
#define _image_filter_arithm_pro_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct image_filter_arithm_pro : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > src_data_stream_0_V_dout;
    sc_in< sc_logic > src_data_stream_0_V_empty_n;
    sc_out< sc_logic > src_data_stream_0_V_read;
    sc_in< sc_lv<8> > src_data_stream_1_V_dout;
    sc_in< sc_logic > src_data_stream_1_V_empty_n;
    sc_out< sc_logic > src_data_stream_1_V_read;
    sc_in< sc_lv<8> > src_data_stream_2_V_dout;
    sc_in< sc_logic > src_data_stream_2_V_empty_n;
    sc_out< sc_logic > src_data_stream_2_V_read;
    sc_in< sc_lv<12> > dst_rows_V_read;
    sc_in< sc_lv<12> > dst_cols_V_read;
    sc_out< sc_lv<8> > dst_data_stream_0_V_din;
    sc_in< sc_logic > dst_data_stream_0_V_full_n;
    sc_out< sc_logic > dst_data_stream_0_V_write;
    sc_out< sc_lv<8> > dst_data_stream_1_V_din;
    sc_in< sc_logic > dst_data_stream_1_V_full_n;
    sc_out< sc_logic > dst_data_stream_1_V_write;
    sc_out< sc_lv<8> > dst_data_stream_2_V_din;
    sc_in< sc_logic > dst_data_stream_2_V_full_n;
    sc_out< sc_logic > dst_data_stream_2_V_write;


    // Module declarations
    image_filter_arithm_pro(sc_module_name name);
    SC_HAS_PROCESS(image_filter_arithm_pro);

    ~image_filter_arithm_pro();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<11> > p_5_reg_134;
    sc_signal< sc_lv<1> > exitcond5_fu_149_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_69;
    sc_signal< sc_lv<11> > i_V_fu_154_p2;
    sc_signal< sc_lv<11> > i_V_reg_255;
    sc_signal< sc_lv<1> > exitcond6_fu_164_p2;
    sc_signal< sc_lv<1> > exitcond6_reg_260;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_80;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_94;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond6_reg_260_pp0_it1;
    sc_signal< bool > ap_sig_bdd_108;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<11> > j_V_fu_169_p2;
    sc_signal< sc_lv<8> > p_Val2_6_fu_189_p3;
    sc_signal< sc_lv<8> > p_Val2_6_reg_269;
    sc_signal< sc_lv<8> > p_Val2_7_fu_211_p3;
    sc_signal< sc_lv<8> > p_Val2_7_reg_274;
    sc_signal< sc_lv<8> > p_Val2_8_fu_233_p3;
    sc_signal< sc_lv<8> > p_Val2_8_reg_279;
    sc_signal< sc_lv<11> > p_s_reg_123;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_3;
    sc_signal< bool > ap_sig_bdd_142;
    sc_signal< sc_lv<12> > p_cast_fu_145_p1;
    sc_signal< sc_lv<12> > p_5_cast_fu_160_p1;
    sc_signal< sc_lv<1> > overflow_fu_181_p3;
    sc_signal< sc_lv<8> > p_Val2_s_fu_175_p2;
    sc_signal< sc_lv<1> > overflow_1_fu_203_p3;
    sc_signal< sc_lv<8> > p_Val2_2_fu_197_p2;
    sc_signal< sc_lv<1> > overflow_2_fu_225_p3;
    sc_signal< sc_lv<8> > p_Val2_4_fu_219_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<4> ap_ST_st6_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_FF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_108();
    void thread_ap_sig_bdd_142();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_69();
    void thread_ap_sig_bdd_80();
    void thread_ap_sig_bdd_94();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st6_fsm_3();
    void thread_dst_data_stream_0_V_din();
    void thread_dst_data_stream_0_V_write();
    void thread_dst_data_stream_1_V_din();
    void thread_dst_data_stream_1_V_write();
    void thread_dst_data_stream_2_V_din();
    void thread_dst_data_stream_2_V_write();
    void thread_exitcond5_fu_149_p2();
    void thread_exitcond6_fu_164_p2();
    void thread_i_V_fu_154_p2();
    void thread_j_V_fu_169_p2();
    void thread_overflow_1_fu_203_p3();
    void thread_overflow_2_fu_225_p3();
    void thread_overflow_fu_181_p3();
    void thread_p_5_cast_fu_160_p1();
    void thread_p_Val2_2_fu_197_p2();
    void thread_p_Val2_4_fu_219_p2();
    void thread_p_Val2_6_fu_189_p3();
    void thread_p_Val2_7_fu_211_p3();
    void thread_p_Val2_8_fu_233_p3();
    void thread_p_Val2_s_fu_175_p2();
    void thread_p_cast_fu_145_p1();
    void thread_src_data_stream_0_V_read();
    void thread_src_data_stream_1_V_read();
    void thread_src_data_stream_2_V_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif