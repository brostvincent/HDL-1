// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "image_filter_AXIvideo2Mat.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic image_filter_AXIvideo2Mat::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic image_filter_AXIvideo2Mat::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st1_fsm_0 = "1";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st2_fsm_1 = "10";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st3_fsm_2 = "100";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st4_fsm_3 = "1000";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_pp1_stg0_fsm_4 = "10000";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st7_fsm_5 = "100000";
const sc_lv<7> image_filter_AXIvideo2Mat::ap_ST_st8_fsm_6 = "1000000";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> image_filter_AXIvideo2Mat::ap_const_lv1_1 = "1";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_1 = "1";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_3 = "11";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_4 = "100";
const sc_lv<1> image_filter_AXIvideo2Mat::ap_const_lv1_0 = "0";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_5 = "101";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_6 = "110";
const sc_lv<32> image_filter_AXIvideo2Mat::ap_const_lv32_2 = "10";
const sc_lv<11> image_filter_AXIvideo2Mat::ap_const_lv11_0 = "00000000000";
const sc_lv<11> image_filter_AXIvideo2Mat::ap_const_lv11_1 = "1";

image_filter_AXIvideo2Mat::image_filter_AXIvideo2Mat(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_AXI_video_strm_V_data_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_dest_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_id_V0_status);
    sensitive << ( AXI_video_strm_V_data_V_empty_n );
    sensitive << ( AXI_video_strm_V_keep_V_empty_n );
    sensitive << ( AXI_video_strm_V_strb_V_empty_n );
    sensitive << ( AXI_video_strm_V_user_V_empty_n );
    sensitive << ( AXI_video_strm_V_last_V_empty_n );
    sensitive << ( AXI_video_strm_V_id_V_empty_n );
    sensitive << ( AXI_video_strm_V_dest_V_empty_n );

    SC_METHOD(thread_AXI_video_strm_V_id_V0_update);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( AXI_video_strm_V_id_V0_status );
    sensitive << ( exitcond_i_reg_361 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( brmerge_i_fu_311_p2 );
    sensitive << ( ap_sig_bdd_135 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_5 );
    sensitive << ( ap_sig_bdd_156 );
    sensitive << ( eol_2_i_reg_257 );

    SC_METHOD(thread_AXI_video_strm_V_id_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_keep_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_last_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_strb_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_AXI_video_strm_V_user_V_read);
    sensitive << ( AXI_video_strm_V_id_V0_update );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( exitcond8_i_fu_286_p2 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( exitcond8_i_fu_286_p2 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1);

    SC_METHOD(thread_ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1);

    SC_METHOD(thread_ap_sig_bdd_111);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_122);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_135);
    sensitive << ( img_data_stream_V_full_n );
    sensitive << ( AXI_video_strm_V_id_V0_status );
    sensitive << ( exitcond_i_reg_361 );
    sensitive << ( brmerge_i_fu_311_p2 );

    SC_METHOD(thread_ap_sig_bdd_151);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_156);
    sensitive << ( AXI_video_strm_V_id_V0_status );
    sensitive << ( eol_2_i_reg_257 );

    SC_METHOD(thread_ap_sig_bdd_174);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_181);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_229);
    sensitive << ( exitcond_i_reg_361 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );

    SC_METHOD(thread_ap_sig_bdd_26);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_84);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_bdd_96);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_pp1_stg0_fsm_4);
    sensitive << ( ap_sig_bdd_122 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_26 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_96 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_181 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_bdd_111 );

    SC_METHOD(thread_ap_sig_cseq_ST_st7_fsm_5);
    sensitive << ( ap_sig_bdd_151 );

    SC_METHOD(thread_ap_sig_cseq_ST_st8_fsm_6);
    sensitive << ( ap_sig_bdd_174 );

    SC_METHOD(thread_axi_last_V_2_i_phi_fu_212_p4);
    sensitive << ( AXI_video_strm_V_last_V_dout );
    sensitive << ( eol_reg_173 );
    sensitive << ( brmerge_i_fu_311_p2 );
    sensitive << ( ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1 );
    sensitive << ( ap_sig_bdd_229 );

    SC_METHOD(thread_brmerge_i_fu_311_p2);
    sensitive << ( eol_i_reg_195 );
    sensitive << ( sof_1_i_fu_90 );

    SC_METHOD(thread_exitcond8_i_fu_286_p2);
    sensitive << ( rows );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( p_i_reg_151 );

    SC_METHOD(thread_exitcond_i_fu_297_p2);
    sensitive << ( cols );
    sensitive << ( p_4_i_reg_162 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( ap_reg_ppiten_pp1_it0 );
    sensitive << ( ap_sig_bdd_135 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );

    SC_METHOD(thread_i_V_fu_291_p2);
    sensitive << ( p_i_reg_151 );

    SC_METHOD(thread_img_data_stream_V_din);
    sensitive << ( exitcond_i_reg_361 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( ap_sig_bdd_135 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );
    sensitive << ( p_Val2_s_phi_fu_224_p4 );

    SC_METHOD(thread_img_data_stream_V_write);
    sensitive << ( exitcond_i_reg_361 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( ap_sig_bdd_135 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );

    SC_METHOD(thread_j_V_fu_302_p2);
    sensitive << ( p_4_i_reg_162 );

    SC_METHOD(thread_p_Val2_s_phi_fu_224_p4);
    sensitive << ( AXI_video_strm_V_data_V_dout );
    sensitive << ( axi_data_V_1_i_reg_184 );
    sensitive << ( brmerge_i_fu_311_p2 );
    sensitive << ( ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1 );
    sensitive << ( ap_sig_bdd_229 );

    SC_METHOD(thread_tmp_user_V_fu_277_p1);
    sensitive << ( AXI_video_strm_V_user_V_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_84 );
    sensitive << ( AXI_video_strm_V_id_V0_status );
    sensitive << ( exitcond8_i_fu_286_p2 );
    sensitive << ( ap_sig_cseq_ST_pp1_stg0_fsm_4 );
    sensitive << ( ap_reg_ppiten_pp1_it0 );
    sensitive << ( ap_sig_bdd_135 );
    sensitive << ( ap_reg_ppiten_pp1_it1 );
    sensitive << ( ap_sig_bdd_156 );
    sensitive << ( eol_2_i_reg_257 );
    sensitive << ( tmp_user_V_fu_277_p1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0000001";
    ap_reg_ppiten_pp1_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp1_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "image_filter_AXIvideo2Mat_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_dout, "(port)AXI_video_strm_V_data_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_empty_n, "(port)AXI_video_strm_V_data_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_data_V_read, "(port)AXI_video_strm_V_data_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_dout, "(port)AXI_video_strm_V_keep_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_empty_n, "(port)AXI_video_strm_V_keep_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_keep_V_read, "(port)AXI_video_strm_V_keep_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_dout, "(port)AXI_video_strm_V_strb_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_empty_n, "(port)AXI_video_strm_V_strb_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_strb_V_read, "(port)AXI_video_strm_V_strb_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_dout, "(port)AXI_video_strm_V_user_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_empty_n, "(port)AXI_video_strm_V_user_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_user_V_read, "(port)AXI_video_strm_V_user_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_dout, "(port)AXI_video_strm_V_last_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_empty_n, "(port)AXI_video_strm_V_last_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_last_V_read, "(port)AXI_video_strm_V_last_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_dout, "(port)AXI_video_strm_V_id_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_empty_n, "(port)AXI_video_strm_V_id_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V_read, "(port)AXI_video_strm_V_id_V_read");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_dout, "(port)AXI_video_strm_V_dest_V_dout");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_empty_n, "(port)AXI_video_strm_V_dest_V_empty_n");
    sc_trace(mVcdFile, AXI_video_strm_V_dest_V_read, "(port)AXI_video_strm_V_dest_V_read");
    sc_trace(mVcdFile, rows, "(port)rows");
    sc_trace(mVcdFile, cols, "(port)cols");
    sc_trace(mVcdFile, img_data_stream_V_din, "(port)img_data_stream_V_din");
    sc_trace(mVcdFile, img_data_stream_V_full_n, "(port)img_data_stream_V_full_n");
    sc_trace(mVcdFile, img_data_stream_V_write, "(port)img_data_stream_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_26, "ap_sig_bdd_26");
    sc_trace(mVcdFile, p_4_i_reg_162, "p_4_i_reg_162");
    sc_trace(mVcdFile, eol_reg_173, "eol_reg_173");
    sc_trace(mVcdFile, axi_data_V_1_i_reg_184, "axi_data_V_1_i_reg_184");
    sc_trace(mVcdFile, eol_i_reg_195, "eol_i_reg_195");
    sc_trace(mVcdFile, ap_sig_bdd_84, "ap_sig_bdd_84");
    sc_trace(mVcdFile, tmp_data_V_reg_332, "tmp_data_V_reg_332");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_96, "ap_sig_bdd_96");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V0_status, "AXI_video_strm_V_id_V0_status");
    sc_trace(mVcdFile, tmp_last_V_reg_340, "tmp_last_V_reg_340");
    sc_trace(mVcdFile, exitcond8_i_fu_286_p2, "exitcond8_i_fu_286_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_111, "ap_sig_bdd_111");
    sc_trace(mVcdFile, i_V_fu_291_p2, "i_V_fu_291_p2");
    sc_trace(mVcdFile, i_V_reg_356, "i_V_reg_356");
    sc_trace(mVcdFile, exitcond_i_fu_297_p2, "exitcond_i_fu_297_p2");
    sc_trace(mVcdFile, exitcond_i_reg_361, "exitcond_i_reg_361");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp1_stg0_fsm_4, "ap_sig_cseq_ST_pp1_stg0_fsm_4");
    sc_trace(mVcdFile, ap_sig_bdd_122, "ap_sig_bdd_122");
    sc_trace(mVcdFile, ap_reg_ppiten_pp1_it0, "ap_reg_ppiten_pp1_it0");
    sc_trace(mVcdFile, brmerge_i_fu_311_p2, "brmerge_i_fu_311_p2");
    sc_trace(mVcdFile, ap_sig_bdd_135, "ap_sig_bdd_135");
    sc_trace(mVcdFile, ap_reg_ppiten_pp1_it1, "ap_reg_ppiten_pp1_it1");
    sc_trace(mVcdFile, j_V_fu_302_p2, "j_V_fu_302_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st7_fsm_5, "ap_sig_cseq_ST_st7_fsm_5");
    sc_trace(mVcdFile, ap_sig_bdd_151, "ap_sig_bdd_151");
    sc_trace(mVcdFile, ap_sig_bdd_156, "ap_sig_bdd_156");
    sc_trace(mVcdFile, axi_last_V_3_i_reg_233, "axi_last_V_3_i_reg_233");
    sc_trace(mVcdFile, axi_last_V1_i_reg_131, "axi_last_V1_i_reg_131");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st8_fsm_6, "ap_sig_cseq_ST_st8_fsm_6");
    sc_trace(mVcdFile, ap_sig_bdd_174, "ap_sig_bdd_174");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_181, "ap_sig_bdd_181");
    sc_trace(mVcdFile, axi_data_V_3_i_reg_245, "axi_data_V_3_i_reg_245");
    sc_trace(mVcdFile, axi_data_V1_i_reg_141, "axi_data_V1_i_reg_141");
    sc_trace(mVcdFile, p_i_reg_151, "p_i_reg_151");
    sc_trace(mVcdFile, axi_last_V_2_i_phi_fu_212_p4, "axi_last_V_2_i_phi_fu_212_p4");
    sc_trace(mVcdFile, p_Val2_s_phi_fu_224_p4, "p_Val2_s_phi_fu_224_p4");
    sc_trace(mVcdFile, ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1, "ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1");
    sc_trace(mVcdFile, ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1, "ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1");
    sc_trace(mVcdFile, eol_2_i_reg_257, "eol_2_i_reg_257");
    sc_trace(mVcdFile, AXI_video_strm_V_id_V0_update, "AXI_video_strm_V_id_V0_update");
    sc_trace(mVcdFile, sof_1_i_fu_90, "sof_1_i_fu_90");
    sc_trace(mVcdFile, tmp_user_V_fu_277_p1, "tmp_user_V_fu_277_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_bdd_229, "ap_sig_bdd_229");
#endif

    }
}

image_filter_AXIvideo2Mat::~image_filter_AXIvideo2Mat() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void image_filter_AXIvideo2Mat::thread_ap_clk_no_reset_() {
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
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                    !esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp1_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
             !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond_i_fu_297_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp1_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                    esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp1_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp1_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
             !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
            ap_reg_ppiten_pp1_it1 = ap_reg_ppiten_pp1_it0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                    esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp1_it1 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        axi_data_V1_i_reg_141 = tmp_data_V_reg_332.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_6.read())) {
        axi_data_V1_i_reg_141 = axi_data_V_3_i_reg_245.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        axi_data_V_1_i_reg_184 = p_Val2_s_phi_fu_224_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
        axi_data_V_1_i_reg_184 = axi_data_V1_i_reg_141.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
         !esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0))) {
        axi_data_V_3_i_reg_245 = axi_data_V_1_i_reg_184.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_5.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()) && 
                !ap_sig_bdd_156.read())) {
        axi_data_V_3_i_reg_245 = AXI_video_strm_V_data_V_dout.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        axi_last_V1_i_reg_131 = tmp_last_V_reg_340.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_6.read())) {
        axi_last_V1_i_reg_131 = axi_last_V_3_i_reg_233.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
         !esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0))) {
        axi_last_V_3_i_reg_233 = eol_reg_173.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_5.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()) && 
                !ap_sig_bdd_156.read())) {
        axi_last_V_3_i_reg_233 = AXI_video_strm_V_last_V_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
         !esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0))) {
        eol_2_i_reg_257 = eol_i_reg_195.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_5.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()) && 
                !ap_sig_bdd_156.read())) {
        eol_2_i_reg_257 = AXI_video_strm_V_last_V_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        eol_i_reg_195 = axi_last_V_2_i_phi_fu_212_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
        eol_i_reg_195 = ap_const_lv1_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        eol_reg_173 = axi_last_V_2_i_phi_fu_212_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
        eol_reg_173 = axi_last_V1_i_reg_131.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
         esl_seteq<1,1,1>(exitcond_i_fu_297_p2.read(), ap_const_lv1_0))) {
        p_4_i_reg_162 = j_V_fu_302_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
        p_4_i_reg_162 = ap_const_lv11_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        p_i_reg_151 = ap_const_lv11_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_6.read())) {
        p_i_reg_151 = i_V_reg_356.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        sof_1_i_fu_90 = ap_const_lv1_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        sof_1_i_fu_90 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        exitcond_i_reg_361 = exitcond_i_fu_297_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        i_V_reg_356 = i_V_fu_291_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && !esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0))) {
        tmp_data_V_reg_332 = AXI_video_strm_V_data_V_dout.read();
        tmp_last_V_reg_340 = AXI_video_strm_V_last_V_dout.read();
    }
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_data_V_read() {
    AXI_video_strm_V_data_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_dest_V_read() {
    AXI_video_strm_V_dest_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_id_V0_status() {
    AXI_video_strm_V_id_V0_status = (AXI_video_strm_V_data_V_empty_n.read() & AXI_video_strm_V_keep_V_empty_n.read() & AXI_video_strm_V_strb_V_empty_n.read() & AXI_video_strm_V_user_V_empty_n.read() & AXI_video_strm_V_last_V_empty_n.read() & AXI_video_strm_V_id_V_empty_n.read() & AXI_video_strm_V_dest_V_empty_n.read());
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_id_V0_update() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_5.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()) && 
          !ap_sig_bdd_156.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
          esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        AXI_video_strm_V_id_V0_update = ap_const_logic_1;
    } else {
        AXI_video_strm_V_id_V0_update = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_id_V_read() {
    AXI_video_strm_V_id_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_keep_V_read() {
    AXI_video_strm_V_keep_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_last_V_read() {
    AXI_video_strm_V_last_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_strb_V_read() {
    AXI_video_strm_V_strb_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_AXI_video_strm_V_user_V_read() {
    AXI_video_strm_V_user_V_read = AXI_video_strm_V_id_V0_update.read();
}

void image_filter_AXIvideo2Mat::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
          !esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1() {
    ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1 =  (sc_lv<1>) ("X");
}

void image_filter_AXIvideo2Mat::thread_ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1() {
    ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_111() {
    ap_sig_bdd_111 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_122() {
    ap_sig_bdd_122 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_135() {
    ap_sig_bdd_135 = ((esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read())) || (esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(img_data_stream_V_full_n.read(), ap_const_logic_0)));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_151() {
    ap_sig_bdd_151 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_156() {
    ap_sig_bdd_156 = (esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_174() {
    ap_sig_bdd_174 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_181() {
    ap_sig_bdd_181 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_229() {
    ap_sig_bdd_229 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_26() {
    ap_sig_bdd_26 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_84() {
    ap_sig_bdd_84 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_bdd_96() {
    ap_sig_bdd_96 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_pp1_stg0_fsm_4() {
    if (ap_sig_bdd_122.read()) {
        ap_sig_cseq_ST_pp1_stg0_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg0_fsm_4 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_26.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_96.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_181.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_111.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st7_fsm_5() {
    if (ap_sig_bdd_151.read()) {
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_5 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_ap_sig_cseq_ST_st8_fsm_6() {
    if (ap_sig_bdd_174.read()) {
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_axi_last_V_2_i_phi_fu_212_p4() {
    if (ap_sig_bdd_229.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read())) {
            axi_last_V_2_i_phi_fu_212_p4 = eol_reg_173.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read())) {
            axi_last_V_2_i_phi_fu_212_p4 = AXI_video_strm_V_last_V_dout.read();
        } else {
            axi_last_V_2_i_phi_fu_212_p4 = ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1.read();
        }
    } else {
        axi_last_V_2_i_phi_fu_212_p4 = ap_reg_phiprechg_axi_last_V_2_i_reg_207pp1_it1.read();
    }
}

void image_filter_AXIvideo2Mat::thread_brmerge_i_fu_311_p2() {
    brmerge_i_fu_311_p2 = (sof_1_i_fu_90.read() | eol_i_reg_195.read());
}

void image_filter_AXIvideo2Mat::thread_exitcond8_i_fu_286_p2() {
    exitcond8_i_fu_286_p2 = (!p_i_reg_151.read().is_01() || !rows.read().is_01())? sc_lv<1>(): sc_lv<1>(p_i_reg_151.read() == rows.read());
}

void image_filter_AXIvideo2Mat::thread_exitcond_i_fu_297_p2() {
    exitcond_i_fu_297_p2 = (!p_4_i_reg_162.read().is_01() || !cols.read().is_01())? sc_lv<1>(): sc_lv<1>(p_4_i_reg_162.read() == cols.read());
}

void image_filter_AXIvideo2Mat::thread_i_V_fu_291_p2() {
    i_V_fu_291_p2 = (!p_i_reg_151.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_i_reg_151.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void image_filter_AXIvideo2Mat::thread_img_data_stream_V_din() {
    img_data_stream_V_din = p_Val2_s_phi_fu_224_p4.read();
}

void image_filter_AXIvideo2Mat::thread_img_data_stream_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_361.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        img_data_stream_V_write = ap_const_logic_1;
    } else {
        img_data_stream_V_write = ap_const_logic_0;
    }
}

void image_filter_AXIvideo2Mat::thread_j_V_fu_302_p2() {
    j_V_fu_302_p2 = (!p_4_i_reg_162.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_4_i_reg_162.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void image_filter_AXIvideo2Mat::thread_p_Val2_s_phi_fu_224_p4() {
    if (ap_sig_bdd_229.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read())) {
            p_Val2_s_phi_fu_224_p4 = axi_data_V_1_i_reg_184.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_i_fu_311_p2.read())) {
            p_Val2_s_phi_fu_224_p4 = AXI_video_strm_V_data_V_dout.read();
        } else {
            p_Val2_s_phi_fu_224_p4 = ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1.read();
        }
    } else {
        p_Val2_s_phi_fu_224_p4 = ap_reg_phiprechg_p_Val2_s_reg_220pp1_it1.read();
    }
}

void image_filter_AXIvideo2Mat::thread_tmp_user_V_fu_277_p1() {
    tmp_user_V_fu_277_p1 = AXI_video_strm_V_user_V_dout.read();
}

void image_filter_AXIvideo2Mat::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_84.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if ((!esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_user_V_fu_277_p1.read()))) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else if ((!esl_seteq<1,1,1>(AXI_video_strm_V_id_V0_status.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_user_V_fu_277_p1.read()))) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 8 : 
            if (!esl_seteq<1,1,1>(exitcond8_i_fu_286_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            }
            break;
        case 16 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()))) {
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_4.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && !(ap_sig_bdd_135.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()))) {
                ap_NS_fsm = ap_ST_st7_fsm_5;
            } else {
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()) && !ap_sig_bdd_156.read())) {
                ap_NS_fsm = ap_ST_st7_fsm_5;
            } else if ((!ap_sig_bdd_156.read() && !esl_seteq<1,1,1>(ap_const_lv1_0, eol_2_i_reg_257.read()))) {
                ap_NS_fsm = ap_ST_st8_fsm_6;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_5;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        default : 
            ap_NS_fsm = "XXXXXXX";
            break;
    }
}

}
