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
-- VHDL created on Tue May 02 22:57:22 2017


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
        xIn_0 : in std_logic_vector(7 downto 0);  -- sfix8
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(34 downto 0);  -- sfix35
        xOut_1 : out std_logic_vector(34 downto 0);  -- sfix35
        xOut_2 : out std_logic_vector(34 downto 0);  -- sfix35
        clk : in std_logic;
        areset : in std_logic
    );
end soc_system_fir_compiler_ii_0_rtl_core;

architecture normal of soc_system_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    type u0_m0_wo0_cma0_a0type is array(0 to 12) of SIGNED(7 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_a0type;
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_c0type is array(0 to 12) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_c0type;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_rtype is array(0 to 12) of SIGNED(21 downto 0);
    signal u0_m0_wo0_cma0_r : u0_m0_wo0_cma0_rtype;
    type u0_m0_wo0_cma0_ptype is array(0 to 12) of SIGNED(29 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_ptype;
    type u0_m0_wo0_cma0_utype is array(0 to 12) of SIGNED(33 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_utype;
    type u0_m0_wo0_cma0_k0type is array(0 to 7) of SIGNED(21 downto 0);
    signal u0_m0_wo0_cma0_k0 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-531129,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k1 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(1206191,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k2 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k3 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k4 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k5 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k6 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k7 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k8 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-1074611,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k9 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(506564,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k10 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k11 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-303901,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k12 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(358133,22),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_utype;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo1_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    type u0_m0_wo1_cma0_a0type is array(0 to 11) of SIGNED(7 downto 0);
    signal u0_m0_wo1_cma0_a0 : u0_m0_wo1_cma0_a0type;
    attribute preserve of u0_m0_wo1_cma0_a0 : signal is true;
    type u0_m0_wo1_cma0_c0type is array(0 to 11) of UNSIGNED(2 downto 0);
    signal u0_m0_wo1_cma0_c0 : u0_m0_wo1_cma0_c0type;
    attribute preserve of u0_m0_wo1_cma0_c0 : signal is true;
    type u0_m0_wo1_cma0_rtype is array(0 to 11) of SIGNED(22 downto 0);
    signal u0_m0_wo1_cma0_r : u0_m0_wo1_cma0_rtype;
    type u0_m0_wo1_cma0_ptype is array(0 to 11) of SIGNED(30 downto 0);
    signal u0_m0_wo1_cma0_p : u0_m0_wo1_cma0_ptype;
    type u0_m0_wo1_cma0_utype is array(0 to 11) of SIGNED(34 downto 0);
    signal u0_m0_wo1_cma0_u : u0_m0_wo1_cma0_utype;
    signal u0_m0_wo1_cma0_w : u0_m0_wo1_cma0_utype;
    signal u0_m0_wo1_cma0_x : u0_m0_wo1_cma0_utype;
    signal u0_m0_wo1_cma0_y : u0_m0_wo1_cma0_utype;
    type u0_m0_wo1_cma0_k0type is array(0 to 7) of SIGNED(22 downto 0);
    signal u0_m0_wo1_cma0_k0 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(-4194303,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k1 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(-4194303,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k2 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k3 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k4 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k5 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k6 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k7 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k8 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(-651309,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k9 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(644747,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k10 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(-350659,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_k11 : u0_m0_wo1_cma0_k0type := (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    signal u0_m0_wo1_cma0_s : u0_m0_wo1_cma0_utype;
    signal u0_m0_wo1_cma0_qq : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo1_cma0_q : STD_LOGIC_VECTOR (34 downto 0);
    signal d_u0_m0_wo2_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo2_cma0_a0 : u0_m0_wo1_cma0_a0type;
    attribute preserve of u0_m0_wo2_cma0_a0 : signal is true;
    signal u0_m0_wo2_cma0_c0 : u0_m0_wo1_cma0_c0type;
    attribute preserve of u0_m0_wo2_cma0_c0 : signal is true;
    type u0_m0_wo2_cma0_rtype is array(0 to 11) of SIGNED(21 downto 0);
    signal u0_m0_wo2_cma0_r : u0_m0_wo2_cma0_rtype;
    type u0_m0_wo2_cma0_ptype is array(0 to 11) of SIGNED(29 downto 0);
    signal u0_m0_wo2_cma0_p : u0_m0_wo2_cma0_ptype;
    type u0_m0_wo2_cma0_utype is array(0 to 11) of SIGNED(33 downto 0);
    signal u0_m0_wo2_cma0_u : u0_m0_wo2_cma0_utype;
    signal u0_m0_wo2_cma0_w : u0_m0_wo2_cma0_utype;
    signal u0_m0_wo2_cma0_x : u0_m0_wo2_cma0_utype;
    signal u0_m0_wo2_cma0_y : u0_m0_wo2_cma0_utype;
    signal u0_m0_wo2_cma0_k0 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(1206191,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k1 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-531129,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k2 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k3 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k4 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k5 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k6 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k7 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-911840,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k8 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k9 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(414459,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k10 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(-460485,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_k11 : u0_m0_wo0_cma0_k0type := (
        0 => TO_SIGNED(268139,22),
        others => (others => '0'));
    signal u0_m0_wo2_cma0_s : u0_m0_wo2_cma0_utype;
    signal u0_m0_wo2_cma0_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo2_cma0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal out0_m0_wo0_assign_id7_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- d_u0_m0_wo2_compute_q_11(DELAY,124)@10 + 1
    d_u0_m0_wo2_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo2_compute_q_11_q, clk => clk, aclr => areset );

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo2_cma0(CHAINMULTADD,107)@10 + 2
    -- altera synthesis_off
    u0_m0_wo2_cma0_k0 <= (
        0 => TO_SIGNED(1206191,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k1 <= (
        0 => TO_SIGNED(-531129,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k2 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k3 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k4 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k5 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k6 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k7 <= (
        0 => TO_SIGNED(-911840,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k8 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k9 <= (
        0 => TO_SIGNED(414459,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k10 <= (
        0 => TO_SIGNED(-460485,22),
        others => (others => '0'));
    u0_m0_wo2_cma0_k11 <= (
        0 => TO_SIGNED(268139,22),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo2_cma0_r(0) <= u0_m0_wo2_cma0_k0(TO_INTEGER(u0_m0_wo2_cma0_c0(0)));
    u0_m0_wo2_cma0_r(1) <= u0_m0_wo2_cma0_k1(TO_INTEGER(u0_m0_wo2_cma0_c0(1)));
    u0_m0_wo2_cma0_r(2) <= u0_m0_wo2_cma0_k2(TO_INTEGER(u0_m0_wo2_cma0_c0(2)));
    u0_m0_wo2_cma0_r(3) <= u0_m0_wo2_cma0_k3(TO_INTEGER(u0_m0_wo2_cma0_c0(3)));
    u0_m0_wo2_cma0_r(4) <= u0_m0_wo2_cma0_k4(TO_INTEGER(u0_m0_wo2_cma0_c0(4)));
    u0_m0_wo2_cma0_r(5) <= u0_m0_wo2_cma0_k5(TO_INTEGER(u0_m0_wo2_cma0_c0(5)));
    u0_m0_wo2_cma0_r(6) <= u0_m0_wo2_cma0_k6(TO_INTEGER(u0_m0_wo2_cma0_c0(6)));
    u0_m0_wo2_cma0_r(7) <= u0_m0_wo2_cma0_k7(TO_INTEGER(u0_m0_wo2_cma0_c0(7)));
    u0_m0_wo2_cma0_r(8) <= u0_m0_wo2_cma0_k8(TO_INTEGER(u0_m0_wo2_cma0_c0(8)));
    u0_m0_wo2_cma0_r(9) <= u0_m0_wo2_cma0_k9(TO_INTEGER(u0_m0_wo2_cma0_c0(9)));
    u0_m0_wo2_cma0_r(10) <= u0_m0_wo2_cma0_k10(TO_INTEGER(u0_m0_wo2_cma0_c0(10)));
    u0_m0_wo2_cma0_r(11) <= u0_m0_wo2_cma0_k11(TO_INTEGER(u0_m0_wo2_cma0_c0(11)));
    u0_m0_wo2_cma0_p(0) <= u0_m0_wo2_cma0_a0(0) * u0_m0_wo2_cma0_r(0);
    u0_m0_wo2_cma0_p(1) <= u0_m0_wo2_cma0_a0(1) * u0_m0_wo2_cma0_r(1);
    u0_m0_wo2_cma0_p(2) <= u0_m0_wo2_cma0_a0(2) * u0_m0_wo2_cma0_r(2);
    u0_m0_wo2_cma0_p(3) <= u0_m0_wo2_cma0_a0(3) * u0_m0_wo2_cma0_r(3);
    u0_m0_wo2_cma0_p(4) <= u0_m0_wo2_cma0_a0(4) * u0_m0_wo2_cma0_r(4);
    u0_m0_wo2_cma0_p(5) <= u0_m0_wo2_cma0_a0(5) * u0_m0_wo2_cma0_r(5);
    u0_m0_wo2_cma0_p(6) <= u0_m0_wo2_cma0_a0(6) * u0_m0_wo2_cma0_r(6);
    u0_m0_wo2_cma0_p(7) <= u0_m0_wo2_cma0_a0(7) * u0_m0_wo2_cma0_r(7);
    u0_m0_wo2_cma0_p(8) <= u0_m0_wo2_cma0_a0(8) * u0_m0_wo2_cma0_r(8);
    u0_m0_wo2_cma0_p(9) <= u0_m0_wo2_cma0_a0(9) * u0_m0_wo2_cma0_r(9);
    u0_m0_wo2_cma0_p(10) <= u0_m0_wo2_cma0_a0(10) * u0_m0_wo2_cma0_r(10);
    u0_m0_wo2_cma0_p(11) <= u0_m0_wo2_cma0_a0(11) * u0_m0_wo2_cma0_r(11);
    u0_m0_wo2_cma0_u(0) <= RESIZE(u0_m0_wo2_cma0_p(0),34);
    u0_m0_wo2_cma0_u(1) <= RESIZE(u0_m0_wo2_cma0_p(1),34);
    u0_m0_wo2_cma0_u(2) <= RESIZE(u0_m0_wo2_cma0_p(2),34);
    u0_m0_wo2_cma0_u(3) <= RESIZE(u0_m0_wo2_cma0_p(3),34);
    u0_m0_wo2_cma0_u(4) <= RESIZE(u0_m0_wo2_cma0_p(4),34);
    u0_m0_wo2_cma0_u(5) <= RESIZE(u0_m0_wo2_cma0_p(5),34);
    u0_m0_wo2_cma0_u(6) <= RESIZE(u0_m0_wo2_cma0_p(6),34);
    u0_m0_wo2_cma0_u(7) <= RESIZE(u0_m0_wo2_cma0_p(7),34);
    u0_m0_wo2_cma0_u(8) <= RESIZE(u0_m0_wo2_cma0_p(8),34);
    u0_m0_wo2_cma0_u(9) <= RESIZE(u0_m0_wo2_cma0_p(9),34);
    u0_m0_wo2_cma0_u(10) <= RESIZE(u0_m0_wo2_cma0_p(10),34);
    u0_m0_wo2_cma0_u(11) <= RESIZE(u0_m0_wo2_cma0_p(11),34);
    u0_m0_wo2_cma0_w(0) <= u0_m0_wo2_cma0_u(0);
    u0_m0_wo2_cma0_w(1) <= u0_m0_wo2_cma0_u(1);
    u0_m0_wo2_cma0_w(2) <= u0_m0_wo2_cma0_u(2);
    u0_m0_wo2_cma0_w(3) <= u0_m0_wo2_cma0_u(3);
    u0_m0_wo2_cma0_w(4) <= u0_m0_wo2_cma0_u(4);
    u0_m0_wo2_cma0_w(5) <= u0_m0_wo2_cma0_u(5);
    u0_m0_wo2_cma0_w(6) <= u0_m0_wo2_cma0_u(6);
    u0_m0_wo2_cma0_w(7) <= u0_m0_wo2_cma0_u(7);
    u0_m0_wo2_cma0_w(8) <= u0_m0_wo2_cma0_u(8);
    u0_m0_wo2_cma0_w(9) <= u0_m0_wo2_cma0_u(9);
    u0_m0_wo2_cma0_w(10) <= u0_m0_wo2_cma0_u(10);
    u0_m0_wo2_cma0_w(11) <= u0_m0_wo2_cma0_u(11);
    u0_m0_wo2_cma0_x(0) <= u0_m0_wo2_cma0_w(0);
    u0_m0_wo2_cma0_x(1) <= u0_m0_wo2_cma0_w(1);
    u0_m0_wo2_cma0_x(2) <= u0_m0_wo2_cma0_w(2);
    u0_m0_wo2_cma0_x(3) <= u0_m0_wo2_cma0_w(3);
    u0_m0_wo2_cma0_x(4) <= u0_m0_wo2_cma0_w(4);
    u0_m0_wo2_cma0_x(5) <= u0_m0_wo2_cma0_w(5);
    u0_m0_wo2_cma0_x(6) <= u0_m0_wo2_cma0_w(6);
    u0_m0_wo2_cma0_x(7) <= u0_m0_wo2_cma0_w(7);
    u0_m0_wo2_cma0_x(8) <= u0_m0_wo2_cma0_w(8);
    u0_m0_wo2_cma0_x(9) <= u0_m0_wo2_cma0_w(9);
    u0_m0_wo2_cma0_x(10) <= u0_m0_wo2_cma0_w(10);
    u0_m0_wo2_cma0_x(11) <= u0_m0_wo2_cma0_w(11);
    u0_m0_wo2_cma0_y(0) <= u0_m0_wo2_cma0_s(1) + u0_m0_wo2_cma0_x(0);
    u0_m0_wo2_cma0_y(1) <= u0_m0_wo2_cma0_s(2) + u0_m0_wo2_cma0_x(1);
    u0_m0_wo2_cma0_y(2) <= u0_m0_wo2_cma0_s(3) + u0_m0_wo2_cma0_x(2);
    u0_m0_wo2_cma0_y(3) <= u0_m0_wo2_cma0_s(4) + u0_m0_wo2_cma0_x(3);
    u0_m0_wo2_cma0_y(4) <= u0_m0_wo2_cma0_s(5) + u0_m0_wo2_cma0_x(4);
    u0_m0_wo2_cma0_y(5) <= u0_m0_wo2_cma0_s(6) + u0_m0_wo2_cma0_x(5);
    u0_m0_wo2_cma0_y(6) <= u0_m0_wo2_cma0_s(7) + u0_m0_wo2_cma0_x(6);
    u0_m0_wo2_cma0_y(7) <= u0_m0_wo2_cma0_s(8) + u0_m0_wo2_cma0_x(7);
    u0_m0_wo2_cma0_y(8) <= u0_m0_wo2_cma0_s(9) + u0_m0_wo2_cma0_x(8);
    u0_m0_wo2_cma0_y(9) <= u0_m0_wo2_cma0_s(10) + u0_m0_wo2_cma0_x(9);
    u0_m0_wo2_cma0_y(10) <= u0_m0_wo2_cma0_s(11) + u0_m0_wo2_cma0_x(10);
    u0_m0_wo2_cma0_y(11) <= u0_m0_wo2_cma0_x(11);
    u0_m0_wo2_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo2_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo2_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo2_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo2_cma0_a0(0) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(1) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(2) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(3) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(4) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(5) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(6) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(7) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(8) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(9) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(10) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_a0(11) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo2_cma0_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo2_cma0_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo2_compute_q_11_q = "1") THEN
                u0_m0_wo2_cma0_s(0) <= u0_m0_wo2_cma0_y(0);
                u0_m0_wo2_cma0_s(1) <= u0_m0_wo2_cma0_y(1);
                u0_m0_wo2_cma0_s(2) <= u0_m0_wo2_cma0_y(2);
                u0_m0_wo2_cma0_s(3) <= u0_m0_wo2_cma0_y(3);
                u0_m0_wo2_cma0_s(4) <= u0_m0_wo2_cma0_y(4);
                u0_m0_wo2_cma0_s(5) <= u0_m0_wo2_cma0_y(5);
                u0_m0_wo2_cma0_s(6) <= u0_m0_wo2_cma0_y(6);
                u0_m0_wo2_cma0_s(7) <= u0_m0_wo2_cma0_y(7);
                u0_m0_wo2_cma0_s(8) <= u0_m0_wo2_cma0_y(8);
                u0_m0_wo2_cma0_s(9) <= u0_m0_wo2_cma0_y(9);
                u0_m0_wo2_cma0_s(10) <= u0_m0_wo2_cma0_y(10);
                u0_m0_wo2_cma0_s(11) <= u0_m0_wo2_cma0_y(11);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo2_cma0_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo2_cma0_s(0)(33 downto 0)), xout => u0_m0_wo2_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo2_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo2_cma0_qq(33 downto 0));

    -- d_u0_m0_wo1_compute_q_11(DELAY,123)@10 + 1
    d_u0_m0_wo1_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo1_compute_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cma0(CHAINMULTADD,73)@10 + 2
    -- altera synthesis_off
    u0_m0_wo1_cma0_k0 <= (
        0 => TO_SIGNED(-4194303,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k1 <= (
        0 => TO_SIGNED(-4194303,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k2 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k3 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k4 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k5 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k6 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k7 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k8 <= (
        0 => TO_SIGNED(-651309,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k9 <= (
        0 => TO_SIGNED(644747,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k10 <= (
        0 => TO_SIGNED(-350659,23),
        others => (others => '0'));
    u0_m0_wo1_cma0_k11 <= (
        0 => TO_SIGNED(0,23),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo1_cma0_r(0) <= u0_m0_wo1_cma0_k0(TO_INTEGER(u0_m0_wo1_cma0_c0(0)));
    u0_m0_wo1_cma0_r(1) <= u0_m0_wo1_cma0_k1(TO_INTEGER(u0_m0_wo1_cma0_c0(1)));
    u0_m0_wo1_cma0_r(2) <= u0_m0_wo1_cma0_k2(TO_INTEGER(u0_m0_wo1_cma0_c0(2)));
    u0_m0_wo1_cma0_r(3) <= u0_m0_wo1_cma0_k3(TO_INTEGER(u0_m0_wo1_cma0_c0(3)));
    u0_m0_wo1_cma0_r(4) <= u0_m0_wo1_cma0_k4(TO_INTEGER(u0_m0_wo1_cma0_c0(4)));
    u0_m0_wo1_cma0_r(5) <= u0_m0_wo1_cma0_k5(TO_INTEGER(u0_m0_wo1_cma0_c0(5)));
    u0_m0_wo1_cma0_r(6) <= u0_m0_wo1_cma0_k6(TO_INTEGER(u0_m0_wo1_cma0_c0(6)));
    u0_m0_wo1_cma0_r(7) <= u0_m0_wo1_cma0_k7(TO_INTEGER(u0_m0_wo1_cma0_c0(7)));
    u0_m0_wo1_cma0_r(8) <= u0_m0_wo1_cma0_k8(TO_INTEGER(u0_m0_wo1_cma0_c0(8)));
    u0_m0_wo1_cma0_r(9) <= u0_m0_wo1_cma0_k9(TO_INTEGER(u0_m0_wo1_cma0_c0(9)));
    u0_m0_wo1_cma0_r(10) <= u0_m0_wo1_cma0_k10(TO_INTEGER(u0_m0_wo1_cma0_c0(10)));
    u0_m0_wo1_cma0_r(11) <= u0_m0_wo1_cma0_k11(TO_INTEGER(u0_m0_wo1_cma0_c0(11)));
    u0_m0_wo1_cma0_p(0) <= u0_m0_wo1_cma0_a0(0) * u0_m0_wo1_cma0_r(0);
    u0_m0_wo1_cma0_p(1) <= u0_m0_wo1_cma0_a0(1) * u0_m0_wo1_cma0_r(1);
    u0_m0_wo1_cma0_p(2) <= u0_m0_wo1_cma0_a0(2) * u0_m0_wo1_cma0_r(2);
    u0_m0_wo1_cma0_p(3) <= u0_m0_wo1_cma0_a0(3) * u0_m0_wo1_cma0_r(3);
    u0_m0_wo1_cma0_p(4) <= u0_m0_wo1_cma0_a0(4) * u0_m0_wo1_cma0_r(4);
    u0_m0_wo1_cma0_p(5) <= u0_m0_wo1_cma0_a0(5) * u0_m0_wo1_cma0_r(5);
    u0_m0_wo1_cma0_p(6) <= u0_m0_wo1_cma0_a0(6) * u0_m0_wo1_cma0_r(6);
    u0_m0_wo1_cma0_p(7) <= u0_m0_wo1_cma0_a0(7) * u0_m0_wo1_cma0_r(7);
    u0_m0_wo1_cma0_p(8) <= u0_m0_wo1_cma0_a0(8) * u0_m0_wo1_cma0_r(8);
    u0_m0_wo1_cma0_p(9) <= u0_m0_wo1_cma0_a0(9) * u0_m0_wo1_cma0_r(9);
    u0_m0_wo1_cma0_p(10) <= u0_m0_wo1_cma0_a0(10) * u0_m0_wo1_cma0_r(10);
    u0_m0_wo1_cma0_p(11) <= u0_m0_wo1_cma0_a0(11) * u0_m0_wo1_cma0_r(11);
    u0_m0_wo1_cma0_u(0) <= RESIZE(u0_m0_wo1_cma0_p(0),35);
    u0_m0_wo1_cma0_u(1) <= RESIZE(u0_m0_wo1_cma0_p(1),35);
    u0_m0_wo1_cma0_u(2) <= RESIZE(u0_m0_wo1_cma0_p(2),35);
    u0_m0_wo1_cma0_u(3) <= RESIZE(u0_m0_wo1_cma0_p(3),35);
    u0_m0_wo1_cma0_u(4) <= RESIZE(u0_m0_wo1_cma0_p(4),35);
    u0_m0_wo1_cma0_u(5) <= RESIZE(u0_m0_wo1_cma0_p(5),35);
    u0_m0_wo1_cma0_u(6) <= RESIZE(u0_m0_wo1_cma0_p(6),35);
    u0_m0_wo1_cma0_u(7) <= RESIZE(u0_m0_wo1_cma0_p(7),35);
    u0_m0_wo1_cma0_u(8) <= RESIZE(u0_m0_wo1_cma0_p(8),35);
    u0_m0_wo1_cma0_u(9) <= RESIZE(u0_m0_wo1_cma0_p(9),35);
    u0_m0_wo1_cma0_u(10) <= RESIZE(u0_m0_wo1_cma0_p(10),35);
    u0_m0_wo1_cma0_u(11) <= RESIZE(u0_m0_wo1_cma0_p(11),35);
    u0_m0_wo1_cma0_w(0) <= u0_m0_wo1_cma0_u(0);
    u0_m0_wo1_cma0_w(1) <= u0_m0_wo1_cma0_u(1);
    u0_m0_wo1_cma0_w(2) <= u0_m0_wo1_cma0_u(2);
    u0_m0_wo1_cma0_w(3) <= u0_m0_wo1_cma0_u(3);
    u0_m0_wo1_cma0_w(4) <= u0_m0_wo1_cma0_u(4);
    u0_m0_wo1_cma0_w(5) <= u0_m0_wo1_cma0_u(5);
    u0_m0_wo1_cma0_w(6) <= u0_m0_wo1_cma0_u(6);
    u0_m0_wo1_cma0_w(7) <= u0_m0_wo1_cma0_u(7);
    u0_m0_wo1_cma0_w(8) <= u0_m0_wo1_cma0_u(8);
    u0_m0_wo1_cma0_w(9) <= u0_m0_wo1_cma0_u(9);
    u0_m0_wo1_cma0_w(10) <= u0_m0_wo1_cma0_u(10);
    u0_m0_wo1_cma0_w(11) <= u0_m0_wo1_cma0_u(11);
    u0_m0_wo1_cma0_x(0) <= u0_m0_wo1_cma0_w(0);
    u0_m0_wo1_cma0_x(1) <= u0_m0_wo1_cma0_w(1);
    u0_m0_wo1_cma0_x(2) <= u0_m0_wo1_cma0_w(2);
    u0_m0_wo1_cma0_x(3) <= u0_m0_wo1_cma0_w(3);
    u0_m0_wo1_cma0_x(4) <= u0_m0_wo1_cma0_w(4);
    u0_m0_wo1_cma0_x(5) <= u0_m0_wo1_cma0_w(5);
    u0_m0_wo1_cma0_x(6) <= u0_m0_wo1_cma0_w(6);
    u0_m0_wo1_cma0_x(7) <= u0_m0_wo1_cma0_w(7);
    u0_m0_wo1_cma0_x(8) <= u0_m0_wo1_cma0_w(8);
    u0_m0_wo1_cma0_x(9) <= u0_m0_wo1_cma0_w(9);
    u0_m0_wo1_cma0_x(10) <= u0_m0_wo1_cma0_w(10);
    u0_m0_wo1_cma0_x(11) <= u0_m0_wo1_cma0_w(11);
    u0_m0_wo1_cma0_y(0) <= u0_m0_wo1_cma0_s(1) + u0_m0_wo1_cma0_x(0);
    u0_m0_wo1_cma0_y(1) <= u0_m0_wo1_cma0_s(2) + u0_m0_wo1_cma0_x(1);
    u0_m0_wo1_cma0_y(2) <= u0_m0_wo1_cma0_s(3) + u0_m0_wo1_cma0_x(2);
    u0_m0_wo1_cma0_y(3) <= u0_m0_wo1_cma0_s(4) + u0_m0_wo1_cma0_x(3);
    u0_m0_wo1_cma0_y(4) <= u0_m0_wo1_cma0_s(5) + u0_m0_wo1_cma0_x(4);
    u0_m0_wo1_cma0_y(5) <= u0_m0_wo1_cma0_s(6) + u0_m0_wo1_cma0_x(5);
    u0_m0_wo1_cma0_y(6) <= u0_m0_wo1_cma0_s(7) + u0_m0_wo1_cma0_x(6);
    u0_m0_wo1_cma0_y(7) <= u0_m0_wo1_cma0_s(8) + u0_m0_wo1_cma0_x(7);
    u0_m0_wo1_cma0_y(8) <= u0_m0_wo1_cma0_s(9) + u0_m0_wo1_cma0_x(8);
    u0_m0_wo1_cma0_y(9) <= u0_m0_wo1_cma0_s(10) + u0_m0_wo1_cma0_x(9);
    u0_m0_wo1_cma0_y(10) <= u0_m0_wo1_cma0_s(11) + u0_m0_wo1_cma0_x(10);
    u0_m0_wo1_cma0_y(11) <= u0_m0_wo1_cma0_x(11);
    u0_m0_wo1_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo1_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo1_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo1_cma0_a0(0) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(1) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(2) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(3) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(4) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(5) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(6) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(7) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(8) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(9) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(10) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_a0(11) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo1_cma0_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo1_cma0_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo1_compute_q_11_q = "1") THEN
                u0_m0_wo1_cma0_s(0) <= u0_m0_wo1_cma0_y(0);
                u0_m0_wo1_cma0_s(1) <= u0_m0_wo1_cma0_y(1);
                u0_m0_wo1_cma0_s(2) <= u0_m0_wo1_cma0_y(2);
                u0_m0_wo1_cma0_s(3) <= u0_m0_wo1_cma0_y(3);
                u0_m0_wo1_cma0_s(4) <= u0_m0_wo1_cma0_y(4);
                u0_m0_wo1_cma0_s(5) <= u0_m0_wo1_cma0_y(5);
                u0_m0_wo1_cma0_s(6) <= u0_m0_wo1_cma0_y(6);
                u0_m0_wo1_cma0_s(7) <= u0_m0_wo1_cma0_y(7);
                u0_m0_wo1_cma0_s(8) <= u0_m0_wo1_cma0_y(8);
                u0_m0_wo1_cma0_s(9) <= u0_m0_wo1_cma0_y(9);
                u0_m0_wo1_cma0_s(10) <= u0_m0_wo1_cma0_y(10);
                u0_m0_wo1_cma0_s(11) <= u0_m0_wo1_cma0_y(11);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo1_cma0_delay : dspba_delay
    GENERIC MAP ( width => 35, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo1_cma0_s(0)(34 downto 0)), xout => u0_m0_wo1_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo1_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo1_cma0_qq(34 downto 0));

    -- d_u0_m0_wo0_compute_q_11(DELAY,122)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma0(CHAINMULTADD,39)@10 + 2
    -- altera synthesis_off
    u0_m0_wo0_cma0_k0 <= (
        0 => TO_SIGNED(-531129,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k1 <= (
        0 => TO_SIGNED(1206191,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k2 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k3 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k4 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k5 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k6 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k7 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k8 <= (
        0 => TO_SIGNED(-1074611,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k9 <= (
        0 => TO_SIGNED(506564,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k10 <= (
        0 => TO_SIGNED(0,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k11 <= (
        0 => TO_SIGNED(-303901,22),
        others => (others => '0'));
    u0_m0_wo0_cma0_k12 <= (
        0 => TO_SIGNED(358133,22),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma0_r(0) <= u0_m0_wo0_cma0_k0(TO_INTEGER(u0_m0_wo0_cma0_c0(0)));
    u0_m0_wo0_cma0_r(1) <= u0_m0_wo0_cma0_k1(TO_INTEGER(u0_m0_wo0_cma0_c0(1)));
    u0_m0_wo0_cma0_r(2) <= u0_m0_wo0_cma0_k2(TO_INTEGER(u0_m0_wo0_cma0_c0(2)));
    u0_m0_wo0_cma0_r(3) <= u0_m0_wo0_cma0_k3(TO_INTEGER(u0_m0_wo0_cma0_c0(3)));
    u0_m0_wo0_cma0_r(4) <= u0_m0_wo0_cma0_k4(TO_INTEGER(u0_m0_wo0_cma0_c0(4)));
    u0_m0_wo0_cma0_r(5) <= u0_m0_wo0_cma0_k5(TO_INTEGER(u0_m0_wo0_cma0_c0(5)));
    u0_m0_wo0_cma0_r(6) <= u0_m0_wo0_cma0_k6(TO_INTEGER(u0_m0_wo0_cma0_c0(6)));
    u0_m0_wo0_cma0_r(7) <= u0_m0_wo0_cma0_k7(TO_INTEGER(u0_m0_wo0_cma0_c0(7)));
    u0_m0_wo0_cma0_r(8) <= u0_m0_wo0_cma0_k8(TO_INTEGER(u0_m0_wo0_cma0_c0(8)));
    u0_m0_wo0_cma0_r(9) <= u0_m0_wo0_cma0_k9(TO_INTEGER(u0_m0_wo0_cma0_c0(9)));
    u0_m0_wo0_cma0_r(10) <= u0_m0_wo0_cma0_k10(TO_INTEGER(u0_m0_wo0_cma0_c0(10)));
    u0_m0_wo0_cma0_r(11) <= u0_m0_wo0_cma0_k11(TO_INTEGER(u0_m0_wo0_cma0_c0(11)));
    u0_m0_wo0_cma0_r(12) <= u0_m0_wo0_cma0_k12(TO_INTEGER(u0_m0_wo0_cma0_c0(12)));
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a0(0) * u0_m0_wo0_cma0_r(0);
    u0_m0_wo0_cma0_p(1) <= u0_m0_wo0_cma0_a0(1) * u0_m0_wo0_cma0_r(1);
    u0_m0_wo0_cma0_p(2) <= u0_m0_wo0_cma0_a0(2) * u0_m0_wo0_cma0_r(2);
    u0_m0_wo0_cma0_p(3) <= u0_m0_wo0_cma0_a0(3) * u0_m0_wo0_cma0_r(3);
    u0_m0_wo0_cma0_p(4) <= u0_m0_wo0_cma0_a0(4) * u0_m0_wo0_cma0_r(4);
    u0_m0_wo0_cma0_p(5) <= u0_m0_wo0_cma0_a0(5) * u0_m0_wo0_cma0_r(5);
    u0_m0_wo0_cma0_p(6) <= u0_m0_wo0_cma0_a0(6) * u0_m0_wo0_cma0_r(6);
    u0_m0_wo0_cma0_p(7) <= u0_m0_wo0_cma0_a0(7) * u0_m0_wo0_cma0_r(7);
    u0_m0_wo0_cma0_p(8) <= u0_m0_wo0_cma0_a0(8) * u0_m0_wo0_cma0_r(8);
    u0_m0_wo0_cma0_p(9) <= u0_m0_wo0_cma0_a0(9) * u0_m0_wo0_cma0_r(9);
    u0_m0_wo0_cma0_p(10) <= u0_m0_wo0_cma0_a0(10) * u0_m0_wo0_cma0_r(10);
    u0_m0_wo0_cma0_p(11) <= u0_m0_wo0_cma0_a0(11) * u0_m0_wo0_cma0_r(11);
    u0_m0_wo0_cma0_p(12) <= u0_m0_wo0_cma0_a0(12) * u0_m0_wo0_cma0_r(12);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),34);
    u0_m0_wo0_cma0_u(1) <= RESIZE(u0_m0_wo0_cma0_p(1),34);
    u0_m0_wo0_cma0_u(2) <= RESIZE(u0_m0_wo0_cma0_p(2),34);
    u0_m0_wo0_cma0_u(3) <= RESIZE(u0_m0_wo0_cma0_p(3),34);
    u0_m0_wo0_cma0_u(4) <= RESIZE(u0_m0_wo0_cma0_p(4),34);
    u0_m0_wo0_cma0_u(5) <= RESIZE(u0_m0_wo0_cma0_p(5),34);
    u0_m0_wo0_cma0_u(6) <= RESIZE(u0_m0_wo0_cma0_p(6),34);
    u0_m0_wo0_cma0_u(7) <= RESIZE(u0_m0_wo0_cma0_p(7),34);
    u0_m0_wo0_cma0_u(8) <= RESIZE(u0_m0_wo0_cma0_p(8),34);
    u0_m0_wo0_cma0_u(9) <= RESIZE(u0_m0_wo0_cma0_p(9),34);
    u0_m0_wo0_cma0_u(10) <= RESIZE(u0_m0_wo0_cma0_p(10),34);
    u0_m0_wo0_cma0_u(11) <= RESIZE(u0_m0_wo0_cma0_p(11),34);
    u0_m0_wo0_cma0_u(12) <= RESIZE(u0_m0_wo0_cma0_p(12),34);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_w(1) <= u0_m0_wo0_cma0_u(1);
    u0_m0_wo0_cma0_w(2) <= u0_m0_wo0_cma0_u(2);
    u0_m0_wo0_cma0_w(3) <= u0_m0_wo0_cma0_u(3);
    u0_m0_wo0_cma0_w(4) <= u0_m0_wo0_cma0_u(4);
    u0_m0_wo0_cma0_w(5) <= u0_m0_wo0_cma0_u(5);
    u0_m0_wo0_cma0_w(6) <= u0_m0_wo0_cma0_u(6);
    u0_m0_wo0_cma0_w(7) <= u0_m0_wo0_cma0_u(7);
    u0_m0_wo0_cma0_w(8) <= u0_m0_wo0_cma0_u(8);
    u0_m0_wo0_cma0_w(9) <= u0_m0_wo0_cma0_u(9);
    u0_m0_wo0_cma0_w(10) <= u0_m0_wo0_cma0_u(10);
    u0_m0_wo0_cma0_w(11) <= u0_m0_wo0_cma0_u(11);
    u0_m0_wo0_cma0_w(12) <= u0_m0_wo0_cma0_u(12);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_x(1) <= u0_m0_wo0_cma0_w(1);
    u0_m0_wo0_cma0_x(2) <= u0_m0_wo0_cma0_w(2);
    u0_m0_wo0_cma0_x(3) <= u0_m0_wo0_cma0_w(3);
    u0_m0_wo0_cma0_x(4) <= u0_m0_wo0_cma0_w(4);
    u0_m0_wo0_cma0_x(5) <= u0_m0_wo0_cma0_w(5);
    u0_m0_wo0_cma0_x(6) <= u0_m0_wo0_cma0_w(6);
    u0_m0_wo0_cma0_x(7) <= u0_m0_wo0_cma0_w(7);
    u0_m0_wo0_cma0_x(8) <= u0_m0_wo0_cma0_w(8);
    u0_m0_wo0_cma0_x(9) <= u0_m0_wo0_cma0_w(9);
    u0_m0_wo0_cma0_x(10) <= u0_m0_wo0_cma0_w(10);
    u0_m0_wo0_cma0_x(11) <= u0_m0_wo0_cma0_w(11);
    u0_m0_wo0_cma0_x(12) <= u0_m0_wo0_cma0_w(12);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_s(1) + u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_y(1) <= u0_m0_wo0_cma0_s(2) + u0_m0_wo0_cma0_x(1);
    u0_m0_wo0_cma0_y(2) <= u0_m0_wo0_cma0_s(3) + u0_m0_wo0_cma0_x(2);
    u0_m0_wo0_cma0_y(3) <= u0_m0_wo0_cma0_s(4) + u0_m0_wo0_cma0_x(3);
    u0_m0_wo0_cma0_y(4) <= u0_m0_wo0_cma0_s(5) + u0_m0_wo0_cma0_x(4);
    u0_m0_wo0_cma0_y(5) <= u0_m0_wo0_cma0_s(6) + u0_m0_wo0_cma0_x(5);
    u0_m0_wo0_cma0_y(6) <= u0_m0_wo0_cma0_s(7) + u0_m0_wo0_cma0_x(6);
    u0_m0_wo0_cma0_y(7) <= u0_m0_wo0_cma0_s(8) + u0_m0_wo0_cma0_x(7);
    u0_m0_wo0_cma0_y(8) <= u0_m0_wo0_cma0_s(9) + u0_m0_wo0_cma0_x(8);
    u0_m0_wo0_cma0_y(9) <= u0_m0_wo0_cma0_s(10) + u0_m0_wo0_cma0_x(9);
    u0_m0_wo0_cma0_y(10) <= u0_m0_wo0_cma0_s(11) + u0_m0_wo0_cma0_x(10);
    u0_m0_wo0_cma0_y(11) <= u0_m0_wo0_cma0_s(12) + u0_m0_wo0_cma0_x(11);
    u0_m0_wo0_cma0_y(12) <= u0_m0_wo0_cma0_x(12);
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_cma0_a0(0) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(1) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(2) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(3) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(4) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(5) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(6) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(7) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(8) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(9) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(10) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(11) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_a0(12) <= RESIZE(SIGNED(xIn_0),8);
                u0_m0_wo0_cma0_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_y(0);
                u0_m0_wo0_cma0_s(1) <= u0_m0_wo0_cma0_y(1);
                u0_m0_wo0_cma0_s(2) <= u0_m0_wo0_cma0_y(2);
                u0_m0_wo0_cma0_s(3) <= u0_m0_wo0_cma0_y(3);
                u0_m0_wo0_cma0_s(4) <= u0_m0_wo0_cma0_y(4);
                u0_m0_wo0_cma0_s(5) <= u0_m0_wo0_cma0_y(5);
                u0_m0_wo0_cma0_s(6) <= u0_m0_wo0_cma0_y(6);
                u0_m0_wo0_cma0_s(7) <= u0_m0_wo0_cma0_y(7);
                u0_m0_wo0_cma0_s(8) <= u0_m0_wo0_cma0_y(8);
                u0_m0_wo0_cma0_s(9) <= u0_m0_wo0_cma0_y(9);
                u0_m0_wo0_cma0_s(10) <= u0_m0_wo0_cma0_y(10);
                u0_m0_wo0_cma0_s(11) <= u0_m0_wo0_cma0_y(11);
                u0_m0_wo0_cma0_s(12) <= u0_m0_wo0_cma0_y(12);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(33 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(33 downto 0));

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_oseq_gated_reg(REG,40)@11 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_11_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,110)@12
    out0_m0_wo0_lineup_select_delay_0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_reg_q);

    -- out0_m0_wo0_assign_id7(DELAY,112)@12
    out0_m0_wo0_assign_id7_q <= STD_LOGIC_VECTOR(out0_m0_wo0_lineup_select_delay_0_q);

    -- xOut(PORTOUT,121)@12 + 1
    xOut_v <= out0_m0_wo0_assign_id7_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_cma0_q(33)) & u0_m0_wo0_cma0_q);
    xOut_1 <= u0_m0_wo1_cma0_q;
    xOut_2 <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo2_cma0_q(33)) & u0_m0_wo2_cma0_q);

END normal;
