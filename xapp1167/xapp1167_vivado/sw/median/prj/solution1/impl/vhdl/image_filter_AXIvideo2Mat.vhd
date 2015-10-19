-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_AXIvideo2Mat is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    INPUT_STREAM_TVALID : IN STD_LOGIC;
    INPUT_STREAM_TREADY : OUT STD_LOGIC;
    INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    img_rows_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    img_cols_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    img_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_0_V_full_n : IN STD_LOGIC;
    img_data_stream_0_V_write : OUT STD_LOGIC;
    img_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_1_V_full_n : IN STD_LOGIC;
    img_data_stream_1_V_write : OUT STD_LOGIC;
    img_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_2_V_full_n : IN STD_LOGIC;
    img_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of image_filter_AXIvideo2Mat is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_pp1_stg0_fsm_4 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_st7_fsm_5 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_st8_fsm_6 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_true : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_26 : BOOLEAN;
    signal eol_1_reg_174 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_data_V_1_reg_185 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_1_reg_196 : STD_LOGIC_VECTOR (11 downto 0);
    signal eol_reg_207 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_2_reg_219 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_reg_231 : STD_LOGIC_VECTOR (31 downto 0);
    signal eol_2_reg_243 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_75 : BOOLEAN;
    signal tmp_data_V_reg_391 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_87 : BOOLEAN;
    signal tmp_last_V_reg_399 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond1_fu_308_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_101 : BOOLEAN;
    signal i_V_fu_313_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_V_reg_415 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond2_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond2_reg_420 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp1_stg0_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_112 : BOOLEAN;
    signal brmerge_fu_333_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_120 : BOOLEAN;
    signal ap_reg_ppiten_pp1_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_133 : BOOLEAN;
    signal ap_reg_ppiten_pp1_it1 : STD_LOGIC := '0';
    signal j_V_fu_324_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_10_fu_352_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_10_reg_433 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_reg_438 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_reg_443 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_158 : BOOLEAN;
    signal ap_sig_bdd_163 : BOOLEAN;
    signal axi_last_V_3_reg_254 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V1_reg_143 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_181 : BOOLEAN;
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_188 : BOOLEAN;
    signal axi_data_V_3_reg_266 : STD_LOGIC_VECTOR (31 downto 0);
    signal axi_data_V1_reg_153 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_s_reg_163 : STD_LOGIC_VECTOR (11 downto 0);
    signal eol_1_phi_fu_177_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_data_V_1_phi_fu_188_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal eol_phi_fu_211_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_axi_last_V_2_reg_219pp1_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_phi_fu_235_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_reg_phiprechg_eol_2_reg_243pp1_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_1_mux_fu_345_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal eol_3_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal sof_1_fu_88 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_sof_2_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_user_V_fu_299_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_bdd_119 : BOOLEAN;
    signal ap_sig_bdd_211 : BOOLEAN;
    signal ap_sig_bdd_144 : BOOLEAN;
    signal ap_sig_bdd_229 : BOOLEAN;


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond1_fu_308_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it0 assign process. --
    ap_reg_ppiten_pp1_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it1 assign process. --
    ap_reg_ppiten_pp1_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- axi_data_V1_reg_153 assign process. --
    axi_data_V1_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                axi_data_V1_reg_153 <= tmp_data_V_reg_391;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                axi_data_V1_reg_153 <= axi_data_V_3_reg_266;
            end if; 
        end if;
    end process;

    -- axi_data_V_1_reg_185 assign process. --
    axi_data_V_1_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                axi_data_V_1_reg_185 <= p_Val2_s_reg_231;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0))) then 
                axi_data_V_1_reg_185 <= axi_data_V1_reg_153;
            end if; 
        end if;
    end process;

    -- axi_data_V_3_reg_266 assign process. --
    axi_data_V_3_reg_266_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0)))) then 
                axi_data_V_3_reg_266 <= axi_data_V_1_phi_fu_188_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_3_reg_278) and not(ap_sig_bdd_163))) then 
                axi_data_V_3_reg_266 <= INPUT_STREAM_TDATA;
            end if; 
        end if;
    end process;

    -- axi_last_V1_reg_143 assign process. --
    axi_last_V1_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                axi_last_V1_reg_143 <= tmp_last_V_reg_399;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                axi_last_V1_reg_143 <= axi_last_V_3_reg_254;
            end if; 
        end if;
    end process;

    -- axi_last_V_2_reg_219 assign process. --
    axi_last_V_2_reg_219_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_144) then
                if (ap_sig_bdd_211) then 
                    axi_last_V_2_reg_219 <= eol_1_phi_fu_177_p4;
                elsif (ap_sig_bdd_119) then 
                    axi_last_V_2_reg_219 <= INPUT_STREAM_TLAST;
                elsif ((ap_true = ap_true)) then 
                    axi_last_V_2_reg_219 <= ap_reg_phiprechg_axi_last_V_2_reg_219pp1_it0;
                end if;
            end if; 
        end if;
    end process;

    -- axi_last_V_3_reg_254 assign process. --
    axi_last_V_3_reg_254_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0)))) then 
                axi_last_V_3_reg_254 <= eol_1_phi_fu_177_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_3_reg_278) and not(ap_sig_bdd_163))) then 
                axi_last_V_3_reg_254 <= INPUT_STREAM_TLAST;
            end if; 
        end if;
    end process;

    -- eol_1_reg_174 assign process. --
    eol_1_reg_174_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                eol_1_reg_174 <= axi_last_V_2_reg_219;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0))) then 
                eol_1_reg_174 <= axi_last_V1_reg_143;
            end if; 
        end if;
    end process;

    -- eol_2_reg_243 assign process. --
    eol_2_reg_243_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_144) then
                if (ap_sig_bdd_211) then 
                    eol_2_reg_243 <= axi_last_V_1_mux_fu_345_p2;
                elsif (ap_sig_bdd_119) then 
                    eol_2_reg_243 <= INPUT_STREAM_TLAST;
                elsif ((ap_true = ap_true)) then 
                    eol_2_reg_243 <= ap_reg_phiprechg_eol_2_reg_243pp1_it0;
                end if;
            end if; 
        end if;
    end process;

    -- eol_3_reg_278 assign process. --
    eol_3_reg_278_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0)))) then 
                eol_3_reg_278 <= eol_phi_fu_211_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_3_reg_278) and not(ap_sig_bdd_163))) then 
                eol_3_reg_278 <= INPUT_STREAM_TLAST;
            end if; 
        end if;
    end process;

    -- eol_reg_207 assign process. --
    eol_reg_207_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                eol_reg_207 <= eol_2_reg_243;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0))) then 
                eol_reg_207 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    -- p_1_reg_196 assign process. --
    p_1_reg_196_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                p_1_reg_196 <= j_V_fu_324_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond1_fu_308_p2 = ap_const_lv1_0))) then 
                p_1_reg_196 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    -- p_Val2_s_reg_231 assign process. --
    p_Val2_s_reg_231_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_144) then
                if (ap_sig_bdd_211) then 
                    p_Val2_s_reg_231 <= axi_data_V_1_phi_fu_188_p4;
                elsif (ap_sig_bdd_119) then 
                    p_Val2_s_reg_231 <= INPUT_STREAM_TDATA;
                elsif ((ap_true = ap_true)) then 
                    p_Val2_s_reg_231 <= ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0;
                end if;
            end if; 
        end if;
    end process;

    -- p_s_reg_163 assign process. --
    p_s_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                p_s_reg_163 <= ap_const_lv12_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                p_s_reg_163 <= i_V_reg_415;
            end if; 
        end if;
    end process;

    -- sof_1_fu_88 assign process. --
    sof_1_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                sof_1_fu_88 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                sof_1_fu_88 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then
                exitcond2_reg_420 <= exitcond2_fu_319_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                i_V_reg_415 <= i_V_fu_313_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then
                tmp_10_reg_433 <= tmp_10_fu_352_p1;
                tmp_2_reg_438 <= p_Val2_s_phi_fu_235_p4(15 downto 8);
                tmp_3_reg_443 <= p_Val2_s_phi_fu_235_p4(23 downto 16);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((INPUT_STREAM_TVALID = ap_const_logic_0)))) then
                tmp_data_V_reg_391 <= INPUT_STREAM_TDATA;
                tmp_last_V_reg_399 <= INPUT_STREAM_TLAST;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, INPUT_STREAM_TVALID, ap_sig_bdd_75, exitcond1_fu_308_p2, exitcond2_fu_319_p2, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1, ap_sig_bdd_163, eol_3_reg_278, tmp_user_V_fu_299_p1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_75)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((not((INPUT_STREAM_TVALID = ap_const_logic_0)) and (ap_const_lv1_0 = tmp_user_V_fu_299_p1))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                elsif ((not((INPUT_STREAM_TVALID = ap_const_logic_0)) and not((ap_const_lv1_0 = tmp_user_V_fu_299_p1)))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                if (not((exitcond1_fu_308_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                end if;
            when ap_ST_pp1_stg0_fsm_4 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond2_fu_319_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                else
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                end if;
            when ap_ST_st7_fsm_5 => 
                if (((ap_const_lv1_0 = eol_3_reg_278) and not(ap_sig_bdd_163))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                elsif ((not(ap_sig_bdd_163) and not((ap_const_lv1_0 = eol_3_reg_278)))) then
                    ap_NS_fsm <= ap_ST_st8_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                end if;
            when ap_ST_st8_fsm_6 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;

    -- INPUT_STREAM_TREADY assign process. --
    INPUT_STREAM_TREADY_assign_proc : process(INPUT_STREAM_TVALID, ap_sig_cseq_ST_st2_fsm_1, exitcond2_fu_319_p2, ap_sig_cseq_ST_pp1_stg0_fsm_4, brmerge_fu_333_p2, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1, ap_sig_cseq_ST_st7_fsm_5, ap_sig_bdd_163, eol_3_reg_278)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((INPUT_STREAM_TVALID = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_3_reg_278) and not(ap_sig_bdd_163)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_fu_333_p2) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))))))) then 
            INPUT_STREAM_TREADY <= ap_const_logic_1;
        else 
            INPUT_STREAM_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond1_fu_308_p2, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond1_fu_308_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(exitcond1_fu_308_p2, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond1_fu_308_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_phiprechg_axi_last_V_2_reg_219pp1_it0 <= "X";
    ap_reg_phiprechg_eol_2_reg_243pp1_it0 <= "X";
    ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    -- ap_sig_bdd_101 assign process. --
    ap_sig_bdd_101_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_101 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_112 assign process. --
    ap_sig_bdd_112_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_112 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_119 assign process. --
    ap_sig_bdd_119_assign_proc : process(exitcond2_fu_319_p2, brmerge_fu_333_p2)
    begin
                ap_sig_bdd_119 <= ((exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_fu_333_p2));
    end process;


    -- ap_sig_bdd_120 assign process. --
    ap_sig_bdd_120_assign_proc : process(INPUT_STREAM_TVALID, exitcond2_fu_319_p2, brmerge_fu_333_p2)
    begin
                ap_sig_bdd_120 <= ((INPUT_STREAM_TVALID = ap_const_logic_0) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_fu_333_p2));
    end process;


    -- ap_sig_bdd_133 assign process. --
    ap_sig_bdd_133_assign_proc : process(img_data_stream_0_V_full_n, img_data_stream_1_V_full_n, img_data_stream_2_V_full_n, exitcond2_reg_420)
    begin
                ap_sig_bdd_133 <= (((img_data_stream_0_V_full_n = ap_const_logic_0) and (exitcond2_reg_420 = ap_const_lv1_0)) or ((exitcond2_reg_420 = ap_const_lv1_0) and (img_data_stream_1_V_full_n = ap_const_logic_0)) or ((exitcond2_reg_420 = ap_const_lv1_0) and (img_data_stream_2_V_full_n = ap_const_logic_0)));
    end process;


    -- ap_sig_bdd_144 assign process. --
    ap_sig_bdd_144_assign_proc : process(ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1)
    begin
                ap_sig_bdd_144 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))));
    end process;


    -- ap_sig_bdd_158 assign process. --
    ap_sig_bdd_158_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_158 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_163 assign process. --
    ap_sig_bdd_163_assign_proc : process(INPUT_STREAM_TVALID, eol_3_reg_278)
    begin
                ap_sig_bdd_163 <= ((INPUT_STREAM_TVALID = ap_const_logic_0) and (ap_const_lv1_0 = eol_3_reg_278));
    end process;


    -- ap_sig_bdd_181 assign process. --
    ap_sig_bdd_181_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_181 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_188 assign process. --
    ap_sig_bdd_188_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_188 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_211 assign process. --
    ap_sig_bdd_211_assign_proc : process(exitcond2_fu_319_p2, brmerge_fu_333_p2)
    begin
                ap_sig_bdd_211 <= ((exitcond2_fu_319_p2 = ap_const_lv1_0) and not((ap_const_lv1_0 = brmerge_fu_333_p2)));
    end process;


    -- ap_sig_bdd_229 assign process. --
    ap_sig_bdd_229_assign_proc : process(exitcond2_fu_319_p2, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it0)
    begin
                ap_sig_bdd_229 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_fu_319_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0));
    end process;


    -- ap_sig_bdd_26 assign process. --
    ap_sig_bdd_26_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_26 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_75 assign process. --
    ap_sig_bdd_75_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_75 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_87 assign process. --
    ap_sig_bdd_87_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_87 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_cseq_ST_pp1_stg0_fsm_4 assign process. --
    ap_sig_cseq_ST_pp1_stg0_fsm_4_assign_proc : process(ap_sig_bdd_112)
    begin
        if (ap_sig_bdd_112) then 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_26)
    begin
        if (ap_sig_bdd_26) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_87)
    begin
        if (ap_sig_bdd_87) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_188)
    begin
        if (ap_sig_bdd_188) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_101)
    begin
        if (ap_sig_bdd_101) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_5 assign process. --
    ap_sig_cseq_ST_st7_fsm_5_assign_proc : process(ap_sig_bdd_158)
    begin
        if (ap_sig_bdd_158) then 
            ap_sig_cseq_ST_st7_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_6 assign process. --
    ap_sig_cseq_ST_st8_fsm_6_assign_proc : process(ap_sig_bdd_181)
    begin
        if (ap_sig_bdd_181) then 
            ap_sig_cseq_ST_st8_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- axi_data_V_1_phi_fu_188_p4 assign process. --
    axi_data_V_1_phi_fu_188_p4_assign_proc : process(axi_data_V_1_reg_185, p_Val2_s_reg_231, exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            axi_data_V_1_phi_fu_188_p4 <= p_Val2_s_reg_231;
        else 
            axi_data_V_1_phi_fu_188_p4 <= axi_data_V_1_reg_185;
        end if; 
    end process;

    axi_last_V_1_mux_fu_345_p2 <= (eol_1_phi_fu_177_p4 or not_sof_2_fu_339_p2);
    brmerge_fu_333_p2 <= (sof_1_fu_88 or eol_phi_fu_211_p4);

    -- eol_1_phi_fu_177_p4 assign process. --
    eol_1_phi_fu_177_p4_assign_proc : process(eol_1_reg_174, axi_last_V_2_reg_219, exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            eol_1_phi_fu_177_p4 <= axi_last_V_2_reg_219;
        else 
            eol_1_phi_fu_177_p4 <= eol_1_reg_174;
        end if; 
    end process;


    -- eol_phi_fu_211_p4 assign process. --
    eol_phi_fu_211_p4_assign_proc : process(eol_reg_207, eol_2_reg_243, exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            eol_phi_fu_211_p4 <= eol_2_reg_243;
        else 
            eol_phi_fu_211_p4 <= eol_reg_207;
        end if; 
    end process;

    exitcond1_fu_308_p2 <= "1" when (p_s_reg_163 = img_rows_V_read) else "0";
    exitcond2_fu_319_p2 <= "1" when (p_1_reg_196 = img_cols_V_read) else "0";
    i_V_fu_313_p2 <= std_logic_vector(unsigned(p_s_reg_163) + unsigned(ap_const_lv12_1));
    img_data_stream_0_V_din <= tmp_10_reg_433;

    -- img_data_stream_0_V_write assign process. --
    img_data_stream_0_V_write_assign_proc : process(exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
            img_data_stream_0_V_write <= ap_const_logic_1;
        else 
            img_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    img_data_stream_1_V_din <= tmp_2_reg_438;

    -- img_data_stream_1_V_write assign process. --
    img_data_stream_1_V_write_assign_proc : process(exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
            img_data_stream_1_V_write <= ap_const_logic_1;
        else 
            img_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    img_data_stream_2_V_din <= tmp_3_reg_443;

    -- img_data_stream_2_V_write assign process. --
    img_data_stream_2_V_write_assign_proc : process(exitcond2_reg_420, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_120, ap_reg_ppiten_pp1_it0, ap_sig_bdd_133, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond2_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_120 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_133 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
            img_data_stream_2_V_write <= ap_const_logic_1;
        else 
            img_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_324_p2 <= std_logic_vector(unsigned(p_1_reg_196) + unsigned(ap_const_lv12_1));
    not_sof_2_fu_339_p2 <= (sof_1_fu_88 xor ap_const_lv1_1);

    -- p_Val2_s_phi_fu_235_p4 assign process. --
    p_Val2_s_phi_fu_235_p4_assign_proc : process(INPUT_STREAM_TDATA, brmerge_fu_333_p2, axi_data_V_1_phi_fu_188_p4, ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0, ap_sig_bdd_229)
    begin
        if (ap_sig_bdd_229) then
            if (not((ap_const_lv1_0 = brmerge_fu_333_p2))) then 
                p_Val2_s_phi_fu_235_p4 <= axi_data_V_1_phi_fu_188_p4;
            elsif ((ap_const_lv1_0 = brmerge_fu_333_p2)) then 
                p_Val2_s_phi_fu_235_p4 <= INPUT_STREAM_TDATA;
            else 
                p_Val2_s_phi_fu_235_p4 <= ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0;
            end if;
        else 
            p_Val2_s_phi_fu_235_p4 <= ap_reg_phiprechg_p_Val2_s_reg_231pp1_it0;
        end if; 
    end process;

    tmp_10_fu_352_p1 <= p_Val2_s_phi_fu_235_p4(8 - 1 downto 0);
    tmp_user_V_fu_299_p1 <= INPUT_STREAM_TUSER;
end behav;
