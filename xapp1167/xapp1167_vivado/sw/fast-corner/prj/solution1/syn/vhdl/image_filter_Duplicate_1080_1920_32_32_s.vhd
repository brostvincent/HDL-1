-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_Duplicate_1080_1920_32_32_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_rows_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    src_rows_V_empty_n : IN STD_LOGIC;
    src_rows_V_read : OUT STD_LOGIC;
    src_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    src_cols_V_empty_n : IN STD_LOGIC;
    src_cols_V_read : OUT STD_LOGIC;
    src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_0_V_empty_n : IN STD_LOGIC;
    src_data_stream_0_V_read : OUT STD_LOGIC;
    src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_1_V_empty_n : IN STD_LOGIC;
    src_data_stream_1_V_read : OUT STD_LOGIC;
    src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_2_V_empty_n : IN STD_LOGIC;
    src_data_stream_2_V_read : OUT STD_LOGIC;
    dst1_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_0_V_full_n : IN STD_LOGIC;
    dst1_data_stream_0_V_write : OUT STD_LOGIC;
    dst1_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_1_V_full_n : IN STD_LOGIC;
    dst1_data_stream_1_V_write : OUT STD_LOGIC;
    dst1_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst1_data_stream_2_V_full_n : IN STD_LOGIC;
    dst1_data_stream_2_V_write : OUT STD_LOGIC;
    dst2_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_0_V_full_n : IN STD_LOGIC;
    dst2_data_stream_0_V_write : OUT STD_LOGIC;
    dst2_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_1_V_full_n : IN STD_LOGIC;
    dst2_data_stream_1_V_write : OUT STD_LOGIC;
    dst2_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst2_data_stream_2_V_full_n : IN STD_LOGIC;
    dst2_data_stream_2_V_write : OUT STD_LOGIC );
end;


architecture behav of image_filter_Duplicate_1080_1920_32_32_s is 
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
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal p_3_i_reg_159 : STD_LOGIC_VECTOR (10 downto 0);
    signal rows_V_reg_200 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_85 : BOOLEAN;
    signal cols_V_reg_205 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond3_i_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_97 : BOOLEAN;
    signal i_V_fu_179_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_V_reg_214 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_i_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_i_reg_219 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_108 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_140 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal j_V_fu_194_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_i_reg_148 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_165 : BOOLEAN;
    signal p_cast_i_fu_170_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_3_cast_i_fu_185_p1 : STD_LOGIC_VECTOR (11 downto 0);
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
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond3_i_fu_174_p2 = ap_const_lv1_0)))) then 
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
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_i_fu_189_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond3_i_fu_174_p2 = ap_const_lv1_0))) then 
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
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond_i_fu_189_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond3_i_fu_174_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_i_fu_189_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- p_3_i_reg_159 assign process. --
    p_3_i_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond_i_fu_189_p2 = ap_const_lv1_0))) then 
                p_3_i_reg_159 <= j_V_fu_194_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond3_i_fu_174_p2 = ap_const_lv1_0))) then 
                p_3_i_reg_159 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    -- p_i_reg_148 assign process. --
    p_i_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
                p_i_reg_148 <= i_V_reg_214;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_85))) then 
                p_i_reg_148 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_85))) then
                cols_V_reg_205 <= src_cols_V_dout;
                rows_V_reg_200 <= src_rows_V_dout;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                exitcond_i_reg_219 <= exitcond_i_fu_189_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_V_reg_214 <= i_V_fu_179_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_85, exitcond3_i_fu_174_p2, exitcond_i_fu_189_p2, ap_reg_ppiten_pp0_it0, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_85)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond3_i_fu_174_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_i_fu_189_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond_i_fu_189_p2 = ap_const_lv1_0)))) then
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
    ap_done_assign_proc : process(ap_done_reg, exitcond3_i_fu_174_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond3_i_fu_174_p2 = ap_const_lv1_0))))) then 
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
    ap_ready_assign_proc : process(exitcond3_i_fu_174_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond3_i_fu_174_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_108 assign process. --
    ap_sig_bdd_108_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_108 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_140 assign process. --
    ap_sig_bdd_140_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, dst1_data_stream_0_V_full_n, dst1_data_stream_1_V_full_n, dst1_data_stream_2_V_full_n, dst2_data_stream_0_V_full_n, dst2_data_stream_1_V_full_n, dst2_data_stream_2_V_full_n, exitcond_i_reg_219)
    begin
                ap_sig_bdd_140 <= (((src_data_stream_0_V_empty_n = ap_const_logic_0) and (exitcond_i_reg_219 = ap_const_lv1_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst1_data_stream_0_V_full_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst1_data_stream_1_V_full_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst1_data_stream_2_V_full_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst2_data_stream_0_V_full_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst2_data_stream_1_V_full_n = ap_const_logic_0)) or ((exitcond_i_reg_219 = ap_const_lv1_0) and (dst2_data_stream_2_V_full_n = ap_const_logic_0)));
    end process;


    -- ap_sig_bdd_165 assign process. --
    ap_sig_bdd_165_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_165 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_85 assign process. --
    ap_sig_bdd_85_assign_proc : process(ap_start, ap_done_reg, src_rows_V_empty_n, src_cols_V_empty_n)
    begin
                ap_sig_bdd_85 <= ((src_rows_V_empty_n = ap_const_logic_0) or (src_cols_V_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_97 assign process. --
    ap_sig_bdd_97_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_97 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_bdd_108)
    begin
        if (ap_sig_bdd_108) then 
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
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_97)
    begin
        if (ap_sig_bdd_97) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_3 assign process. --
    ap_sig_cseq_ST_st5_fsm_3_assign_proc : process(ap_sig_bdd_165)
    begin
        if (ap_sig_bdd_165) then 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    dst1_data_stream_0_V_din <= src_data_stream_0_V_dout;

    -- dst1_data_stream_0_V_write assign process. --
    dst1_data_stream_0_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst1_data_stream_0_V_write <= ap_const_logic_1;
        else 
            dst1_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst1_data_stream_1_V_din <= src_data_stream_1_V_dout;

    -- dst1_data_stream_1_V_write assign process. --
    dst1_data_stream_1_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst1_data_stream_1_V_write <= ap_const_logic_1;
        else 
            dst1_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst1_data_stream_2_V_din <= src_data_stream_2_V_dout;

    -- dst1_data_stream_2_V_write assign process. --
    dst1_data_stream_2_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst1_data_stream_2_V_write <= ap_const_logic_1;
        else 
            dst1_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst2_data_stream_0_V_din <= src_data_stream_0_V_dout;

    -- dst2_data_stream_0_V_write assign process. --
    dst2_data_stream_0_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst2_data_stream_0_V_write <= ap_const_logic_1;
        else 
            dst2_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst2_data_stream_1_V_din <= src_data_stream_1_V_dout;

    -- dst2_data_stream_1_V_write assign process. --
    dst2_data_stream_1_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst2_data_stream_1_V_write <= ap_const_logic_1;
        else 
            dst2_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    dst2_data_stream_2_V_din <= src_data_stream_2_V_dout;

    -- dst2_data_stream_2_V_write assign process. --
    dst2_data_stream_2_V_write_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            dst2_data_stream_2_V_write <= ap_const_logic_1;
        else 
            dst2_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    exitcond3_i_fu_174_p2 <= "1" when (p_cast_i_fu_170_p1 = rows_V_reg_200) else "0";
    exitcond_i_fu_189_p2 <= "1" when (p_3_cast_i_fu_185_p1 = cols_V_reg_205) else "0";
    i_V_fu_179_p2 <= std_logic_vector(unsigned(p_i_reg_148) + unsigned(ap_const_lv11_1));
    j_V_fu_194_p2 <= std_logic_vector(unsigned(p_3_i_reg_159) + unsigned(ap_const_lv11_1));
    p_3_cast_i_fu_185_p1 <= std_logic_vector(resize(unsigned(p_3_i_reg_159),12));
    p_cast_i_fu_170_p1 <= std_logic_vector(resize(unsigned(p_i_reg_148),12));

    -- src_cols_V_read assign process. --
    src_cols_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_85)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_85))) then 
            src_cols_V_read <= ap_const_logic_1;
        else 
            src_cols_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- src_data_stream_0_V_read assign process. --
    src_data_stream_0_V_read_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            src_data_stream_0_V_read <= ap_const_logic_1;
        else 
            src_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- src_data_stream_1_V_read assign process. --
    src_data_stream_1_V_read_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            src_data_stream_1_V_read <= ap_const_logic_1;
        else 
            src_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- src_data_stream_2_V_read assign process. --
    src_data_stream_2_V_read_assign_proc : process(exitcond_i_reg_219, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_140, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond_i_reg_219 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_140 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            src_data_stream_2_V_read <= ap_const_logic_1;
        else 
            src_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- src_rows_V_read assign process. --
    src_rows_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_85)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_85))) then 
            src_rows_V_read <= ap_const_logic_1;
        else 
            src_rows_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
