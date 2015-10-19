-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_Block_Mat_exit11224_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rows : IN STD_LOGIC_VECTOR (31 downto 0);
    cols : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of image_filter_Block_Mat_exit11224_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_20 : BOOLEAN;
    signal ap_sig_bdd_38 : BOOLEAN;
    signal img_0_rows_V_fu_30_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal img_0_cols_V_fu_34_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_return_3_preg : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


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
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_0_preg assign process. --
    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv12_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
                    ap_return_0_preg <= img_0_rows_V_fu_30_p1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_1_preg assign process. --
    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv12_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
                    ap_return_1_preg <= img_0_cols_V_fu_34_p1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_2_preg assign process. --
    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv12_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
                    ap_return_2_preg <= img_0_rows_V_fu_30_p1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_return_3_preg assign process. --
    ap_return_3_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_3_preg <= ap_const_lv12_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
                    ap_return_3_preg <= img_0_cols_V_fu_34_p1;
                end if; 
            end if;
        end if;
    end process;


    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_38)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38)))) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_return_0 assign process. --
    ap_return_0_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38, img_0_rows_V_fu_30_p1, ap_return_0_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
            ap_return_0 <= img_0_rows_V_fu_30_p1;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    -- ap_return_1 assign process. --
    ap_return_1_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38, img_0_cols_V_fu_34_p1, ap_return_1_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
            ap_return_1 <= img_0_cols_V_fu_34_p1;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    -- ap_return_2 assign process. --
    ap_return_2_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38, img_0_rows_V_fu_30_p1, ap_return_2_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
            ap_return_2 <= img_0_rows_V_fu_30_p1;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;


    -- ap_return_3 assign process. --
    ap_return_3_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_38, img_0_cols_V_fu_34_p1, ap_return_3_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_38))) then 
            ap_return_3 <= img_0_cols_V_fu_34_p1;
        else 
            ap_return_3 <= ap_return_3_preg;
        end if; 
    end process;


    -- ap_sig_bdd_20 assign process. --
    ap_sig_bdd_20_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_20 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_38 assign process. --
    ap_sig_bdd_38_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_38 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_20)
    begin
        if (ap_sig_bdd_20) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;

    img_0_cols_V_fu_34_p1 <= cols(12 - 1 downto 0);
    img_0_rows_V_fu_30_p1 <= rows(12 - 1 downto 0);
end behav;
