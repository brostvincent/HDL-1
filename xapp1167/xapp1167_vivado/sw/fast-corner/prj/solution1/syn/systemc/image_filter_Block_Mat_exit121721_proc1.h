// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_Block_Mat_exit121721_proc1_HH_
#define _image_filter_Block_Mat_exit121721_proc1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct image_filter_Block_Mat_exit121721_proc1 : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<12> > p_src_rows_V_2_reload_dout;
    sc_in< sc_logic > p_src_rows_V_2_reload_empty_n;
    sc_out< sc_logic > p_src_rows_V_2_reload_read;
    sc_in< sc_lv<12> > p_src_cols_V_2_reload_dout;
    sc_in< sc_logic > p_src_cols_V_2_reload_empty_n;
    sc_out< sc_logic > p_src_cols_V_2_reload_read;
    sc_out< sc_lv<12> > ap_return_0;
    sc_out< sc_lv<12> > ap_return_1;


    // Module declarations
    image_filter_Block_Mat_exit121721_proc1(sc_module_name name);
    SC_HAS_PROCESS(image_filter_Block_Mat_exit121721_proc1);

    ~image_filter_Block_Mat_exit121721_proc1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_20;
    sc_signal< bool > ap_sig_bdd_46;
    sc_signal< sc_lv<12> > ap_return_0_preg;
    sc_signal< sc_lv<12> > ap_return_1_preg;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<12> ap_const_lv12_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_sig_bdd_20();
    void thread_ap_sig_bdd_46();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_p_src_cols_V_2_reload_read();
    void thread_p_src_rows_V_2_reload_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
