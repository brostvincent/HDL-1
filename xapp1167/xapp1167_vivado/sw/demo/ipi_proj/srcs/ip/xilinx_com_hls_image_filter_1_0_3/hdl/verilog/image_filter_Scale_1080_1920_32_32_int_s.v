// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Scale_1080_1920_32_32_int_s (
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
parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm = 2'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_21;
reg    ap_sig_bdd_59;
wire    grp_image_filter_arithm_pro_fu_40_ap_start;
wire    grp_image_filter_arithm_pro_fu_40_ap_done;
wire    grp_image_filter_arithm_pro_fu_40_ap_idle;
wire    grp_image_filter_arithm_pro_fu_40_ap_ready;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_dout;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_empty_n;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_read;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_dout;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_empty_n;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_read;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_dout;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_empty_n;
wire    grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_read;
wire   [11:0] grp_image_filter_arithm_pro_fu_40_dst_rows_V_read;
wire   [11:0] grp_image_filter_arithm_pro_fu_40_dst_cols_V_read;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_din;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_full_n;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_write;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_din;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_full_n;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_write;
wire   [7:0] grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_din;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_full_n;
wire    grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_write;
reg    grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg = 1'b0;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_97;
reg   [1:0] ap_NS_fsm;


image_filter_arithm_pro grp_image_filter_arithm_pro_fu_40(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_image_filter_arithm_pro_fu_40_ap_start ),
    .ap_done( grp_image_filter_arithm_pro_fu_40_ap_done ),
    .ap_idle( grp_image_filter_arithm_pro_fu_40_ap_idle ),
    .ap_ready( grp_image_filter_arithm_pro_fu_40_ap_ready ),
    .src_data_stream_0_V_dout( grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_dout ),
    .src_data_stream_0_V_empty_n( grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_empty_n ),
    .src_data_stream_0_V_read( grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_read ),
    .src_data_stream_1_V_dout( grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_dout ),
    .src_data_stream_1_V_empty_n( grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_empty_n ),
    .src_data_stream_1_V_read( grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_read ),
    .src_data_stream_2_V_dout( grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_dout ),
    .src_data_stream_2_V_empty_n( grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_empty_n ),
    .src_data_stream_2_V_read( grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_read ),
    .dst_rows_V_read( grp_image_filter_arithm_pro_fu_40_dst_rows_V_read ),
    .dst_cols_V_read( grp_image_filter_arithm_pro_fu_40_dst_cols_V_read ),
    .dst_data_stream_0_V_din( grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_din ),
    .dst_data_stream_0_V_full_n( grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_full_n ),
    .dst_data_stream_0_V_write( grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_write ),
    .dst_data_stream_1_V_din( grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_din ),
    .dst_data_stream_1_V_full_n( grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_full_n ),
    .dst_data_stream_1_V_write( grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_write ),
    .dst_data_stream_2_V_din( grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_din ),
    .dst_data_stream_2_V_full_n( grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_full_n ),
    .dst_data_stream_2_V_write( grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_write )
);



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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_image_filter_arithm_pro_fu_40_ap_done))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_59)) begin
            grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_image_filter_arithm_pro_fu_40_ap_ready)) begin
            grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or grp_image_filter_arithm_pro_fu_40_ap_done or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_image_filter_arithm_pro_fu_40_ap_done)))) begin
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
always @ (grp_image_filter_arithm_pro_fu_40_ap_done or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_image_filter_arithm_pro_fu_40_ap_done))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_21)
begin
    if (ap_sig_bdd_21) begin
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

/// dst_data_stream_0_V_write assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_write or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        dst_data_stream_0_V_write = grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_write;
    end else begin
        dst_data_stream_0_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_1_V_write assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_write or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        dst_data_stream_1_V_write = grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_write;
    end else begin
        dst_data_stream_1_V_write = ap_const_logic_0;
    end
end

/// dst_data_stream_2_V_write assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_write or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        dst_data_stream_2_V_write = grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_write;
    end else begin
        dst_data_stream_2_V_write = ap_const_logic_0;
    end
end

/// src_data_stream_0_V_read assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_read or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        src_data_stream_0_V_read = grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_read;
    end else begin
        src_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_1_V_read assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_read or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        src_data_stream_1_V_read = grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_read;
    end else begin
        src_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// src_data_stream_2_V_read assign process. ///
always @ (grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_read or ap_sig_cseq_ST_st2_fsm_1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        src_data_stream_2_V_read = grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_read;
    end else begin
        src_data_stream_2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_59 or grp_image_filter_arithm_pro_fu_40_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_59) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(ap_const_logic_0 == grp_image_filter_arithm_pro_fu_40_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_21 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_21 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_59 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_59 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_97 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_97 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end
assign dst_data_stream_0_V_din = grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_din;
assign dst_data_stream_1_V_din = grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_din;
assign dst_data_stream_2_V_din = grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_din;
assign grp_image_filter_arithm_pro_fu_40_ap_start = grp_image_filter_arithm_pro_fu_40_ap_start_ap_start_reg;
assign grp_image_filter_arithm_pro_fu_40_dst_cols_V_read = src_cols_V_read;
assign grp_image_filter_arithm_pro_fu_40_dst_data_stream_0_V_full_n = dst_data_stream_0_V_full_n;
assign grp_image_filter_arithm_pro_fu_40_dst_data_stream_1_V_full_n = dst_data_stream_1_V_full_n;
assign grp_image_filter_arithm_pro_fu_40_dst_data_stream_2_V_full_n = dst_data_stream_2_V_full_n;
assign grp_image_filter_arithm_pro_fu_40_dst_rows_V_read = src_rows_V_read;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_dout = src_data_stream_0_V_dout;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_0_V_empty_n = src_data_stream_0_V_empty_n;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_dout = src_data_stream_1_V_dout;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_1_V_empty_n = src_data_stream_1_V_empty_n;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_dout = src_data_stream_2_V_dout;
assign grp_image_filter_arithm_pro_fu_40_src_data_stream_2_V_empty_n = src_data_stream_2_V_empty_n;


endmodule //image_filter_Scale_1080_1920_32_32_int_s

