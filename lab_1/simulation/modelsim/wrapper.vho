-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

-- DATE "02/07/2017 12:10:27"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	wrapper IS
    PORT (
	Clock : IN std_logic;
	X : IN std_logic_vector(7 DOWNTO 0);
	Y : IN std_logic_vector(7 DOWNTO 0);
	Subtract : IN std_logic;
	Sum : BUFFER std_logic_vector(7 DOWNTO 0);
	Carryout : BUFFER std_logic
	);
END wrapper;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carryout	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Subtract	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Subtract : std_logic;
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Carryout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \B[0]~feeder_combout\ : std_logic;
SIGNAL \A1|A0|s~combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Subtract~input_o\ : std_logic;
SIGNAL \S~q\ : std_logic;
SIGNAL \A1|A1|s~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \A1|X3~combout\ : std_logic;
SIGNAL \A1|A1|Cout~0_combout\ : std_logic;
SIGNAL \A1|A2|s~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \A1|X4~combout\ : std_logic;
SIGNAL \A1|A3|s~combout\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \A1|A4|s~0_combout\ : std_logic;
SIGNAL \A1|A4|s~combout\ : std_logic;
SIGNAL \A1|X5~combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \A1|X6~combout\ : std_logic;
SIGNAL \A1|A3|Cout~0_combout\ : std_logic;
SIGNAL \A1|A5|s~combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \B[6]~feeder_combout\ : std_logic;
SIGNAL \A1|A6|s~0_combout\ : std_logic;
SIGNAL \A1|A6|s~combout\ : std_logic;
SIGNAL \B[6]~DUPLICATE_q\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \A[7]~feeder_combout\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \A1|A5|Cout~0_combout\ : std_logic;
SIGNAL \A1|A7|s~combout\ : std_logic;
SIGNAL \A1|A7|Cout~0_combout\ : std_logic;
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_B[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_X[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[0]~input_o\ : std_logic;
SIGNAL ALT_INV_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \A1|A5|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \A1|A6|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_X6~combout\ : std_logic;
SIGNAL \A1|A3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_X5~combout\ : std_logic;
SIGNAL \A1|A4|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_X4~combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_X3~combout\ : std_logic;
SIGNAL \ALT_INV_S~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_X <= X;
ww_Y <= Y;
ww_Subtract <= Subtract;
Sum <= ww_Sum;
Carryout <= ww_Carryout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[6]~DUPLICATE_q\ <= NOT \B[6]~DUPLICATE_q\;
\ALT_INV_X[7]~input_o\ <= NOT \X[7]~input_o\;
\ALT_INV_Y[6]~input_o\ <= NOT \Y[6]~input_o\;
\ALT_INV_Y[0]~input_o\ <= NOT \Y[0]~input_o\;
ALT_INV_B(7) <= NOT B(7);
ALT_INV_A(7) <= NOT A(7);
\A1|A5|ALT_INV_Cout~0_combout\ <= NOT \A1|A5|Cout~0_combout\;
\A1|A6|ALT_INV_s~0_combout\ <= NOT \A1|A6|s~0_combout\;
ALT_INV_B(6) <= NOT B(6);
ALT_INV_A(6) <= NOT A(6);
\A1|ALT_INV_X6~combout\ <= NOT \A1|X6~combout\;
ALT_INV_B(5) <= NOT B(5);
ALT_INV_A(5) <= NOT A(5);
\A1|A3|ALT_INV_Cout~0_combout\ <= NOT \A1|A3|Cout~0_combout\;
\A1|ALT_INV_X5~combout\ <= NOT \A1|X5~combout\;
\A1|A4|ALT_INV_s~0_combout\ <= NOT \A1|A4|s~0_combout\;
ALT_INV_B(4) <= NOT B(4);
ALT_INV_A(4) <= NOT A(4);
\A1|ALT_INV_X4~combout\ <= NOT \A1|X4~combout\;
ALT_INV_B(3) <= NOT B(3);
ALT_INV_A(3) <= NOT A(3);
\A1|A1|ALT_INV_Cout~0_combout\ <= NOT \A1|A1|Cout~0_combout\;
\A1|ALT_INV_X3~combout\ <= NOT \A1|X3~combout\;
ALT_INV_B(2) <= NOT B(2);
ALT_INV_A(2) <= NOT A(2);
ALT_INV_B(1) <= NOT B(1);
\ALT_INV_S~q\ <= NOT \S~q\;
ALT_INV_A(1) <= NOT A(1);
ALT_INV_A(0) <= NOT A(0);
ALT_INV_B(0) <= NOT B(0);

-- Location: IOOBUF_X32_Y0_N53
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A0|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X40_Y0_N36
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A1|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X52_Y0_N36
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A2|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X52_Y0_N53
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A3|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X54_Y0_N36
\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A4|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(4));

-- Location: IOOBUF_X60_Y0_N53
\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A5|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(5));

-- Location: IOOBUF_X60_Y0_N36
\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A6|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(6));

-- Location: IOOBUF_X62_Y0_N53
\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A7|s~combout\,
	devoe => ww_devoe,
	o => ww_Sum(7));

-- Location: IOOBUF_X64_Y0_N36
\Carryout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|A7|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_Carryout);

-- Location: IOIBUF_X34_Y81_N75
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G14
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y81_N18
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: FF_X60_Y1_N2
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: IOIBUF_X74_Y81_N58
\Y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LABCELL_X64_Y1_N30
\B[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~feeder_combout\ = \Y[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[0]~input_o\,
	combout => \B[0]~feeder_combout\);

-- Location: FF_X64_Y1_N32
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LABCELL_X60_Y1_N0
\A1|A0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A0|s~combout\ = ( B(0) & ( !A(0) ) ) # ( !B(0) & ( A(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	dataf => ALT_INV_B(0),
	combout => \A1|A0|s~combout\);

-- Location: IOIBUF_X74_Y81_N41
\Y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: FF_X60_Y1_N14
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: IOIBUF_X30_Y81_N1
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: FF_X60_Y1_N11
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: IOIBUF_X62_Y0_N35
\Subtract~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Subtract,
	o => \Subtract~input_o\);

-- Location: FF_X60_Y1_N8
S : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Subtract~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S~q\);

-- Location: LABCELL_X60_Y1_N9
\A1|A1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|s~combout\ = ( \S~q\ & ( !B(1) $ (!A(1) $ (((!A(0) & B(0))))) ) ) # ( !\S~q\ & ( !B(1) $ (!A(1) $ (((A(0) & B(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100100111001110001100011100111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(0),
	datab => ALT_INV_B(1),
	datac => ALT_INV_B(0),
	datad => ALT_INV_A(1),
	dataf => \ALT_INV_S~q\,
	combout => \A1|A1|s~combout\);

-- Location: IOIBUF_X36_Y81_N52
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: FF_X60_Y1_N50
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: IOIBUF_X74_Y81_N92
\Y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: FF_X60_Y1_N59
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LABCELL_X60_Y1_N57
\A1|X3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|X3~combout\ = ( !B(2) & ( \S~q\ ) ) # ( B(2) & ( !\S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_B(2),
	dataf => \ALT_INV_S~q\,
	combout => \A1|X3~combout\);

-- Location: LABCELL_X60_Y1_N6
\A1|A1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|Cout~0_combout\ = ( A(1) & ( (!B(0) & (((\S~q\) # (B(1))))) # (B(0) & ((!B(1) $ (!\S~q\)) # (A(0)))) ) ) # ( !A(1) & ( (!B(0) & (((!B(1) & \S~q\)))) # (B(0) & (A(0) & (!B(1) $ (!\S~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000100000000011100010000110111111111010011011111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(0),
	datab => ALT_INV_B(1),
	datac => ALT_INV_B(0),
	datad => \ALT_INV_S~q\,
	dataf => ALT_INV_A(1),
	combout => \A1|A1|Cout~0_combout\);

-- Location: LABCELL_X60_Y1_N30
\A1|A2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A2|s~combout\ = ( \A1|A1|Cout~0_combout\ & ( !A(2) $ (\A1|X3~combout\) ) ) # ( !\A1|A1|Cout~0_combout\ & ( !A(2) $ (!\A1|X3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(2),
	datad => \A1|ALT_INV_X3~combout\,
	dataf => \A1|A1|ALT_INV_Cout~0_combout\,
	combout => \A1|A2|s~combout\);

-- Location: IOIBUF_X36_Y81_N35
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: FF_X60_Y1_N5
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: IOIBUF_X74_Y81_N75
\Y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: FF_X60_Y1_N56
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: LABCELL_X60_Y1_N36
\A1|X4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|X4~combout\ = ( !B(3) & ( \S~q\ ) ) # ( B(3) & ( !\S~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_B(3),
	dataf => \ALT_INV_S~q\,
	combout => \A1|X4~combout\);

-- Location: LABCELL_X60_Y1_N42
\A1|A3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A3|s~combout\ = ( \A1|A1|Cout~0_combout\ & ( !A(3) $ (!\A1|X4~combout\ $ (((\A1|X3~combout\) # (A(2))))) ) ) # ( !\A1|A1|Cout~0_combout\ & ( !A(3) $ (!\A1|X4~combout\ $ (((A(2) & \A1|X3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(2),
	datab => ALT_INV_A(3),
	datac => \A1|ALT_INV_X4~combout\,
	datad => \A1|ALT_INV_X3~combout\,
	dataf => \A1|A1|ALT_INV_Cout~0_combout\,
	combout => \A1|A3|s~combout\);

-- Location: IOIBUF_X78_Y81_N52
\Y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: FF_X60_Y1_N19
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: IOIBUF_X54_Y81_N52
\X[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: FF_X60_Y1_N47
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LABCELL_X60_Y1_N45
\A1|A4|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A4|s~0_combout\ = ( \S~q\ & ( !B(4) $ (A(4)) ) ) # ( !\S~q\ & ( !B(4) $ (!A(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(4),
	datad => ALT_INV_A(4),
	dataf => \ALT_INV_S~q\,
	combout => \A1|A4|s~0_combout\);

-- Location: LABCELL_X60_Y1_N48
\A1|A4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A4|s~combout\ = ( A(2) & ( \A1|A1|Cout~0_combout\ & ( !\A1|A4|s~0_combout\ $ (((!\A1|X4~combout\ & !A(3)))) ) ) ) # ( !A(2) & ( \A1|A1|Cout~0_combout\ & ( !\A1|A4|s~0_combout\ $ (((!\A1|X4~combout\ & ((!A(3)) # (!\A1|X3~combout\))) # (\A1|X4~combout\ 
-- & (!A(3) & !\A1|X3~combout\)))) ) ) ) # ( A(2) & ( !\A1|A1|Cout~0_combout\ & ( !\A1|A4|s~0_combout\ $ (((!\A1|X4~combout\ & ((!A(3)) # (!\A1|X3~combout\))) # (\A1|X4~combout\ & (!A(3) & !\A1|X3~combout\)))) ) ) ) # ( !A(2) & ( !\A1|A1|Cout~0_combout\ & ( 
-- !\A1|A4|s~0_combout\ $ (((!\A1|X4~combout\) # (!A(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000101111110100000010111111010000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_X4~combout\,
	datab => ALT_INV_A(3),
	datac => \A1|ALT_INV_X3~combout\,
	datad => \A1|A4|ALT_INV_s~0_combout\,
	datae => ALT_INV_A(2),
	dataf => \A1|A1|ALT_INV_Cout~0_combout\,
	combout => \A1|A4|s~combout\);

-- Location: LABCELL_X60_Y1_N18
\A1|X5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|X5~combout\ = ( \S~q\ & ( !B(4) ) ) # ( !\S~q\ & ( B(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(4),
	dataf => \ALT_INV_S~q\,
	combout => \A1|X5~combout\);

-- Location: IOIBUF_X60_Y81_N52
\X[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: FF_X60_Y1_N41
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: IOIBUF_X28_Y0_N52
\Y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: FF_X60_Y1_N23
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: LABCELL_X60_Y1_N21
\A1|X6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|X6~combout\ = ( \S~q\ & ( !B(5) ) ) # ( !\S~q\ & ( B(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(5),
	dataf => \ALT_INV_S~q\,
	combout => \A1|X6~combout\);

-- Location: LABCELL_X60_Y1_N3
\A1|A3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A3|Cout~0_combout\ = ( \A1|A1|Cout~0_combout\ & ( (!\A1|X4~combout\ & (A(3) & ((\A1|X3~combout\) # (A(2))))) # (\A1|X4~combout\ & (((A(3)) # (\A1|X3~combout\)) # (A(2)))) ) ) # ( !\A1|A1|Cout~0_combout\ & ( (!\A1|X4~combout\ & (A(2) & (\A1|X3~combout\ 
-- & A(3)))) # (\A1|X4~combout\ & (((A(2) & \A1|X3~combout\)) # (A(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(2),
	datab => \A1|ALT_INV_X4~combout\,
	datac => \A1|ALT_INV_X3~combout\,
	datad => ALT_INV_A(3),
	dataf => \A1|A1|ALT_INV_Cout~0_combout\,
	combout => \A1|A3|Cout~0_combout\);

-- Location: LABCELL_X60_Y1_N33
\A1|A5|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A5|s~combout\ = ( \A1|A3|Cout~0_combout\ & ( !A(5) $ (!\A1|X6~combout\ $ (((A(4)) # (\A1|X5~combout\)))) ) ) # ( !\A1|A3|Cout~0_combout\ & ( !A(5) $ (!\A1|X6~combout\ $ (((\A1|X5~combout\ & A(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_X5~combout\,
	datab => ALT_INV_A(4),
	datac => ALT_INV_A(5),
	datad => \A1|ALT_INV_X6~combout\,
	dataf => \A1|A3|ALT_INV_Cout~0_combout\,
	combout => \A1|A5|s~combout\);

-- Location: IOIBUF_X66_Y81_N92
\X[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: FF_X61_Y1_N32
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \X[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: IOIBUF_X30_Y0_N52
\Y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LABCELL_X61_Y1_N39
\B[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[6]~feeder_combout\ = \Y[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y[6]~input_o\,
	combout => \B[6]~feeder_combout\);

-- Location: FF_X61_Y1_N40
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \B[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: LABCELL_X61_Y1_N15
\A1|A6|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A6|s~0_combout\ = ( B(6) & ( \S~q\ & ( A(6) ) ) ) # ( !B(6) & ( \S~q\ & ( !A(6) ) ) ) # ( B(6) & ( !\S~q\ & ( !A(6) ) ) ) # ( !B(6) & ( !\S~q\ & ( A(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(6),
	datae => ALT_INV_B(6),
	dataf => \ALT_INV_S~q\,
	combout => \A1|A6|s~0_combout\);

-- Location: LABCELL_X60_Y1_N24
\A1|A6|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A6|s~combout\ = ( \A1|A6|s~0_combout\ & ( \A1|A3|Cout~0_combout\ & ( (!A(5) & ((!\A1|X6~combout\) # ((!\A1|X5~combout\ & !A(4))))) # (A(5) & (!\A1|X5~combout\ & (!\A1|X6~combout\ & !A(4)))) ) ) ) # ( !\A1|A6|s~0_combout\ & ( \A1|A3|Cout~0_combout\ & ( 
-- (!A(5) & (\A1|X6~combout\ & ((A(4)) # (\A1|X5~combout\)))) # (A(5) & (((A(4)) # (\A1|X6~combout\)) # (\A1|X5~combout\))) ) ) ) # ( \A1|A6|s~0_combout\ & ( !\A1|A3|Cout~0_combout\ & ( (!A(5) & ((!\A1|X5~combout\) # ((!\A1|X6~combout\) # (!A(4))))) # (A(5) 
-- & (!\A1|X6~combout\ & ((!\A1|X5~combout\) # (!A(4))))) ) ) ) # ( !\A1|A6|s~0_combout\ & ( !\A1|A3|Cout~0_combout\ & ( (!A(5) & (\A1|X5~combout\ & (\A1|X6~combout\ & A(4)))) # (A(5) & (((\A1|X5~combout\ & A(4))) # (\A1|X6~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111111111001110100000010111001111111110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_X5~combout\,
	datab => ALT_INV_A(5),
	datac => \A1|ALT_INV_X6~combout\,
	datad => ALT_INV_A(4),
	datae => \A1|A6|ALT_INV_s~0_combout\,
	dataf => \A1|A3|ALT_INV_Cout~0_combout\,
	combout => \A1|A6|s~combout\);

-- Location: FF_X61_Y1_N41
\B[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \B[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[6]~DUPLICATE_q\);

-- Location: IOIBUF_X66_Y81_N75
\X[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: LABCELL_X64_Y5_N0
\A[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[7]~feeder_combout\ = \X[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[7]~input_o\,
	combout => \A[7]~feeder_combout\);

-- Location: FF_X64_Y5_N1
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \A[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: IOIBUF_X32_Y0_N35
\Y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: FF_X61_Y1_N50
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Y[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LABCELL_X60_Y1_N12
\A1|A5|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A5|Cout~0_combout\ = ( \A1|X6~combout\ & ( \A1|A3|Cout~0_combout\ & ( ((A(4)) # (\A1|X5~combout\)) # (A(5)) ) ) ) # ( !\A1|X6~combout\ & ( \A1|A3|Cout~0_combout\ & ( (A(5) & ((A(4)) # (\A1|X5~combout\))) ) ) ) # ( \A1|X6~combout\ & ( 
-- !\A1|A3|Cout~0_combout\ & ( ((\A1|X5~combout\ & A(4))) # (A(5)) ) ) ) # ( !\A1|X6~combout\ & ( !\A1|A3|Cout~0_combout\ & ( (A(5) & (\A1|X5~combout\ & A(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110011111100000011001100110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A(5),
	datac => \A1|ALT_INV_X5~combout\,
	datad => ALT_INV_A(4),
	datae => \A1|ALT_INV_X6~combout\,
	dataf => \A1|A3|ALT_INV_Cout~0_combout\,
	combout => \A1|A5|Cout~0_combout\);

-- Location: LABCELL_X61_Y1_N48
\A1|A7|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A7|s~combout\ = ( B(7) & ( \A1|A5|Cout~0_combout\ & ( !A(7) $ (((!A(6) & ((\B[6]~DUPLICATE_q\))) # (A(6) & (!\S~q\)))) ) ) ) # ( !B(7) & ( \A1|A5|Cout~0_combout\ & ( !A(7) $ (((!A(6) & ((!\B[6]~DUPLICATE_q\))) # (A(6) & (\S~q\)))) ) ) ) # ( B(7) & ( 
-- !\A1|A5|Cout~0_combout\ & ( !A(7) $ (((!A(6) & (\S~q\)) # (A(6) & ((\B[6]~DUPLICATE_q\))))) ) ) ) # ( !B(7) & ( !\A1|A5|Cout~0_combout\ & ( !A(7) $ (((!A(6) & (!\S~q\)) # (A(6) & ((!\B[6]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000111100101001011100001100111100101001011100001101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~q\,
	datab => \ALT_INV_B[6]~DUPLICATE_q\,
	datac => ALT_INV_A(7),
	datad => ALT_INV_A(6),
	datae => ALT_INV_B(7),
	dataf => \A1|A5|ALT_INV_Cout~0_combout\,
	combout => \A1|A7|s~combout\);

-- Location: LABCELL_X61_Y1_N30
\A1|A7|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A7|Cout~0_combout\ = ( A(6) & ( \A1|A5|Cout~0_combout\ & ( (!B(7) $ (!\S~q\)) # (A(7)) ) ) ) # ( !A(6) & ( \A1|A5|Cout~0_combout\ & ( (!B(7) & ((!\B[6]~DUPLICATE_q\ & ((\S~q\))) # (\B[6]~DUPLICATE_q\ & (A(7))))) # (B(7) & ((!\B[6]~DUPLICATE_q\ & 
-- (A(7))) # (\B[6]~DUPLICATE_q\ & ((!\S~q\))))) ) ) ) # ( A(6) & ( !\A1|A5|Cout~0_combout\ & ( (!B(7) & ((!\B[6]~DUPLICATE_q\ & ((\S~q\))) # (\B[6]~DUPLICATE_q\ & (A(7))))) # (B(7) & ((!\B[6]~DUPLICATE_q\ & (A(7))) # (\B[6]~DUPLICATE_q\ & ((!\S~q\))))) ) ) 
-- ) # ( !A(6) & ( !\A1|A5|Cout~0_combout\ & ( (A(7) & (!B(7) $ (!\S~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000101111000111000010111100011100101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(7),
	datab => \ALT_INV_B[6]~DUPLICATE_q\,
	datac => ALT_INV_A(7),
	datad => \ALT_INV_S~q\,
	datae => ALT_INV_A(6),
	dataf => \A1|A5|ALT_INV_Cout~0_combout\,
	combout => \A1|A7|Cout~0_combout\);

-- Location: LABCELL_X74_Y55_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


