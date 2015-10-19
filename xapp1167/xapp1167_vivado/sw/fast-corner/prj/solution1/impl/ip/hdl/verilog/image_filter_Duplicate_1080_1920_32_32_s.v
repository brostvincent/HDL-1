// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Duplicate_1080_1920_32_32_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V_dout,
        src_rows_V_empty_n,
        src_rows_V_read,
        src_cols_V_dout,
        src_cols_V_empty_n,
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
        dst1_data_stream_0_V_din,
        dst1_data_stream_0_V_full_n,
        dst1_data_stream_0_V_write,
        dst1_data_stream_1_V_din,
        dst1_data_stream_1_V_full_n,
        dst1_data_stream_1_V_write,
        dst1_data_stream_2_V_din,
        dst1_data_stream_2_V_full_n,
        dst1_data_stream_2_V_write,
        dst2_data_stream_0_V_din,
        dst2_data_stream_0_V_full_n,
        dst2_data_stream_0_V_write,
        dst2_data_stream_1_V_din,
        dst2_data_stream_1_V_full_n,
        dst2_data_stream_1_V_write,
        dst2_data_stream_2_V_din,
        dst2_data_stream_2_V_full_n,
        dst2_data_stream_2_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] src_rows_V_dout;
input   src_rows_V_empty_n;
output   src_rows_V_read;
input  [11:0] src_cols_V_dout;
input   src_cols_V_empty_n;
output   src_cols_V_read;
input  [7:0] src_data_stream_0_V_dout;
input   src_data_stream_0_V_empty_n;
output   src_data_stream_0_V_read;
input  [7:0] src_data_stream_1_V_dout;
input   src_data_stream_1_V_empty_n;
output   src_data_stream_1_V_read;
input  [7:0] src_data_stream_2_V_dout;
input   src_data_stream_2_V_empty_n;
output   src_data_stream_2_V_read;
output  [7:0] dst1_data_stream_0_V_din;
input   dst1_data_stream_0_V_full_n;
output   dst1_data_stream_0_V_write;
output  [7:0] dst1_data_stream_1_V_din;
input   dst1_data_stream_1_V_full_n;
output   dst1_data_stream_1_V_write;
output  [7:0] dst1_data_stream_2_V_din;
input   dst1_data_stream_2_V_full_n;
output   dst1_data_stream_2_V_write;
output  [7:0] dst2_data_stream_0_V_din;
input   dst2_data_stream_0_V_full_n;
output   dst2_data_stream_0_V_write;
output  [7:0] dst2_data_stream_1_V_din;
input   dst2_data_stream_1_V_full_n;
output   dst2_data_stream_1_V_write;
output  [7:0] dst2_data_stream_2_V_din;
input   dst2_data_stream_2_V_full_n;
output   dst2_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_rows_V_read;
reg src_cols_V_read;
reg src_data_stream_0_V_read;
reg src_data_stream_1_V_read;
reg src_data_stream_2_V_read;
reg dst1_data_stream_0_V_write;
reg dst1_data_stream_1_V_write;
reg dst1_data_stream_2_V_write;
reg dst2_data_stream_0_V_write;
reg dst2_data_stream_1_V_write;
reg dst2_data_stream_2_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [10:0] p_3_i_reg_159;
reg   [11:0] rows_V_reg_200;
reg    ap_sig_bdd_85;
reg   [11:0] cols_V_reg_205;
wire   [0:0] exitcond3_i_fu_174_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_97;
wire   [10:0] i_V_fu_179_p2;
reg   [10:0] i_V_reg_214;
wire   [0:0] exitcond_i_fu_189_p2;
reg   [0:0] exitcond_i_reg_219;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_108;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_140;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [10:0] j_V_fu_194_p2;
reg   [10:0] p_i_reg_148;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_165;
wire   [11:0] p_cast_i_fu_170_p1;
wire   [11:0] p_3_cast_i_fu_185_p1;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_174_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_189_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_174_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_i_fu_189_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_174_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_189_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_i_fu_189_p2 == ap_const_lv1_0))) begin
        p_3_i_reg_159 <= j_V_fu_194_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_i_fu_174_p2 == ap_const_lv1_0))) begin
        p_3_i_reg_159 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_i_reg_148 <= i_V_reg_214;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_85)) begin
        p_i_reg_148 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_85)) begin
        cols_V_reg_205 <= src_cols_V_dout;
        rows_V_reg_200 <= src_rows_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond_i_reg_219 <= exitcond_i_fu_189_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_214 <= i_V_fu_179_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond3_i_fu_174_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_174_p2 == ap_const_lv1_0)))) begin
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
always @ (exitcond3_i_fu_174_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_i_fu_174_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_108)
begin
    if (ap_sig_bdd_108) begin
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
always @ (ap_sig_bdd_97)
begin
    if (ap_sig_bdd_97) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_165)
begin
    if (ap_sig_bdd_165) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// dst1_data_stream_0_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst1_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        dst1_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// dst1_data_stream_1_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst1_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        dst1_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// dst1_data_stream_2_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst1_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        dst1_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// dst2_data_stream_0_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst2_data_stream_0_V_write = ap_const_logic_1;
    end else begin
        dst2_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// dst2_data_stream_1_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst2_data_stream_1_V_write = ap_const_logic_1;
    end else begin
        dst2_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// dst2_data_stream_2_V_write assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst2_data_stream_2_V_write = ap_const_logic_1;
    end else begin
        dst2_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// src_cols_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_85)) begin
        src_cols_V_read = ap_const_logic_1;
    end else begin
        src_cols_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_0_V_read assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_1_V_read assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_2_V_read assign process. ///
always @ (exitcond_i_reg_219 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_i_reg_219 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_2_V_read = ap_const_logic_0;
    end
end

/// src_rows_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_85)) begin
        src_rows_V_read = ap_const_logic_1;
    end else begin
        src_rows_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_85 or exitcond3_i_fu_174_p2 or exitcond_i_fu_189_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_140 or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_85) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond3_i_fu_174_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_189_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_140 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_i_fu_189_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_108 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_108 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_140 assign process. ///
always @ (src_data_stream_0_V_empty_n or src_data_stream_1_V_empty_n or src_data_stream_2_V_empty_n or dst1_data_stream_0_V_full_n or dst1_data_stream_1_V_full_n or dst1_data_stream_2_V_full_n or dst2_data_stream_0_V_full_n or dst2_data_stream_1_V_full_n or dst2_data_stream_2_V_full_n or exitcond_i_reg_219)
begin
    ap_sig_bdd_140 = (((src_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond_i_reg_219 == ap_const_lv1_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (src_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (src_data_stream_2_V_empty_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst1_data_stream_0_V_full_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst1_data_stream_1_V_full_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst1_data_stream_2_V_full_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst2_data_stream_0_V_full_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst2_data_stream_1_V_full_n == ap_const_logic_0)) | ((exitcond_i_reg_219 == ap_const_lv1_0) & (dst2_data_stream_2_V_full_n == ap_const_logic_0)));
end

/// ap_sig_bdd_165 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_165 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_85 assign process. ///
always @ (ap_start or ap_done_reg or src_rows_V_empty_n or src_cols_V_empty_n)
begin
    ap_sig_bdd_85 = ((src_rows_V_empty_n == ap_const_logic_0) | (src_cols_V_empty_n == ap_const_logic_0) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_97 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_97 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end
assign dst1_data_stream_0_V_din = src_data_stream_0_V_dout;
assign dst1_data_stream_1_V_din = src_data_stream_1_V_dout;
assign dst1_data_stream_2_V_din = src_data_stream_2_V_dout;
assign dst2_data_stream_0_V_din = src_data_stream_0_V_dout;
assign dst2_data_stream_1_V_din = src_data_stream_1_V_dout;
assign dst2_data_stream_2_V_din = src_data_stream_2_V_dout;
assign exitcond3_i_fu_174_p2 = (p_cast_i_fu_170_p1 == rows_V_reg_200? 1'b1: 1'b0);
assign exitcond_i_fu_189_p2 = (p_3_cast_i_fu_185_p1 == cols_V_reg_205? 1'b1: 1'b0);
assign i_V_fu_179_p2 = (p_i_reg_148 + ap_const_lv11_1);
assign j_V_fu_194_p2 = (p_3_i_reg_159 + ap_const_lv11_1);
assign p_3_cast_i_fu_185_p1 = p_3_i_reg_159;
assign p_cast_i_fu_170_p1 = p_i_reg_148;


endmodule //image_filter_Duplicate_1080_1920_32_32_s
