-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_Loop_1_proc is
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
    img_0_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_0_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_0_data_stream_0_V_read : OUT STD_LOGIC;
    img_0_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_0_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_0_data_stream_1_V_read : OUT STD_LOGIC;
    img_0_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_0_data_stream_2_V_empty_n : IN STD_LOGIC;
    img_0_data_stream_2_V_read : OUT STD_LOGIC;
    img_1_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_1_data_stream_0_V_full_n : IN STD_LOGIC;
    img_1_data_stream_0_V_write : OUT STD_LOGIC;
    img_1_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_1_data_stream_1_V_full_n : IN STD_LOGIC;
    img_1_data_stream_1_V_write : OUT STD_LOGIC;
    img_1_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_1_data_stream_2_V_full_n : IN STD_LOGIC;
    img_1_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of image_filter_Loop_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_pp0_stg0_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st5_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal col_reg_148 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_3_fu_159_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_63 : BOOLEAN;
    signal tmp_11_fu_163_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond1_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_75 : BOOLEAN;
    signal row_1_fu_176_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal row_1_reg_264 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_reg_269 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_86 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_109 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal col_1_fu_187_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal row_reg_137 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_133 : BOOLEAN;
    signal row_cast_fu_167_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_8_fu_193_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_9_fu_212_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_231_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


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
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_fu_171_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_fu_182_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_171_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond_fu_182_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_171_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_fu_182_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- col_reg_148 assign process. --
    col_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond_fu_182_p2 = ap_const_lv1_0))) then 
                col_reg_148 <= col_1_fu_187_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_171_p2 = ap_const_lv1_0))) then 
                col_reg_148 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    -- row_reg_137 assign process. --
    row_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_63))) then 
                row_reg_137 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
                row_reg_137 <= row_1_reg_264;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                exitcond_reg_269 <= exitcond_fu_182_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                row_1_reg_264 <= row_1_fu_176_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_63, exitcond1_fu_171_p2, exitcond_fu_182_p2, ap_reg_ppiten_pp0_it0, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_63)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond1_fu_171_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_fu_182_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_fu_182_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st5_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_st5_fsm_3 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond1_fu_171_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_fu_171_p2 = ap_const_lv1_0))))) then 
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
    ap_ready_assign_proc : process(exitcond1_fu_171_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_fu_171_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_109 assign process. --
    ap_sig_bdd_109_assign_proc : process(img_0_data_stream_0_V_empty_n, img_0_data_stream_1_V_empty_n, img_0_data_stream_2_V_empty_n, img_1_data_stream_0_V_full_n, img_1_data_stream_1_V_full_n, img_1_data_stream_2_V_full_n, exitcond_reg_269)
    begin
                ap_sig_bdd_109 <= (((img_0_data_stream_0_V_empty_n = ap_const_logic_0) and (exitcond_reg_269 = ap_const_lv1_0)) or ((exitcond_reg_269 = ap_const_lv1_0) and (img_0_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_269 = ap_const_lv1_0) and (img_0_data_stream_2_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_269 = ap_const_lv1_0) and (img_1_data_stream_0_V_full_n = ap_const_logic_0)) or ((exitcond_reg_269 = ap_const_lv1_0) and (img_1_data_stream_1_V_full_n = ap_const_logic_0)) or ((exitcond_reg_269 = ap_const_lv1_0) and (img_1_data_stream_2_V_full_n = ap_const_logic_0)));
    end process;


    -- ap_sig_bdd_133 assign process. --
    ap_sig_bdd_133_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_133 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_63 assign process. --
    ap_sig_bdd_63_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_63 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_75 assign process. --
    ap_sig_bdd_75_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_75 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_86 assign process. --
    ap_sig_bdd_86_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_86 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_bdd_86)
    begin
        if (ap_sig_bdd_86) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_75)
    begin
        if (ap_sig_bdd_75) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_3 assign process. --
    ap_sig_cseq_ST_st5_fsm_3_assign_proc : process(ap_sig_bdd_133)
    begin
        if (ap_sig_bdd_133) then 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    col_1_fu_187_p2 <= std_logic_vector(unsigned(col_reg_148) + unsigned(ap_const_lv12_1));
    exitcond1_fu_171_p2 <= "1" when (row_cast_fu_167_p1 = tmp_3_fu_159_p1) else "0";
    exitcond_fu_182_p2 <= "1" when (col_reg_148 = tmp_11_fu_163_p1) else "0";

    -- img_0_data_stream_0_V_read assign process. --
    img_0_data_stream_0_V_read_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_0_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_0_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_0_data_stream_1_V_read assign process. --
    img_0_data_stream_1_V_read_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_0_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_0_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_0_data_stream_2_V_read assign process. --
    img_0_data_stream_2_V_read_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_0_data_stream_2_V_read <= ap_const_logic_1;
        else 
            img_0_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;

    img_1_data_stream_0_V_din <= (tmp_8_fu_193_p4 & ap_const_lv5_0);

    -- img_1_data_stream_0_V_write assign process. --
    img_1_data_stream_0_V_write_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_1_data_stream_0_V_write <= ap_const_logic_1;
        else 
            img_1_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    img_1_data_stream_1_V_din <= (tmp_9_fu_212_p4 & ap_const_lv5_0);

    -- img_1_data_stream_1_V_write assign process. --
    img_1_data_stream_1_V_write_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_1_data_stream_1_V_write <= ap_const_logic_1;
        else 
            img_1_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    img_1_data_stream_2_V_din <= (tmp_s_fu_231_p4 & ap_const_lv5_0);

    -- img_1_data_stream_2_V_write assign process. --
    img_1_data_stream_2_V_write_assign_proc : process(exitcond_reg_269, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_109, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_109 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_1_data_stream_2_V_write <= ap_const_logic_1;
        else 
            img_1_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    row_1_fu_176_p2 <= std_logic_vector(unsigned(row_reg_137) + unsigned(ap_const_lv11_1));
    row_cast_fu_167_p1 <= std_logic_vector(resize(unsigned(row_reg_137),12));
    tmp_11_fu_163_p1 <= cols(12 - 1 downto 0);
    tmp_3_fu_159_p1 <= rows(12 - 1 downto 0);
    tmp_8_fu_193_p4 <= img_0_data_stream_0_V_dout(7 downto 5);
    tmp_9_fu_212_p4 <= img_0_data_stream_1_V_dout(7 downto 5);
    tmp_s_fu_231_p4 <= img_0_data_stream_2_V_dout(7 downto 5);
end behav;