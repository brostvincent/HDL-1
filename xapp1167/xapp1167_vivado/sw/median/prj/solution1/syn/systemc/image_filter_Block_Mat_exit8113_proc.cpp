// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "image_filter_Block_Mat_exit8113_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic image_filter_Block_Mat_exit8113_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic image_filter_Block_Mat_exit8113_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> image_filter_Block_Mat_exit8113_proc::ap_ST_st1_fsm_0 = "1";
const sc_lv<32> image_filter_Block_Mat_exit8113_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> image_filter_Block_Mat_exit8113_proc::ap_const_lv1_1 = "1";
const sc_lv<12> image_filter_Block_Mat_exit8113_proc::ap_const_lv12_0 = "000000000000";

image_filter_Block_Mat_exit8113_proc::image_filter_Block_Mat_exit8113_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );
    sensitive << ( img_0_rows_V_fu_30_p1 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );
    sensitive << ( img_0_cols_V_fu_34_p1 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );
    sensitive << ( img_0_rows_V_fu_30_p1 );
    sensitive << ( ap_return_2_preg );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_38 );
    sensitive << ( img_0_cols_V_fu_34_p1 );
    sensitive << ( ap_return_3_preg );

    SC_METHOD(thread_ap_sig_bdd_20);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_38);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_20 );

    SC_METHOD(thread_img_0_cols_V_fu_34_p1);
    sensitive << ( cols );

    SC_METHOD(thread_img_0_rows_V_fu_30_p1);
    sensitive << ( rows );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_38 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "1";
    ap_return_0_preg = "000000000000";
    ap_return_1_preg = "000000000000";
    ap_return_2_preg = "000000000000";
    ap_return_3_preg = "000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "image_filter_Block_Mat_exit8113_proc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, rows, "(port)rows");
    sc_trace(mVcdFile, cols, "(port)cols");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_20, "ap_sig_bdd_20");
    sc_trace(mVcdFile, ap_sig_bdd_38, "ap_sig_bdd_38");
    sc_trace(mVcdFile, img_0_rows_V_fu_30_p1, "img_0_rows_V_fu_30_p1");
    sc_trace(mVcdFile, img_0_cols_V_fu_34_p1, "img_0_cols_V_fu_34_p1");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_return_2_preg, "ap_return_2_preg");
    sc_trace(mVcdFile, ap_return_3_preg, "ap_return_3_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

image_filter_Block_Mat_exit8113_proc::~image_filter_Block_Mat_exit8113_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void image_filter_Block_Mat_exit8113_proc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !ap_sig_bdd_38.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !ap_sig_bdd_38.read())) {
            ap_return_0_preg = img_0_rows_V_fu_30_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !ap_sig_bdd_38.read())) {
            ap_return_1_preg = img_0_cols_V_fu_34_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_2_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !ap_sig_bdd_38.read())) {
            ap_return_2_preg = img_0_rows_V_fu_30_p1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_3_preg = ap_const_lv12_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !ap_sig_bdd_38.read())) {
            ap_return_3_preg = img_0_cols_V_fu_34_p1.read();
        }
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !ap_sig_bdd_38.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_38.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_return_0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_38.read())) {
        ap_return_0 = img_0_rows_V_fu_30_p1.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_return_1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_38.read())) {
        ap_return_1 = img_0_cols_V_fu_34_p1.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_return_2() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_38.read())) {
        ap_return_2 = img_0_rows_V_fu_30_p1.read();
    } else {
        ap_return_2 = ap_return_2_preg.read();
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_return_3() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_38.read())) {
        ap_return_3 = img_0_cols_V_fu_34_p1.read();
    } else {
        ap_return_3 = ap_return_3_preg.read();
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_sig_bdd_20() {
    ap_sig_bdd_20 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_sig_bdd_38() {
    ap_sig_bdd_38 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_20.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void image_filter_Block_Mat_exit8113_proc::thread_img_0_cols_V_fu_34_p1() {
    img_0_cols_V_fu_34_p1 = cols.read().range(12-1, 0);
}

void image_filter_Block_Mat_exit8113_proc::thread_img_0_rows_V_fu_30_p1() {
    img_0_rows_V_fu_30_p1 = rows.read().range(12-1, 0);
}

void image_filter_Block_Mat_exit8113_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}

