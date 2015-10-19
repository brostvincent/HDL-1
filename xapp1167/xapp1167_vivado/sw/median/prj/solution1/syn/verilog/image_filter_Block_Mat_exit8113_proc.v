// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Block_Mat_exit8113_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows,
        cols,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv12_0 = 12'b000000000000;
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
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;
output  [11:0] ap_return_2;
output  [11:0] ap_return_3;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] ap_return_0;
reg[11:0] ap_return_1;
reg[11:0] ap_return_2;
reg[11:0] ap_return_3;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
reg    ap_sig_bdd_38;
wire   [11:0] img_0_rows_V_fu_30_p1;
wire   [11:0] img_0_cols_V_fu_34_p1;
reg   [11:0] ap_return_0_preg = 12'b000000000000;
reg   [11:0] ap_return_1_preg = 12'b000000000000;
reg   [11:0] ap_return_2_preg = 12'b000000000000;
reg   [11:0] ap_return_3_preg = 12'b000000000000;
reg   [0:0] ap_NS_fsm;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_return_0_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_0_preg
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
            ap_return_0_preg <= img_0_rows_V_fu_30_p1;
        end
    end
end

/// ap_return_1_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_1_preg
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
            ap_return_1_preg <= img_0_cols_V_fu_34_p1;
        end
    end
end

/// ap_return_2_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_2_preg
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
            ap_return_2_preg <= img_0_rows_V_fu_30_p1;
        end
    end
end

/// ap_return_3_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_3_preg
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= ap_const_lv12_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
            ap_return_3_preg <= img_0_cols_V_fu_34_p1;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38))) begin
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
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_return_0 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38 or img_0_rows_V_fu_30_p1 or ap_return_0_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
        ap_return_0 = img_0_rows_V_fu_30_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

/// ap_return_1 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38 or img_0_cols_V_fu_34_p1 or ap_return_1_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
        ap_return_1 = img_0_cols_V_fu_34_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

/// ap_return_2 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38 or img_0_rows_V_fu_30_p1 or ap_return_2_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
        ap_return_2 = img_0_rows_V_fu_30_p1;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

/// ap_return_3 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_38 or img_0_cols_V_fu_34_p1 or ap_return_3_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_38)) begin
        ap_return_3 = img_0_cols_V_fu_34_p1;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_38)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_38 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_38 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign img_0_cols_V_fu_34_p1 = cols[11:0];
assign img_0_rows_V_fu_30_p1 = rows[11:0];


endmodule //image_filter_Block_Mat_exit8113_proc

