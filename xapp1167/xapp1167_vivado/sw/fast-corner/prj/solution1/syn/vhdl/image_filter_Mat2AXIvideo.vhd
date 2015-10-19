-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_Mat2AXIvideo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    img_rows_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    img_cols_V_read : IN STD_LOGIC_VECTOR (11 downto 0);
    img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_data_stream_0_V_read : OUT STD_LOGIC;
    img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_data_stream_1_V_read : OUT STD_LOGIC;
    img_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_2_V_empty_n : IN STD_LOGIC;
    img_data_stream_2_V_read : OUT STD_LOGIC;
    OUTPUT_STREAM_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    OUTPUT_STREAM_TVALID : OUT STD_LOGIC;
    OUTPUT_STREAM_TREADY : IN STD_LOGIC;
    OUTPUT_STREAM_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    OUTPUT_STREAM_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    OUTPUT_STREAM_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of image_filter_Mat2AXIvideo is 
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
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv13_1FFF : STD_LOGIC_VECTOR (12 downto 0) := "1111111111111";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal p_5_reg_160 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_60 : BOOLEAN;
    signal r_V_fu_175_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal r_V_reg_256 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond5_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_74 : BOOLEAN;
    signal i_V_fu_191_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_V_reg_265 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond6_fu_197_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond6_reg_270 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_85 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_99 : BOOLEAN;
    signal ap_sig_ioackin_OUTPUT_STREAM_TREADY : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal j_V_fu_202_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal axi_last_V_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_reg_279 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_reg_149 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_130 : BOOLEAN;
    signal tmp_user_V_fu_86 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ioackin_OUTPUT_STREAM_TREADY : STD_LOGIC := '0';
    signal lhs_V_cast_fu_171_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_cast_fu_208_p1 : STD_LOGIC_VECTOR (12 downto 0);
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
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_186_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ioackin_OUTPUT_STREAM_TREADY assign process. --
    ap_reg_ioackin_OUTPUT_STREAM_TREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_0;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_99 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_logic_1 = OUTPUT_STREAM_TREADY)))) then 
                    ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_1;
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
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond6_fu_197_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_186_p2 = ap_const_lv1_0))) then 
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
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond6_fu_197_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_186_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond6_fu_197_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- p_5_reg_160 assign process. --
    p_5_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond6_fu_197_p2 = ap_const_lv1_0))) then 
                p_5_reg_160 <= j_V_fu_202_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_186_p2 = ap_const_lv1_0))) then 
                p_5_reg_160 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    -- p_s_reg_149 assign process. --
    p_s_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
                p_s_reg_149 <= i_V_reg_265;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_60))) then 
                p_s_reg_149 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    -- tmp_user_V_fu_86 assign process. --
    tmp_user_V_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
                tmp_user_V_fu_86 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_60))) then 
                tmp_user_V_fu_86 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond6_fu_197_p2 = ap_const_lv1_0))) then
                axi_last_V_reg_279 <= axi_last_V_fu_212_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                exitcond6_reg_270 <= exitcond6_fu_197_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_V_reg_265 <= i_V_fu_191_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_60))) then
                r_V_reg_256 <= r_V_fu_175_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_60, exitcond5_fu_186_p2, exitcond6_fu_197_p2, exitcond6_reg_270, ap_reg_ppiten_pp0_it0, ap_sig_bdd_99, ap_sig_ioackin_OUTPUT_STREAM_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_60)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond5_fu_186_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond6_fu_197_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond6_fu_197_p2 = ap_const_lv1_0)))) then
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
    OUTPUT_STREAM_TDATA <= (((ap_const_lv8_FF & img_data_stream_2_V_dout) & img_data_stream_1_V_dout) & img_data_stream_0_V_dout);
    OUTPUT_STREAM_TDEST <= ap_const_lv1_0;
    OUTPUT_STREAM_TID <= ap_const_lv1_0;
    OUTPUT_STREAM_TKEEP <= ap_const_lv4_F;
    OUTPUT_STREAM_TLAST <= axi_last_V_reg_279;
    OUTPUT_STREAM_TSTRB <= ap_const_lv4_0;
    OUTPUT_STREAM_TUSER <= tmp_user_V_fu_86;

    -- OUTPUT_STREAM_TVALID assign process. --
    OUTPUT_STREAM_TVALID_assign_proc : process(exitcond6_reg_270, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_99, ap_reg_ppiten_pp0_it1, ap_reg_ioackin_OUTPUT_STREAM_TREADY)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_99 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_logic_0 = ap_reg_ioackin_OUTPUT_STREAM_TREADY)))) then 
            OUTPUT_STREAM_TVALID <= ap_const_logic_1;
        else 
            OUTPUT_STREAM_TVALID <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond5_fu_186_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_186_p2 = ap_const_lv1_0))))) then 
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
    ap_ready_assign_proc : process(exitcond5_fu_186_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_186_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_130 assign process. --
    ap_sig_bdd_130_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_130 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_60 assign process. --
    ap_sig_bdd_60_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_60 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_74 assign process. --
    ap_sig_bdd_74_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_74 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_85 assign process. --
    ap_sig_bdd_85_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_85 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_99 assign process. --
    ap_sig_bdd_99_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, exitcond6_reg_270)
    begin
                ap_sig_bdd_99 <= (((img_data_stream_0_V_empty_n = ap_const_logic_0) and (exitcond6_reg_270 = ap_const_lv1_0)) or ((exitcond6_reg_270 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond6_reg_270 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_bdd_85)
    begin
        if (ap_sig_bdd_85) then 
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
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_74)
    begin
        if (ap_sig_bdd_74) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_3 assign process. --
    ap_sig_cseq_ST_st5_fsm_3_assign_proc : process(ap_sig_bdd_130)
    begin
        if (ap_sig_bdd_130) then 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_ioackin_OUTPUT_STREAM_TREADY assign process. --
    ap_sig_ioackin_OUTPUT_STREAM_TREADY_assign_proc : process(OUTPUT_STREAM_TREADY, ap_reg_ioackin_OUTPUT_STREAM_TREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_OUTPUT_STREAM_TREADY)) then 
            ap_sig_ioackin_OUTPUT_STREAM_TREADY <= OUTPUT_STREAM_TREADY;
        else 
            ap_sig_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_1;
        end if; 
    end process;

    axi_last_V_fu_212_p2 <= "1" when (tmp_cast_fu_208_p1 = r_V_reg_256) else "0";
    exitcond5_fu_186_p2 <= "1" when (p_s_reg_149 = img_rows_V_read) else "0";
    exitcond6_fu_197_p2 <= "1" when (p_5_reg_160 = img_cols_V_read) else "0";
    i_V_fu_191_p2 <= std_logic_vector(unsigned(p_s_reg_149) + unsigned(ap_const_lv12_1));

    -- img_data_stream_0_V_read assign process. --
    img_data_stream_0_V_read_assign_proc : process(exitcond6_reg_270, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_99, ap_sig_ioackin_OUTPUT_STREAM_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_data_stream_1_V_read assign process. --
    img_data_stream_1_V_read_assign_proc : process(exitcond6_reg_270, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_99, ap_sig_ioackin_OUTPUT_STREAM_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_data_stream_2_V_read assign process. --
    img_data_stream_2_V_read_assign_proc : process(exitcond6_reg_270, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_99, ap_sig_ioackin_OUTPUT_STREAM_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_99 or ((exitcond6_reg_270 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_OUTPUT_STREAM_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_data_stream_2_V_read <= ap_const_logic_1;
        else 
            img_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_202_p2 <= std_logic_vector(unsigned(p_5_reg_160) + unsigned(ap_const_lv12_1));
    lhs_V_cast_fu_171_p1 <= std_logic_vector(resize(unsigned(img_cols_V_read),13));
    r_V_fu_175_p2 <= std_logic_vector(unsigned(lhs_V_cast_fu_171_p1) + unsigned(ap_const_lv13_1FFF));
    tmp_cast_fu_208_p1 <= std_logic_vector(resize(unsigned(p_5_reg_160),13));
end behav;
