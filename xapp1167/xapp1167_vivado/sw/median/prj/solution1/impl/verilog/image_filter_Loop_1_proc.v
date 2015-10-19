// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Loop_1_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows,
        cols,
        img_1_data_stream_0_V_din,
        img_1_data_stream_0_V_full_n,
        img_1_data_stream_0_V_write,
        img_1_data_stream_1_V_din,
        img_1_data_stream_1_V_full_n,
        img_1_data_stream_1_V_write,
        img_1_data_stream_2_V_din,
        img_1_data_stream_2_V_full_n,
        img_1_data_stream_2_V_write,
        img_0_data_stream_0_V_dout,
        img_0_data_stream_0_V_empty_n,
        img_0_data_stream_0_V_read,
        img_0_data_stream_1_V_dout,
        img_0_data_stream_1_V_empty_n,
        img_0_data_stream_1_V_read,
        img_0_data_stream_2_V_dout,
        img_0_data_stream_2_V_empty_n,
        img_0_data_stream_2_V_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st7_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rows;
input  [31:0] cols;
output  [7:0] img_1_data_stream_0_V_din;
input   img_1_data_stream_0_V_full_n;
output   img_1_data_stream_0_V_write;
output  [7:0] img_1_data_stream_1_V_din;
input   img_1_data_stream_1_V_full_n;
output   img_1_data_stream_1_V_write;
output  [7:0] img_1_data_stream_2_V_din;
input   img_1_data_stream_2_V_full_n;
output   img_1_data_stream_2_V_write;
input  [7:0] img_0_data_stream_0_V_dout;
input   img_0_data_stream_0_V_empty_n;
output   img_0_data_stream_0_V_read;
input  [7:0] img_0_data_stream_1_V_dout;
input   img_0_data_stream_1_V_empty_n;
output   img_0_data_stream_1_V_read;
input  [7:0] img_0_data_stream_2_V_dout;
input   img_0_data_stream_2_V_empty_n;
output   img_0_data_stream_2_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_1_data_stream_0_V_write;
reg img_1_data_stream_1_V_write;
reg img_1_data_stream_2_V_write;
reg img_0_data_stream_0_V_read;
reg img_0_data_stream_1_V_read;
reg img_0_data_stream_2_V_read;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [10:0] col_reg_166;
wire   [11:0] tmp_3_fu_177_p1;
reg    ap_sig_bdd_63;
wire   [11:0] tmp_4_fu_181_p1;
wire   [0:0] exitcond2_fu_189_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_75;
wire   [10:0] row_1_fu_194_p2;
reg   [10:0] row_1_reg_537;
wire   [0:0] exitcond1_fu_204_p2;
reg   [0:0] exitcond1_reg_542;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_86;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_100;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond1_reg_542_pp0_it2;
reg    ap_sig_bdd_116;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond1_reg_542_pp0_it1;
wire   [10:0] col_1_fu_209_p2;
wire   [0:0] icmp_fu_225_p2;
reg   [0:0] icmp_reg_551;
reg   [0:0] ap_reg_ppstg_icmp_reg_551_pp0_it1;
reg   [0:0] ap_reg_ppstg_icmp_reg_551_pp0_it2;
reg   [7:0] buffer_val_0_1_load_reg_559;
reg   [7:0] buffer_val_0_1_1_load_reg_564;
reg   [7:0] buffer_val_1_1_load_reg_569;
reg   [7:0] buffer_val_1_1_1_load_reg_574;
reg   [7:0] scl_val_0_reg_579;
reg   [7:0] ap_reg_ppstg_scl_val_0_reg_579_pp0_it2;
reg   [7:0] scl_val_1_reg_585;
reg   [7:0] ap_reg_ppstg_scl_val_1_reg_585_pp0_it2;
reg   [7:0] p_val_2_reg_591;
reg   [7:0] ap_reg_ppstg_p_val_2_reg_591_pp0_it2;
wire   [0:0] c_fu_243_p2;
reg   [0:0] c_reg_600;
wire   [0:0] ult_fu_249_p2;
reg   [0:0] ult_reg_606;
wire   [0:0] ult1_fu_255_p2;
reg   [0:0] ult1_reg_611;
wire   [0:0] c_1_fu_261_p2;
reg   [0:0] c_1_reg_616;
wire   [0:0] ult2_fu_267_p2;
reg   [0:0] ult2_reg_622;
wire   [0:0] ult3_fu_273_p2;
reg   [0:0] ult3_reg_627;
reg   [7:0] buffer_val_2_1_load_reg_632;
reg   [7:0] buffer_val_2_1_1_load_reg_637;
wire   [7:0] p_val_0_fu_337_p3;
reg   [7:0] p_val_0_reg_642;
wire   [7:0] p_val_1_fu_376_p3;
reg   [7:0] p_val_1_reg_648;
wire   [0:0] brmerge_2_fu_406_p2;
reg   [0:0] brmerge_2_reg_654;
wire   [0:0] brmerge1_2_fu_423_p2;
reg   [0:0] brmerge1_2_reg_659;
reg   [10:0] row_reg_155;
reg    ap_sig_cseq_ST_st7_fsm_3;
reg    ap_sig_bdd_195;
reg   [7:0] buffer_val_0_1_fu_80;
reg   [7:0] buffer_val_0_1_1_fu_84;
reg   [7:0] buffer_val_1_1_fu_88;
reg   [7:0] buffer_val_1_1_1_fu_92;
reg   [7:0] buffer_val_2_1_fu_96;
reg   [7:0] buffer_val_2_1_1_fu_100;
wire   [11:0] row_cast_fu_185_p1;
wire   [11:0] col_cast_fu_200_p1;
wire   [9:0] tmp_5_fu_215_p4;
wire   [0:0] rev_fu_305_p2;
wire   [0:0] c_0_not_fu_310_p2;
wire   [0:0] rev1_fu_321_p2;
wire   [0:0] brmerge1_fu_326_p2;
wire   [0:0] brmerge_fu_315_p2;
wire   [7:0] buffer_val_0_1_1_scl_val_0_fu_331_p3;
wire   [0:0] rev2_fu_344_p2;
wire   [0:0] c_0_not_1_fu_349_p2;
wire   [0:0] rev3_fu_360_p2;
wire   [0:0] brmerge1_1_fu_365_p2;
wire   [0:0] brmerge_1_fu_354_p2;
wire   [7:0] buffer_val_1_1_1_scl_val_1_fu_370_p3;
wire   [0:0] ult4_fu_388_p2;
wire   [0:0] c_2_fu_383_p2;
wire   [0:0] rev4_fu_394_p2;
wire   [0:0] c_0_not_2_fu_400_p2;
wire   [0:0] ult5_fu_412_p2;
wire   [0:0] rev5_fu_417_p2;
wire   [0:0] sel_tmp2_fu_448_p2;
wire   [7:0] p_val_0_2_fu_443_p3;
wire   [7:0] p_val_1_2_fu_460_p3;
wire   [7:0] buffer_val_2_1_1_p_val_2_fu_438_p3;
wire   [7:0] sel_tmp9_fu_473_p3;
reg   [3:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_189_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond1_fu_204_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_189_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond1_fu_204_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_189_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond1_fu_204_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_189_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond1_fu_204_p2 == ap_const_lv1_0))) begin
        col_reg_166 <= col_1_fu_209_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_189_p2 == ap_const_lv1_0))) begin
        col_reg_166 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_63)) begin
        row_reg_155 <= ap_const_lv11_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_3)) begin
        row_reg_155 <= row_1_reg_537;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        ap_reg_ppstg_exitcond1_reg_542_pp0_it1 <= exitcond1_reg_542;
        ap_reg_ppstg_icmp_reg_551_pp0_it1 <= icmp_reg_551;
        exitcond1_reg_542 <= exitcond1_fu_204_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
        ap_reg_ppstg_exitcond1_reg_542_pp0_it2 <= ap_reg_ppstg_exitcond1_reg_542_pp0_it1;
        ap_reg_ppstg_icmp_reg_551_pp0_it2 <= ap_reg_ppstg_icmp_reg_551_pp0_it1;
        ap_reg_ppstg_p_val_2_reg_591_pp0_it2 <= p_val_2_reg_591;
        ap_reg_ppstg_scl_val_0_reg_579_pp0_it2 <= scl_val_0_reg_579;
        ap_reg_ppstg_scl_val_1_reg_585_pp0_it2 <= scl_val_1_reg_585;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it1))) begin
        brmerge1_2_reg_659 <= brmerge1_2_fu_423_p2;
        brmerge_2_reg_654 <= brmerge_2_fu_406_p2;
        buffer_val_2_1_1_load_reg_637 <= buffer_val_2_1_1_fu_100;
        buffer_val_2_1_load_reg_632 <= buffer_val_2_1_fu_96;
        p_val_0_reg_642 <= p_val_0_fu_337_p3;
        p_val_1_reg_648 <= p_val_1_fu_376_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond1_reg_542 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        buffer_val_0_1_1_fu_84 <= buffer_val_0_1_fu_80;
        buffer_val_0_1_fu_80 <= img_0_data_stream_0_V_dout;
        buffer_val_1_1_1_fu_92 <= buffer_val_1_1_fu_88;
        buffer_val_1_1_fu_88 <= img_0_data_stream_1_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond1_reg_542 == ap_const_lv1_0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        buffer_val_0_1_1_load_reg_564 <= buffer_val_0_1_1_fu_84;
        buffer_val_0_1_load_reg_559 <= buffer_val_0_1_fu_80;
        buffer_val_1_1_1_load_reg_574 <= buffer_val_1_1_1_fu_92;
        buffer_val_1_1_load_reg_569 <= buffer_val_1_1_fu_88;
        c_1_reg_616 <= c_1_fu_261_p2;
        c_reg_600 <= c_fu_243_p2;
        p_val_2_reg_591 <= img_0_data_stream_2_V_dout;
        scl_val_0_reg_579 <= img_0_data_stream_0_V_dout;
        scl_val_1_reg_585 <= img_0_data_stream_1_V_dout;
        ult1_reg_611 <= ult1_fu_255_p2;
        ult2_reg_622 <= ult2_fu_267_p2;
        ult3_reg_627 <= ult3_fu_273_p2;
        ult_reg_606 <= ult_fu_249_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it1))) begin
        buffer_val_2_1_1_fu_100 <= buffer_val_2_1_fu_96;
        buffer_val_2_1_fu_96 <= p_val_2_reg_591;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (exitcond1_fu_204_p2 == ap_const_lv1_0))) begin
        icmp_reg_551 <= icmp_fu_225_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        row_1_reg_537 <= row_1_fu_194_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond2_fu_189_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_189_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (exitcond2_fu_189_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_189_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_86)
begin
    if (ap_sig_bdd_86) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_75)
begin
    if (ap_sig_bdd_75) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_3 assign process. ///
always @ (ap_sig_bdd_195)
begin
    if (ap_sig_bdd_195) begin
        ap_sig_cseq_ST_st7_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_3 = ap_const_logic_0;
    end
end

/// img_0_data_stream_0_V_read assign process. ///
always @ (exitcond1_reg_542 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond1_reg_542 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_0_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        img_0_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// img_0_data_stream_1_V_read assign process. ///
always @ (exitcond1_reg_542 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond1_reg_542 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_0_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        img_0_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// img_0_data_stream_2_V_read assign process. ///
always @ (exitcond1_reg_542 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond1_reg_542 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_0_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        img_0_data_stream_2_V_read = ap_const_logic_0;
    end
end

/// img_1_data_stream_0_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond1_reg_542_pp0_it2 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_1_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        img_1_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// img_1_data_stream_1_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond1_reg_542_pp0_it2 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_1_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        img_1_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// img_1_data_stream_2_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond1_reg_542_pp0_it2 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        img_1_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        img_1_data_stream_2_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_63 or exitcond2_fu_189_p2 or exitcond1_fu_204_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_116 or ap_reg_ppiten_pp0_it3)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_63) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond2_fu_189_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond1_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_116 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(exitcond1_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st7_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st7_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_100 assign process. ///
always @ (img_0_data_stream_0_V_empty_n or img_0_data_stream_1_V_empty_n or img_0_data_stream_2_V_empty_n or exitcond1_reg_542)
begin
    ap_sig_bdd_100 = (((img_0_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond1_reg_542 == ap_const_lv1_0)) | ((exitcond1_reg_542 == ap_const_lv1_0) & (img_0_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond1_reg_542 == ap_const_lv1_0) & (img_0_data_stream_2_V_empty_n == ap_const_logic_0)));
end

/// ap_sig_bdd_116 assign process. ///
always @ (img_1_data_stream_0_V_full_n or img_1_data_stream_1_V_full_n or img_1_data_stream_2_V_full_n or ap_reg_ppstg_exitcond1_reg_542_pp0_it2)
begin
    ap_sig_bdd_116 = (((img_1_data_stream_0_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2)) | ((ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2) & (img_1_data_stream_1_V_full_n == ap_const_logic_0)) | ((ap_const_lv1_0 == ap_reg_ppstg_exitcond1_reg_542_pp0_it2) & (img_1_data_stream_2_V_full_n == ap_const_logic_0)));
end

/// ap_sig_bdd_195 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_195 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_63 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_75 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_75 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_86 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_86 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end
assign brmerge1_1_fu_365_p2 = (rev3_fu_360_p2 | c_1_reg_616);
assign brmerge1_2_fu_423_p2 = (rev5_fu_417_p2 | c_2_fu_383_p2);
assign brmerge1_fu_326_p2 = (rev1_fu_321_p2 | c_reg_600);
assign brmerge_1_fu_354_p2 = (rev2_fu_344_p2 | c_0_not_1_fu_349_p2);
assign brmerge_2_fu_406_p2 = (rev4_fu_394_p2 | c_0_not_2_fu_400_p2);
assign brmerge_fu_315_p2 = (rev_fu_305_p2 | c_0_not_fu_310_p2);
assign buffer_val_0_1_1_scl_val_0_fu_331_p3 = ((brmerge1_fu_326_p2[0:0]===1'b1)? buffer_val_0_1_1_load_reg_564: scl_val_0_reg_579);
assign buffer_val_1_1_1_scl_val_1_fu_370_p3 = ((brmerge1_1_fu_365_p2[0:0]===1'b1)? buffer_val_1_1_1_load_reg_574: scl_val_1_reg_585);
assign buffer_val_2_1_1_p_val_2_fu_438_p3 = ((brmerge1_2_reg_659[0:0]===1'b1)? buffer_val_2_1_1_load_reg_637: ap_reg_ppstg_p_val_2_reg_591_pp0_it2);
assign c_0_not_1_fu_349_p2 = (c_1_reg_616 ^ ap_const_lv1_1);
assign c_0_not_2_fu_400_p2 = (c_2_fu_383_p2 ^ ap_const_lv1_1);
assign c_0_not_fu_310_p2 = (c_reg_600 ^ ap_const_lv1_1);
assign c_1_fu_261_p2 = (buffer_val_1_1_fu_88 > img_0_data_stream_1_V_dout? 1'b1: 1'b0);
assign c_2_fu_383_p2 = (buffer_val_2_1_fu_96 > p_val_2_reg_591? 1'b1: 1'b0);
assign c_fu_243_p2 = (buffer_val_0_1_fu_80 > img_0_data_stream_0_V_dout? 1'b1: 1'b0);
assign col_1_fu_209_p2 = (col_reg_166 + ap_const_lv11_1);
assign col_cast_fu_200_p1 = col_reg_166;
assign exitcond1_fu_204_p2 = (col_cast_fu_200_p1 == tmp_4_fu_181_p1? 1'b1: 1'b0);
assign exitcond2_fu_189_p2 = (row_cast_fu_185_p1 == tmp_3_fu_177_p1? 1'b1: 1'b0);
assign icmp_fu_225_p2 = (tmp_5_fu_215_p4 != ap_const_lv10_0? 1'b1: 1'b0);
assign img_1_data_stream_0_V_din = ((sel_tmp2_fu_448_p2[0:0]===1'b1)? p_val_0_reg_642: p_val_0_2_fu_443_p3);
assign img_1_data_stream_1_V_din = ((sel_tmp2_fu_448_p2[0:0]===1'b1)? p_val_1_reg_648: p_val_1_2_fu_460_p3);
assign img_1_data_stream_2_V_din = ((sel_tmp2_fu_448_p2[0:0]===1'b1)? buffer_val_2_1_1_p_val_2_fu_438_p3: sel_tmp9_fu_473_p3);
assign p_val_0_2_fu_443_p3 = ((ap_reg_ppstg_icmp_reg_551_pp0_it2[0:0]===1'b1)? p_val_0_reg_642: ap_reg_ppstg_scl_val_0_reg_579_pp0_it2);
assign p_val_0_fu_337_p3 = ((brmerge_fu_315_p2[0:0]===1'b1)? buffer_val_0_1_1_scl_val_0_fu_331_p3: buffer_val_0_1_load_reg_559);
assign p_val_1_2_fu_460_p3 = ((ap_reg_ppstg_icmp_reg_551_pp0_it2[0:0]===1'b1)? p_val_1_reg_648: ap_reg_ppstg_scl_val_1_reg_585_pp0_it2);
assign p_val_1_fu_376_p3 = ((brmerge_1_fu_354_p2[0:0]===1'b1)? buffer_val_1_1_1_scl_val_1_fu_370_p3: buffer_val_1_1_load_reg_569);
assign rev1_fu_321_p2 = (ult1_reg_611 ^ ap_const_lv1_1);
assign rev2_fu_344_p2 = (ult2_reg_622 ^ ap_const_lv1_1);
assign rev3_fu_360_p2 = (ult3_reg_627 ^ ap_const_lv1_1);
assign rev4_fu_394_p2 = (ult4_fu_388_p2 ^ ap_const_lv1_1);
assign rev5_fu_417_p2 = (ult5_fu_412_p2 ^ ap_const_lv1_1);
assign rev_fu_305_p2 = (ult_reg_606 ^ ap_const_lv1_1);
assign row_1_fu_194_p2 = (row_reg_155 + ap_const_lv11_1);
assign row_cast_fu_185_p1 = row_reg_155;
assign sel_tmp2_fu_448_p2 = (ap_reg_ppstg_icmp_reg_551_pp0_it2 & brmerge_2_reg_654);
assign sel_tmp9_fu_473_p3 = ((ap_reg_ppstg_icmp_reg_551_pp0_it2[0:0]===1'b1)? buffer_val_2_1_load_reg_632: ap_reg_ppstg_p_val_2_reg_591_pp0_it2);
assign tmp_3_fu_177_p1 = rows[11:0];
assign tmp_4_fu_181_p1 = cols[11:0];
assign tmp_5_fu_215_p4 = {{col_reg_166[ap_const_lv32_A : ap_const_lv32_1]}};
assign ult1_fu_255_p2 = (img_0_data_stream_0_V_dout < buffer_val_0_1_1_fu_84? 1'b1: 1'b0);
assign ult2_fu_267_p2 = (buffer_val_1_1_fu_88 < buffer_val_1_1_1_fu_92? 1'b1: 1'b0);
assign ult3_fu_273_p2 = (img_0_data_stream_1_V_dout < buffer_val_1_1_1_fu_92? 1'b1: 1'b0);
assign ult4_fu_388_p2 = (buffer_val_2_1_fu_96 < buffer_val_2_1_1_fu_100? 1'b1: 1'b0);
assign ult5_fu_412_p2 = (p_val_2_reg_591 < buffer_val_2_1_1_fu_100? 1'b1: 1'b0);
assign ult_fu_249_p2 = (buffer_val_0_1_fu_80 < buffer_val_0_1_1_fu_84? 1'b1: 1'b0);


endmodule //image_filter_Loop_1_proc
