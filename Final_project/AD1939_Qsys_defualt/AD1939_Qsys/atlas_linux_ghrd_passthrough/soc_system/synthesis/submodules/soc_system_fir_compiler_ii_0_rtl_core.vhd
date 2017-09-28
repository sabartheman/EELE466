-- ------------------------------------------------------------------------- 
-- Intel Altera DSP Builder Advanced Flow Tools Release Version 16.1
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Intel Corporation.  All rights reserved.
-- Your use of  Intel  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Intel FPGA Software License Agreement,
-- Intel  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Intel and sold by
-- Intel or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from soc_system_fir_compiler_ii_0_rtl_core
-- VHDL created on Thu Mar 09 10:07:25 2017


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity soc_system_fir_compiler_ii_0_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(23 downto 0);  -- sfix24
        busIn_writedata : in std_logic_vector(15 downto 0);  -- sfix16
        busIn_address : in std_logic_vector(5 downto 0);  -- sfix6
        busIn_write : in std_logic_vector(0 downto 0);  -- sfix1
        busIn_read : in std_logic_vector(0 downto 0);  -- sfix1
        busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- sfix1
        busOut_readdata : out std_logic_vector(15 downto 0);  -- sfix16
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(45 downto 0);  -- sfix46
        clk : in std_logic;
        areset : in std_logic;
        bus_clk : in std_logic;
        h_areset : in std_logic
    );
end soc_system_fir_compiler_ii_0_rtl_core;

architecture normal of soc_system_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_busIn_read_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_busIn_writedata_11_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rblookup_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rblookup_h : STD_LOGIC_VECTOR (0 downto 0);
    signal rblookup_e : STD_LOGIC_VECTOR (0 downto 0);
    signal rblookup_c : STD_LOGIC_VECTOR (0 downto 0);
    signal d_rblookup_h_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rblookup_valid_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rm_reset0 : std_logic;
    signal rm_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal rm_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal rm_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal rm_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal rm_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_i : SIGNED (6 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_ca0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_ca0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_ca0_i : signal is true;
    signal u0_m0_wo0_ca0_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca0_eq : signal is true;
    signal u0_m0_wo0_dec0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_dec0_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec0_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm0_reset0 : std_logic;
    signal u0_m0_wo0_cm0_reset1 : std_logic;
    signal u0_m0_wo0_cm0_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_cm0_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_cm0_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_cm0_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (15 downto 0);
    type u0_m0_wo0_cma0_a0type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_a0type;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_c0type is array(0 to 0) of SIGNED(15 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_c0type;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_ptype is array(0 to 0) of SIGNED(39 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_ptype;
    type u0_m0_wo0_cma0_utype is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_z : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_anl : STD_LOGIC_VECTOR (0 to 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_mem_reset0 : std_logic;
    signal d_xIn_0_14_mem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_14_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_mem_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_14_mem_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_14_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of d_xIn_0_14_rdcnt_i : signal is true;
    signal d_xIn_0_14_rdcnt_eq : std_logic;
    attribute preserve of d_xIn_0_14_rdcnt_eq : signal is true;
    signal d_xIn_0_14_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of d_xIn_0_14_sticky_ena_q : signal is true;
    signal rblookup_read_hit_a : STD_LOGIC_VECTOR (0 downto 0);
    signal rblookup_read_hit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rblookup_read_hit_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_a : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_cmp_a : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_cmp_b : STD_LOGIC_VECTOR (1 downto 0);
    signal d_xIn_0_14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_14_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_lut_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (5 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- busIn(BUSIN,3)@10

    -- d_busIn_writedata_11(DELAY,45)@10 + 1
    d_busIn_writedata_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_writedata, xout => d_busIn_writedata_11_q, clk => bus_clk, aclr => h_areset );

    -- rblookup(LOOKUP,4)@10 + 1
    rblookup_c <= STD_LOGIC_VECTOR(busIn_write);
    rblookup_clkproc: PROCESS (bus_clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            rblookup_q <= "000000";
            rblookup_h <= "0";
            rblookup_e <= "0";
        ELSIF (bus_clk'EVENT AND bus_clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "000000" => rblookup_q <= "000000";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000001" => rblookup_q <= "000001";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000010" => rblookup_q <= "000010";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000011" => rblookup_q <= "000011";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000100" => rblookup_q <= "000100";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000101" => rblookup_q <= "000101";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000110" => rblookup_q <= "000110";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "000111" => rblookup_q <= "000111";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001000" => rblookup_q <= "001000";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001001" => rblookup_q <= "001001";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001010" => rblookup_q <= "001010";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001011" => rblookup_q <= "001011";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001100" => rblookup_q <= "001100";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001101" => rblookup_q <= "001101";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001110" => rblookup_q <= "001110";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "001111" => rblookup_q <= "001111";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010000" => rblookup_q <= "010000";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010001" => rblookup_q <= "010001";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010010" => rblookup_q <= "010010";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010011" => rblookup_q <= "010011";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010100" => rblookup_q <= "010100";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010101" => rblookup_q <= "010101";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010110" => rblookup_q <= "010110";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "010111" => rblookup_q <= "010111";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011000" => rblookup_q <= "011000";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011001" => rblookup_q <= "011001";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011010" => rblookup_q <= "011010";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011011" => rblookup_q <= "011011";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011100" => rblookup_q <= "011100";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011101" => rblookup_q <= "011101";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011110" => rblookup_q <= "011110";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "011111" => rblookup_q <= "011111";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "100000" => rblookup_q <= "100000";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "100001" => rblookup_q <= "100001";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "100010" => rblookup_q <= "100010";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "100011" => rblookup_q <= "100011";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN "100100" => rblookup_q <= "100100";
                                 rblookup_h <= "1";
                                 rblookup_e <= rblookup_c;
                WHEN OTHERS => rblookup_q <= (others => '-');
                               rblookup_h <= "0";
                               rblookup_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- rm(DUALMEM,7)@11 + 2
    rm_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q);
    rm_aa <= rblookup_q;
    rm_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "SINGLE_PORT",
        width_a => 16,
        widthad_a => 6,
        numwords_a => 37,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "NONE",
        clock_enable_input_a => "NORMAL",
        read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
        power_up_uninitialized => "FALSE",
        init_file => "soc_system_fir_compiler_ii_0_rtl_core_rm.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => bus_clk,
        address_a => rm_aa,
        data_a => rm_ia,
        wren_a => rblookup_e(0),
        q_a => rm_iq
    );
    rm_q <= rm_iq(15 downto 0);

    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- d_busIn_read_12(DELAY,46)@10 + 2
    d_busIn_read_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_read, xout => d_busIn_read_12_q, clk => bus_clk, aclr => h_areset );

    -- d_rblookup_h_12(DELAY,47)@11 + 1
    d_rblookup_h_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rblookup_h, xout => d_rblookup_h_12_q, clk => bus_clk, aclr => h_areset );

    -- rblookup_read_hit(LOGICAL,5)@12
    rblookup_read_hit_a <= STD_LOGIC_VECTOR(d_rblookup_h_12_q);
    rblookup_read_hit_b <= STD_LOGIC_VECTOR(d_busIn_read_12_q);
    rblookup_read_hit_q <= rblookup_read_hit_a and rblookup_read_hit_b;

    -- rblookup_valid(REG,6)@12 + 1
    rblookup_valid_clkproc: PROCESS (bus_clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            rblookup_valid_q <= "0";
        ELSIF (bus_clk'EVENT AND bus_clk = '1') THEN
            rblookup_valid_q <= STD_LOGIC_VECTOR(rblookup_read_hit_q);
        END IF;
    END PROCESS;

    -- busOut(BUSOUT,8)@13
    busOut_readdatavalid <= rblookup_valid_q;
    busOut_readdata <= rm_q;

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_run(ENABLEGENERATOR,15)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(6 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(35, 7);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(6) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-36);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(6 downto 6));
            ELSE
                u0_m0_wo0_run_enableQ <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_preEnaQ <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_preEnaQ and VCC_q;

    -- u0_m0_wo0_memread(DELAY,16)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,17)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca0(COUNTER,29)@12
    -- low=0, high=36, step=1, init=0
    u0_m0_wo0_ca0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_i <= TO_UNSIGNED(0, 6);
            u0_m0_wo0_ca0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca0_i = TO_UNSIGNED(35, 6)) THEN
                    u0_m0_wo0_ca0_eq <= '1';
                ELSE
                    u0_m0_wo0_ca0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca0_eq = '1') THEN
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 28;
                ELSE
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_i, 6)));

    -- u0_m0_wo0_dec0(LOOKUP,30)@10 + 1
    u0_m0_wo0_dec0_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec0_clkproc: PROCESS (bus_clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec0_q <= "100100";
            u0_m0_wo0_dec0_e <= "0";
        ELSIF (bus_clk'EVENT AND bus_clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "000000" => u0_m0_wo0_dec0_q <= "100100";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000001" => u0_m0_wo0_dec0_q <= "100011";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000010" => u0_m0_wo0_dec0_q <= "100010";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000011" => u0_m0_wo0_dec0_q <= "100001";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000100" => u0_m0_wo0_dec0_q <= "100000";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000101" => u0_m0_wo0_dec0_q <= "011111";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000110" => u0_m0_wo0_dec0_q <= "011110";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "000111" => u0_m0_wo0_dec0_q <= "011101";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001000" => u0_m0_wo0_dec0_q <= "011100";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001001" => u0_m0_wo0_dec0_q <= "011011";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001010" => u0_m0_wo0_dec0_q <= "011010";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001011" => u0_m0_wo0_dec0_q <= "011001";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001100" => u0_m0_wo0_dec0_q <= "011000";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001101" => u0_m0_wo0_dec0_q <= "010111";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001110" => u0_m0_wo0_dec0_q <= "010110";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "001111" => u0_m0_wo0_dec0_q <= "010101";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010000" => u0_m0_wo0_dec0_q <= "010100";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010001" => u0_m0_wo0_dec0_q <= "010011";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010010" => u0_m0_wo0_dec0_q <= "010010";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010011" => u0_m0_wo0_dec0_q <= "010001";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010100" => u0_m0_wo0_dec0_q <= "010000";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010101" => u0_m0_wo0_dec0_q <= "001111";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010110" => u0_m0_wo0_dec0_q <= "001110";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "010111" => u0_m0_wo0_dec0_q <= "001101";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011000" => u0_m0_wo0_dec0_q <= "001100";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011001" => u0_m0_wo0_dec0_q <= "001011";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011010" => u0_m0_wo0_dec0_q <= "001010";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011011" => u0_m0_wo0_dec0_q <= "001001";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011100" => u0_m0_wo0_dec0_q <= "001000";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011101" => u0_m0_wo0_dec0_q <= "000111";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011110" => u0_m0_wo0_dec0_q <= "000110";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "011111" => u0_m0_wo0_dec0_q <= "000101";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "100000" => u0_m0_wo0_dec0_q <= "000100";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "100001" => u0_m0_wo0_dec0_q <= "000011";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "100010" => u0_m0_wo0_dec0_q <= "000010";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "100011" => u0_m0_wo0_dec0_q <= "000001";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "100100" => u0_m0_wo0_dec0_q <= "000000";
                                 u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN OTHERS => u0_m0_wo0_dec0_q <= (others => '-');
                               u0_m0_wo0_dec0_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_cm0(DUALMEM,32)@12 + 2
    u0_m0_wo0_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q);
    u0_m0_wo0_cm0_aa <= u0_m0_wo0_dec0_q;
    u0_m0_wo0_cm0_ab <= u0_m0_wo0_ca0_q;
    u0_m0_wo0_cm0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 16,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK1",
        indata_reg_b => "CLOCK1",
        rdcontrol_reg_b => "CLOCK1",
        byteena_reg_b => "CLOCK1",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "soc_system_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm0.hex",
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => '1',
        clocken0 => '1',
        clock0 => bus_clk,
        clock1 => clk,
        address_a => u0_m0_wo0_cm0_aa,
        data_a => u0_m0_wo0_cm0_ia,
        wren_a => u0_m0_wo0_dec0_e(0),
        address_b => u0_m0_wo0_cm0_ab,
        q_b => u0_m0_wo0_cm0_iq
    );
    u0_m0_wo0_cm0_q <= u0_m0_wo0_cm0_iq(15 downto 0);

    -- d_u0_m0_wo0_memread_q_13(DELAY,49)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,24)@13
    -- low=0, high=36, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(1, 6);
            u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count1_i = TO_UNSIGNED(35, 6)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 28;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 6)));

    -- u0_m0_wo0_wi0_r0_ra0_count1_lut(LOOKUP,22)@13
    u0_m0_wo0_wi0_r0_ra0_count1_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count1_q) IS
            WHEN "000000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100101";
            WHEN "000001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100110";
            WHEN "000010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100111";
            WHEN "000011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101000";
            WHEN "000100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101001";
            WHEN "000101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101010";
            WHEN "000110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101011";
            WHEN "000111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101100";
            WHEN "001000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101101";
            WHEN "001001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101110";
            WHEN "001010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101111";
            WHEN "001011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110000";
            WHEN "001100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110001";
            WHEN "001101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110010";
            WHEN "001110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110011";
            WHEN "001111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110100";
            WHEN "010000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110101";
            WHEN "010001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110110";
            WHEN "010010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110111";
            WHEN "010011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111000";
            WHEN "010100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111001";
            WHEN "010101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111010";
            WHEN "010110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111011";
            WHEN "010111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111100";
            WHEN "011000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111101";
            WHEN "011001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111110";
            WHEN "011010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111111";
            WHEN "011011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000000";
            WHEN "011100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000001";
            WHEN "011101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000010";
            WHEN "011110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000011";
            WHEN "011111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000100";
            WHEN "100000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000101";
            WHEN "100001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000110";
            WHEN "100010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000111";
            WHEN "100011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0001000";
            WHEN "100100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0001001";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1_lutreg(REG,23)@13
    u0_m0_wo0_wi0_r0_ra0_count1_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= "0100101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count1_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_inner(COUNTER,19)@13
    -- low=-1, high=35, step=-1, init=35
    u0_m0_wo0_wi0_r0_ra0_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= TO_SIGNED(35, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_inner_i(6 downto 6) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 92;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_inner_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_run(LOGICAL,20)@13
    u0_m0_wo0_wi0_r0_ra0_count0_run_a <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_inner_q);
    u0_m0_wo0_wi0_r0_ra0_count0_run_q <= u0_m0_wo0_wi0_r0_ra0_count0_run_a(6 downto 6);

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,21)@13
    -- low=0, high=63, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0(ADD,25)@13 + 1
    u0_m0_wo0_wi0_r0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count0_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_0_0_q <= u0_m0_wo0_wi0_r0_ra0_add_0_0_o(7 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,26)@14
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_q(5 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_resize_in(5 downto 0));

    -- d_xIn_0_14_notEnable(LOGICAL,59)@10
    d_xIn_0_14_notEnable_a <= STD_LOGIC_VECTOR(VCC_q);
    d_xIn_0_14_notEnable_q <= not (d_xIn_0_14_notEnable_a);

    -- d_xIn_0_14_nor(LOGICAL,60)@10
    d_xIn_0_14_nor_a <= STD_LOGIC_VECTOR(d_xIn_0_14_notEnable_q);
    d_xIn_0_14_nor_b <= STD_LOGIC_VECTOR(d_xIn_0_14_sticky_ena_q);
    d_xIn_0_14_nor_q <= not (d_xIn_0_14_nor_a or d_xIn_0_14_nor_b);

    -- d_xIn_0_14_mem_last(CONSTANT,56)
    d_xIn_0_14_mem_last_q <= "01";

    -- d_xIn_0_14_cmp(LOGICAL,57)@10
    d_xIn_0_14_cmp_a <= d_xIn_0_14_mem_last_q;
    d_xIn_0_14_cmp_b <= d_xIn_0_14_rdcnt_q;
    d_xIn_0_14_cmp_q <= "1" WHEN d_xIn_0_14_cmp_a = d_xIn_0_14_cmp_b ELSE "0";

    -- d_xIn_0_14_cmpReg(REG,58)@10 + 1
    d_xIn_0_14_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_14_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_14_cmpReg_q <= STD_LOGIC_VECTOR(d_xIn_0_14_cmp_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_14_sticky_ena(REG,61)@10 + 1
    d_xIn_0_14_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_14_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_xIn_0_14_nor_q = "1") THEN
                d_xIn_0_14_sticky_ena_q <= STD_LOGIC_VECTOR(d_xIn_0_14_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_14_enaAnd(LOGICAL,62)@10
    d_xIn_0_14_enaAnd_a <= STD_LOGIC_VECTOR(d_xIn_0_14_sticky_ena_q);
    d_xIn_0_14_enaAnd_b <= STD_LOGIC_VECTOR(VCC_q);
    d_xIn_0_14_enaAnd_q <= d_xIn_0_14_enaAnd_a and d_xIn_0_14_enaAnd_b;

    -- d_xIn_0_14_rdcnt(COUNTER,54)@10 + 1
    -- low=0, high=2, step=1, init=0
    d_xIn_0_14_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_14_rdcnt_i <= TO_UNSIGNED(0, 2);
            d_xIn_0_14_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_xIn_0_14_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                d_xIn_0_14_rdcnt_eq <= '1';
            ELSE
                d_xIn_0_14_rdcnt_eq <= '0';
            END IF;
            IF (d_xIn_0_14_rdcnt_eq = '1') THEN
                d_xIn_0_14_rdcnt_i <= d_xIn_0_14_rdcnt_i + 2;
            ELSE
                d_xIn_0_14_rdcnt_i <= d_xIn_0_14_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    d_xIn_0_14_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(d_xIn_0_14_rdcnt_i, 2)));

    -- d_xIn_0_14_wraddr(REG,55)@10 + 1
    d_xIn_0_14_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_14_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_14_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_14_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_14_mem(DUALMEM,53)@10 + 2
    d_xIn_0_14_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    d_xIn_0_14_mem_aa <= d_xIn_0_14_wraddr_q;
    d_xIn_0_14_mem_ab <= d_xIn_0_14_rdcnt_q;
    d_xIn_0_14_mem_reset0 <= areset;
    d_xIn_0_14_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 24,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => d_xIn_0_14_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => d_xIn_0_14_mem_reset0,
        clock1 => clk,
        address_a => d_xIn_0_14_mem_aa,
        data_a => d_xIn_0_14_mem_ia,
        wren_a => VCC_q(0),
        address_b => d_xIn_0_14_mem_ab,
        q_b => d_xIn_0_14_mem_iq
    );
    d_xIn_0_14_mem_q <= d_xIn_0_14_mem_iq(23 downto 0);

    -- d_in0_m0_wi0_wo0_assign_id1_q_14(DELAY,48)@10 + 4
    d_in0_m0_wi0_wo0_assign_id1_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,27)@14
    -- low=0, high=63, step=1, init=9
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(9, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_14_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 6)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,28)@14
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_14_mem_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 24,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_14_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(23 downto 0);

    -- d_u0_m0_wo0_compute_q_13(DELAY,50)@12 + 1
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,34)@13 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "00000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "00000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 36;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_15(DELAY,52)@14 + 1
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,51)@13 + 1
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma0(CHAINMULTADD,33)@14 + 2
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a0(0) * u0_m0_wo0_cma0_c0(0);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),64);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_z(0) <= u0_m0_wo0_cma0_s(0) WHEN u0_m0_wo0_cma0_anl(0) = '1' ELSE "0000000000000000000000000000000000000000000000000000000000000000";
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_anl <= (others => '0');
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_cma0_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_memr0_q),24);
                u0_m0_wo0_cma0_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),16);
                u0_m0_wo0_cma0_anl(0) <= not(u0_m0_wo0_aseq_q(0));
            END IF;
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_z(0) + u0_m0_wo0_cma0_y(0);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 46, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(45 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(45 downto 0));

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,36)@14 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "00100100";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "00000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 36;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,37)@15
    u0_m0_wo0_oseq_gated_a <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_q);
    u0_m0_wo0_oseq_gated_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_15_q);
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,38)@15 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,40)@16
    out0_m0_wo0_lineup_select_delay_0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_reg_q);

    -- out0_m0_wo0_assign_id3(DELAY,42)@16
    out0_m0_wo0_assign_id3_q <= STD_LOGIC_VECTOR(out0_m0_wo0_lineup_select_delay_0_q);

    -- xOut(PORTOUT,43)@16 + 1
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_cma0_q;

END normal;
