// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_SubS (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V_read,
        src_cols_V_read,
        src_data_stream_0_V_dout,
        src_data_stream_0_V_empty_n,
        src_data_stream_0_V_read,
        src_data_stream_1_V_dout,
        src_data_stream_1_V_empty_n,
        src_data_stream_1_V_read,
        src_data_stream_2_V_dout,
        src_data_stream_2_V_empty_n,
        src_data_stream_2_V_read,
        dst_data_stream_0_V_din,
        dst_data_stream_0_V_full_n,
        dst_data_stream_0_V_write,
        dst_data_stream_1_V_din,
        dst_data_stream_1_V_full_n,
        dst_data_stream_1_V_write,
        dst_data_stream_2_V_din,
        dst_data_stream_2_V_full_n,
        dst_data_stream_2_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st6_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv9_1CE = 9'b111001110;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] src_rows_V_read;
input  [11:0] src_cols_V_read;
input  [7:0] src_data_stream_0_V_dout;
input   src_data_stream_0_V_empty_n;
output   src_data_stream_0_V_read;
input  [7:0] src_data_stream_1_V_dout;
input   src_data_stream_1_V_empty_n;
output   src_data_stream_1_V_read;
input  [7:0] src_data_stream_2_V_dout;
input   src_data_stream_2_V_empty_n;
output   src_data_stream_2_V_read;
output  [7:0] dst_data_stream_0_V_din;
input   dst_data_stream_0_V_full_n;
output   dst_data_stream_0_V_write;
output  [7:0] dst_data_stream_1_V_din;
input   dst_data_stream_1_V_full_n;
output   dst_data_stream_1_V_write;
output  [7:0] dst_data_stream_2_V_din;
input   dst_data_stream_2_V_full_n;
output   dst_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_0_V_read;
reg src_data_stream_1_V_read;
reg src_data_stream_2_V_read;
reg dst_data_stream_0_V_write;
reg dst_data_stream_1_V_write;
reg dst_data_stream_2_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [10:0] p_7_i_reg_134;
reg    ap_sig_bdd_63;
wire   [0:0] exitcond7_i_fu_149_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_75;
wire   [10:0] i_V_fu_154_p2;
reg   [10:0] i_V_reg_276;
wire   [0:0] exitcond8_i_fu_164_p2;
reg   [0:0] exitcond8_i_reg_281;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_86;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_100;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1;
reg    ap_sig_bdd_114;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [10:0] j_V_fu_169_p2;
reg   [0:0] tmp_reg_290;
wire   [7:0] p_Val2_21_fu_193_p1;
reg   [7:0] p_Val2_21_reg_295;
reg   [0:0] tmp_82_reg_300;
wire   [7:0] p_Val2_24_fu_215_p1;
reg   [7:0] p_Val2_24_reg_305;
reg   [0:0] tmp_84_reg_310;
wire   [7:0] p_Val2_26_fu_237_p1;
reg   [7:0] p_Val2_26_reg_315;
reg   [10:0] p_i_reg_123;
reg    ap_sig_cseq_ST_st6_fsm_3;
reg    ap_sig_bdd_154;
wire   [11:0] p_i_cast_fu_145_p1;
wire   [11:0] p_7_i_cast_fu_160_p1;
wire   [8:0] lhs_V_i_fu_175_p1;
wire  signed [8:0] p_Val2_20_fu_179_p2;
wire   [8:0] lhs_V_1_i_fu_197_p1;
wire  signed [8:0] p_Val2_23_fu_201_p2;
wire   [8:0] lhs_V_2_i_fu_219_p1;
wire  signed [8:0] p_Val2_s_fu_223_p2;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond7_i_fu_149_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(exitcond8_i_fu_164_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond7_i_fu_149_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (exitcond8_i_fu_164_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond7_i_fu_149_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(exitcond8_i_fu_164_p2 == ap_const_lv1_0)))) begin
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
        if (~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond7_i_fu_149_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (exitcond8_i_fu_164_p2 == ap_const_lv1_0))) begin
        p_7_i_reg_134 <= j_V_fu_169_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond7_i_fu_149_p2 == ap_const_lv1_0))) begin
        p_7_i_reg_134 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_3)) begin
        p_i_reg_123 <= i_V_reg_276;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_63)) begin
        p_i_reg_123 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1 <= exitcond8_i_reg_281;
        exitcond8_i_reg_281 <= exitcond8_i_fu_164_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_276 <= i_V_fu_154_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond8_i_reg_281 == ap_const_lv1_0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        p_Val2_21_reg_295 <= p_Val2_21_fu_193_p1;
        p_Val2_24_reg_305 <= p_Val2_24_fu_215_p1;
        p_Val2_26_reg_315 <= p_Val2_26_fu_237_p1;
        tmp_82_reg_300 <= p_Val2_23_fu_201_p2[ap_const_lv32_8];
        tmp_84_reg_310 <= p_Val2_s_fu_223_p2[ap_const_lv32_8];
        tmp_reg_290 <= p_Val2_20_fu_179_p2[ap_const_lv32_8];
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond7_i_fu_149_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond7_i_fu_149_p2 == ap_const_lv1_0)))) begin
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
always @ (exitcond7_i_fu_149_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond7_i_fu_149_p2 == ap_const_lv1_0))) begin
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

/// ap_sig_cseq_ST_st6_fsm_3 assign process. ///
always @ (ap_sig_bdd_154)
begin
    if (ap_sig_bdd_154) begin
        ap_sig_cseq_ST_st6_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_3 = ap_const_logic_0;
    end
end

/// dst_data_stream_0_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_1_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_2_V_write assign process. ///
always @ (ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        dst_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        dst_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// src_data_stream_0_V_read assign process. ///
always @ (exitcond8_i_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond8_i_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        src_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_1_V_read assign process. ///
always @ (exitcond8_i_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond8_i_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        src_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_2_V_read assign process. ///
always @ (exitcond8_i_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond8_i_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        src_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_63 or exitcond7_i_fu_149_p2 or exitcond8_i_fu_164_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_100 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_114 or ap_reg_ppiten_pp0_it2)
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
            if (~(exitcond7_i_fu_149_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(exitcond8_i_fu_164_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_100 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_114 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(exitcond8_i_fu_164_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st6_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st6_fsm_3 : 
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
always @ (src_data_stream_0_V_empty_n or src_data_stream_1_V_empty_n or src_data_stream_2_V_empty_n or exitcond8_i_reg_281)
begin
    ap_sig_bdd_100 = (((src_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond8_i_reg_281 == ap_const_lv1_0)) | ((exitcond8_i_reg_281 == ap_const_lv1_0) & (src_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond8_i_reg_281 == ap_const_lv1_0) & (src_data_stream_2_V_empty_n == ap_const_logic_0)));
end

/// ap_sig_bdd_114 assign process. ///
always @ (dst_data_stream_0_V_full_n or dst_data_stream_1_V_full_n or dst_data_stream_2_V_full_n or ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1)
begin
    ap_sig_bdd_114 = (((dst_data_stream_0_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1)) | ((ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1) & (dst_data_stream_1_V_full_n == ap_const_logic_0)) | ((ap_const_lv1_0 == ap_reg_ppstg_exitcond8_i_reg_281_pp0_it1) & (dst_data_stream_2_V_full_n == ap_const_logic_0)));
end

/// ap_sig_bdd_154 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_154 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
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
assign dst_data_stream_0_V_din = ((tmp_reg_290[0:0]===1'b1)? ap_const_lv8_0: p_Val2_21_reg_295);
assign dst_data_stream_1_V_din = ((tmp_82_reg_300[0:0]===1'b1)? ap_const_lv8_0: p_Val2_24_reg_305);
assign dst_data_stream_2_V_din = ((tmp_84_reg_310[0:0]===1'b1)? ap_const_lv8_0: p_Val2_26_reg_315);
assign exitcond7_i_fu_149_p2 = (p_i_cast_fu_145_p1 == src_rows_V_read? 1'b1: 1'b0);
assign exitcond8_i_fu_164_p2 = (p_7_i_cast_fu_160_p1 == src_cols_V_read? 1'b1: 1'b0);
assign i_V_fu_154_p2 = (p_i_reg_123 + ap_const_lv11_1);
assign j_V_fu_169_p2 = (p_7_i_reg_134 + ap_const_lv11_1);
assign lhs_V_1_i_fu_197_p1 = src_data_stream_1_V_dout;
assign lhs_V_2_i_fu_219_p1 = src_data_stream_2_V_dout;
assign lhs_V_i_fu_175_p1 = src_data_stream_0_V_dout;
assign p_7_i_cast_fu_160_p1 = p_7_i_reg_134;
assign p_Val2_20_fu_179_p2 = ($signed(ap_const_lv9_1CE) + $signed(lhs_V_i_fu_175_p1));
assign p_Val2_21_fu_193_p1 = p_Val2_20_fu_179_p2[7:0];
assign p_Val2_23_fu_201_p2 = ($signed(ap_const_lv9_1CE) + $signed(lhs_V_1_i_fu_197_p1));
assign p_Val2_24_fu_215_p1 = p_Val2_23_fu_201_p2[7:0];
assign p_Val2_26_fu_237_p1 = p_Val2_s_fu_223_p2[7:0];
assign p_Val2_s_fu_223_p2 = ($signed(ap_const_lv9_1CE) + $signed(lhs_V_2_i_fu_219_p1));
assign p_i_cast_fu_145_p1 = p_i_reg_123;


endmodule //image_filter_SubS
