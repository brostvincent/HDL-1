// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "image_filter_Duplicate_1080_1920_32_32_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic image_filter_Duplicate_1080_1920_32_32_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic image_filter_Duplicate_1080_1920_32_32_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> image_filter_Duplicate_1080_1920_32_32_s::ap_ST_st1_fsm_0 = "1";
const sc_lv<4> image_filter_Duplicate_1080_1920_32_32_s::ap_ST_st2_fsm_1 = "10";
const sc_lv<4> image_filter_Duplicate_1080_1920_32_32_s::ap_ST_pp0_stg0_fsm_2 = "100";
const sc_lv<4> image_filter_Duplicate_1080_1920_32_32_s::ap_ST_st5_fsm_3 = "1000";
const sc_lv<32> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv1_1 = "1";
const sc_lv<32> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv32_1 = "1";
const sc_lv<32> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv32_2 = "10";
const sc_lv<1> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv1_0 = "0";
const sc_lv<11> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv11_0 = "00000000000";
const sc_lv<32> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv32_3 = "11";
const sc_lv<11> image_filter_Duplicate_1080_1920_32_32_s::ap_const_lv11_1 = "1";

image_filter_Duplicate_1080_1920_32_32_s::image_filter_Duplicate_1080_1920_32_32_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( exitcond3_i_fu_174_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( exitcond3_i_fu_174_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_sig_bdd_108);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_140);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( dst1_data_stream_0_V_full_n );
    sensitive << ( dst1_data_stream_1_V_full_n );
    sensitive << ( dst1_data_stream_2_V_full_n );
    sensitive << ( dst2_data_stream_0_V_full_n );
    sensitive << ( dst2_data_stream_1_V_full_n );
    sensitive << ( dst2_data_stream_2_V_full_n );
    sensitive << ( exitcond_i_reg_219 );

    SC_METHOD(thread_ap_sig_bdd_165);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_85);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( src_rows_V_empty_n );
    sensitive << ( src_cols_V_empty_n );

    SC_METHOD(thread_ap_sig_bdd_97);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_2);
    sensitive << ( ap_sig_bdd_108 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_97 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_3);
    sensitive << ( ap_sig_bdd_165 );

    SC_METHOD(thread_dst1_data_stream_0_V_din);
    sensitive << ( src_data_stream_0_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_0_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_1_V_din);
    sensitive << ( src_data_stream_1_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_1_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_2_V_din);
    sensitive << ( src_data_stream_2_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst1_data_stream_2_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_0_V_din);
    sensitive << ( src_data_stream_0_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_0_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_1_V_din);
    sensitive << ( src_data_stream_1_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_1_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_2_V_din);
    sensitive << ( src_data_stream_2_V_dout );
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_dst2_data_stream_2_V_write);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond3_i_fu_174_p2);
    sensitive << ( rows_V_reg_200 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( p_cast_i_fu_170_p1 );

    SC_METHOD(thread_exitcond_i_fu_189_p2);
    sensitive << ( cols_V_reg_205 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( p_3_cast_i_fu_185_p1 );

    SC_METHOD(thread_i_V_fu_179_p2);
    sensitive << ( p_i_reg_148 );

    SC_METHOD(thread_j_V_fu_194_p2);
    sensitive << ( p_3_i_reg_159 );

    SC_METHOD(thread_p_3_cast_i_fu_185_p1);
    sensitive << ( p_3_i_reg_159 );

    SC_METHOD(thread_p_cast_i_fu_170_p1);
    sensitive << ( p_i_reg_148 );

    SC_METHOD(thread_src_cols_V_read);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_85 );

    SC_METHOD(thread_src_data_stream_0_V_read);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_src_data_stream_1_V_read);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_src_data_stream_2_V_read);
    sensitive << ( exitcond_i_reg_219 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_src_rows_V_read);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_85 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_85 );
    sensitive << ( exitcond3_i_fu_174_p2 );
    sensitive << ( exitcond_i_fu_189_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_140 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "image_filter_Duplicate_1080_1920_32_32_s_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, src_rows_V_dout, "(port)src_rows_V_dout");
    sc_trace(mVcdFile, src_rows_V_empty_n, "(port)src_rows_V_empty_n");
    sc_trace(mVcdFile, src_rows_V_read, "(port)src_rows_V_read");
    sc_trace(mVcdFile, src_cols_V_dout, "(port)src_cols_V_dout");
    sc_trace(mVcdFile, src_cols_V_empty_n, "(port)src_cols_V_empty_n");
    sc_trace(mVcdFile, src_cols_V_read, "(port)src_cols_V_read");
    sc_trace(mVcdFile, src_data_stream_0_V_dout, "(port)src_data_stream_0_V_dout");
    sc_trace(mVcdFile, src_data_stream_0_V_empty_n, "(port)src_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_0_V_read, "(port)src_data_stream_0_V_read");
    sc_trace(mVcdFile, src_data_stream_1_V_dout, "(port)src_data_stream_1_V_dout");
    sc_trace(mVcdFile, src_data_stream_1_V_empty_n, "(port)src_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_1_V_read, "(port)src_data_stream_1_V_read");
    sc_trace(mVcdFile, src_data_stream_2_V_dout, "(port)src_data_stream_2_V_dout");
    sc_trace(mVcdFile, src_data_stream_2_V_empty_n, "(port)src_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_2_V_read, "(port)src_data_stream_2_V_read");
    sc_trace(mVcdFile, dst1_data_stream_0_V_din, "(port)dst1_data_stream_0_V_din");
    sc_trace(mVcdFile, dst1_data_stream_0_V_full_n, "(port)dst1_data_stream_0_V_full_n");
    sc_trace(mVcdFile, dst1_data_stream_0_V_write, "(port)dst1_data_stream_0_V_write");
    sc_trace(mVcdFile, dst1_data_stream_1_V_din, "(port)dst1_data_stream_1_V_din");
    sc_trace(mVcdFile, dst1_data_stream_1_V_full_n, "(port)dst1_data_stream_1_V_full_n");
    sc_trace(mVcdFile, dst1_data_stream_1_V_write, "(port)dst1_data_stream_1_V_write");
    sc_trace(mVcdFile, dst1_data_stream_2_V_din, "(port)dst1_data_stream_2_V_din");
    sc_trace(mVcdFile, dst1_data_stream_2_V_full_n, "(port)dst1_data_stream_2_V_full_n");
    sc_trace(mVcdFile, dst1_data_stream_2_V_write, "(port)dst1_data_stream_2_V_write");
    sc_trace(mVcdFile, dst2_data_stream_0_V_din, "(port)dst2_data_stream_0_V_din");
    sc_trace(mVcdFile, dst2_data_stream_0_V_full_n, "(port)dst2_data_stream_0_V_full_n");
    sc_trace(mVcdFile, dst2_data_stream_0_V_write, "(port)dst2_data_stream_0_V_write");
    sc_trace(mVcdFile, dst2_data_stream_1_V_din, "(port)dst2_data_stream_1_V_din");
    sc_trace(mVcdFile, dst2_data_stream_1_V_full_n, "(port)dst2_data_stream_1_V_full_n");
    sc_trace(mVcdFile, dst2_data_stream_1_V_write, "(port)dst2_data_stream_1_V_write");
    sc_trace(mVcdFile, dst2_data_stream_2_V_din, "(port)dst2_data_stream_2_V_din");
    sc_trace(mVcdFile, dst2_data_stream_2_V_full_n, "(port)dst2_data_stream_2_V_full_n");
    sc_trace(mVcdFile, dst2_data_stream_2_V_write, "(port)dst2_data_stream_2_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_23, "ap_sig_bdd_23");
    sc_trace(mVcdFile, p_3_i_reg_159, "p_3_i_reg_159");
    sc_trace(mVcdFile, rows_V_reg_200, "rows_V_reg_200");
    sc_trace(mVcdFile, ap_sig_bdd_85, "ap_sig_bdd_85");
    sc_trace(mVcdFile, cols_V_reg_205, "cols_V_reg_205");
    sc_trace(mVcdFile, exitcond3_i_fu_174_p2, "exitcond3_i_fu_174_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_97, "ap_sig_bdd_97");
    sc_trace(mVcdFile, i_V_fu_179_p2, "i_V_fu_179_p2");
    sc_trace(mVcdFile, i_V_reg_214, "i_V_reg_214");
    sc_trace(mVcdFile, exitcond_i_fu_189_p2, "exitcond_i_fu_189_p2");
    sc_trace(mVcdFile, exitcond_i_reg_219, "exitcond_i_reg_219");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_2, "ap_sig_cseq_ST_pp0_stg0_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_108, "ap_sig_bdd_108");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_sig_bdd_140, "ap_sig_bdd_140");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, j_V_fu_194_p2, "j_V_fu_194_p2");
    sc_trace(mVcdFile, p_i_reg_148, "p_i_reg_148");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_3, "ap_sig_cseq_ST_st5_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_165, "ap_sig_bdd_165");
    sc_trace(mVcdFile, p_cast_i_fu_170_p1, "p_cast_i_fu_170_p1");
    sc_trace(mVcdFile, p_3_cast_i_fu_185_p1, "p_3_cast_i_fu_185_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

image_filter_Duplicate_1080_1920_32_32_s::~image_filter_Duplicate_1080_1920_32_32_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_clk_no_reset_() {
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
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    !esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                     esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
                     !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     !esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
         esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0))) {
        p_3_i_reg_159 = j_V_fu_194_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0))) {
        p_3_i_reg_159 = ap_const_lv11_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read())) {
        p_i_reg_148 = i_V_reg_214.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_bdd_85.read())) {
        p_i_reg_148 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !ap_sig_bdd_85.read())) {
        cols_V_reg_205 = src_cols_V_dout.read();
        rows_V_reg_200 = src_rows_V_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        exitcond_i_reg_219 = exitcond_i_fu_189_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_V_reg_214 = i_V_fu_179_p2.read();
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_108() {
    ap_sig_bdd_108 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_140() {
    ap_sig_bdd_140 = ((esl_seteq<1,1,1>(src_data_stream_0_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(src_data_stream_1_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(src_data_stream_2_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst1_data_stream_0_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst1_data_stream_1_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst1_data_stream_2_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst2_data_stream_0_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst2_data_stream_1_V_full_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(dst2_data_stream_2_V_full_n.read(), ap_const_logic_0)));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_165() {
    ap_sig_bdd_165 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_85() {
    ap_sig_bdd_85 = (esl_seteq<1,1,1>(src_rows_V_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(src_cols_V_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_bdd_97() {
    ap_sig_bdd_97 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_cseq_ST_pp0_stg0_fsm_2() {
    if (ap_sig_bdd_108.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_97.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_sig_cseq_ST_st5_fsm_3() {
    if (ap_sig_bdd_165.read()) {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_0_V_din() {
    dst1_data_stream_0_V_din = src_data_stream_0_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_0_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst1_data_stream_0_V_write = ap_const_logic_1;
    } else {
        dst1_data_stream_0_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_1_V_din() {
    dst1_data_stream_1_V_din = src_data_stream_1_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_1_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst1_data_stream_1_V_write = ap_const_logic_1;
    } else {
        dst1_data_stream_1_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_2_V_din() {
    dst1_data_stream_2_V_din = src_data_stream_2_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst1_data_stream_2_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst1_data_stream_2_V_write = ap_const_logic_1;
    } else {
        dst1_data_stream_2_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_0_V_din() {
    dst2_data_stream_0_V_din = src_data_stream_0_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_0_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst2_data_stream_0_V_write = ap_const_logic_1;
    } else {
        dst2_data_stream_0_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_1_V_din() {
    dst2_data_stream_1_V_din = src_data_stream_1_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_1_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst2_data_stream_1_V_write = ap_const_logic_1;
    } else {
        dst2_data_stream_1_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_2_V_din() {
    dst2_data_stream_2_V_din = src_data_stream_2_V_dout.read();
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_dst2_data_stream_2_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        dst2_data_stream_2_V_write = ap_const_logic_1;
    } else {
        dst2_data_stream_2_V_write = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_exitcond3_i_fu_174_p2() {
    exitcond3_i_fu_174_p2 = (!p_cast_i_fu_170_p1.read().is_01() || !rows_V_reg_200.read().is_01())? sc_lv<1>(): sc_lv<1>(p_cast_i_fu_170_p1.read() == rows_V_reg_200.read());
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_exitcond_i_fu_189_p2() {
    exitcond_i_fu_189_p2 = (!p_3_cast_i_fu_185_p1.read().is_01() || !cols_V_reg_205.read().is_01())? sc_lv<1>(): sc_lv<1>(p_3_cast_i_fu_185_p1.read() == cols_V_reg_205.read());
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_i_V_fu_179_p2() {
    i_V_fu_179_p2 = (!p_i_reg_148.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_i_reg_148.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_j_V_fu_194_p2() {
    j_V_fu_194_p2 = (!p_3_i_reg_159.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_3_i_reg_159.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_p_3_cast_i_fu_185_p1() {
    p_3_cast_i_fu_185_p1 = esl_zext<12,11>(p_3_i_reg_159.read());
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_p_cast_i_fu_170_p1() {
    p_cast_i_fu_170_p1 = esl_zext<12,11>(p_i_reg_148.read());
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_src_cols_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_85.read())) {
        src_cols_V_read = ap_const_logic_1;
    } else {
        src_cols_V_read = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_src_data_stream_0_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_0_V_read = ap_const_logic_1;
    } else {
        src_data_stream_0_V_read = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_src_data_stream_1_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_1_V_read = ap_const_logic_1;
    } else {
        src_data_stream_1_V_read = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_src_data_stream_2_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_219.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        src_data_stream_2_V_read = ap_const_logic_1;
    } else {
        src_data_stream_2_V_read = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_src_rows_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_85.read())) {
        src_rows_V_read = ap_const_logic_1;
    } else {
        src_rows_V_read = ap_const_logic_0;
    }
}

void image_filter_Duplicate_1080_1920_32_32_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_85.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond3_i_fu_174_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !(ap_sig_bdd_140.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond_i_fu_189_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st5_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

