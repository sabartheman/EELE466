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

-- DATE "02/21/2017 12:20:51"

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

ENTITY 	rsr IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic_vector(27 DOWNTO 0);
	W : IN std_logic_vector(5 DOWNTO 0);
	F : IN std_logic_vector(5 DOWNTO 0);
	Yout : BUFFER std_logic_vector(46 DOWNTO 0)
	);
END rsr;

-- Design Ports Information
-- Yout[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[5]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[12]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[18]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[19]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[20]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[21]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[22]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[23]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[25]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[28]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[29]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[30]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[32]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[33]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[34]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[35]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[36]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[37]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[38]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[39]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[40]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[41]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[42]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[43]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[44]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[45]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[46]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_input : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_W : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Yout : std_logic_vector(46 DOWNTO 0);
SIGNAL \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input[16]~input_o\ : std_logic;
SIGNAL \linput[16]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b16~q\ : std_logic;
SIGNAL \input[18]~input_o\ : std_logic;
SIGNAL \A1|A1|b18~q\ : std_logic;
SIGNAL \input[19]~input_o\ : std_logic;
SIGNAL \A1|A1|b19~q\ : std_logic;
SIGNAL \input[17]~input_o\ : std_logic;
SIGNAL \A1|A1|b17~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~0_combout\ : std_logic;
SIGNAL \input[23]~input_o\ : std_logic;
SIGNAL \A1|A1|b23~q\ : std_logic;
SIGNAL \input[22]~input_o\ : std_logic;
SIGNAL \linput[22]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b22~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~1_combout\ : std_logic;
SIGNAL \input[21]~input_o\ : std_logic;
SIGNAL \A1|A1|b21~q\ : std_logic;
SIGNAL \input[25]~input_o\ : std_logic;
SIGNAL \A1|A1|b25~q\ : std_logic;
SIGNAL \input[27]~input_o\ : std_logic;
SIGNAL \A1|A1|b27~q\ : std_logic;
SIGNAL \input[26]~input_o\ : std_logic;
SIGNAL \linput[26]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b26~q\ : std_logic;
SIGNAL \input[24]~input_o\ : std_logic;
SIGNAL \linput[24]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b24~q\ : std_logic;
SIGNAL \A1|A1|process_1~1_combout\ : std_logic;
SIGNAL \input[20]~input_o\ : std_logic;
SIGNAL \A1|A1|b20~q\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \linput[15]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b15~q\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \linput[14]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b14~q\ : std_logic;
SIGNAL \A1|A1|process_1~0_combout\ : std_logic;
SIGNAL \A1|A1|process_1~2_combout\ : std_logic;
SIGNAL \A1|A1|b20~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|lzc_count~9_combout\ : std_logic;
SIGNAL \W[2]~input_o\ : std_logic;
SIGNAL \F[2]~input_o\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \F[1]~input_o\ : std_logic;
SIGNAL \F[0]~input_o\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \A1|Add0~26_cout\ : std_logic;
SIGNAL \A1|Add0~27\ : std_logic;
SIGNAL \A1|Add0~2\ : std_logic;
SIGNAL \A1|Add0~3\ : std_logic;
SIGNAL \A1|Add0~6\ : std_logic;
SIGNAL \A1|Add0~7\ : std_logic;
SIGNAL \A1|Add0~9_sumout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \A1|A1|b13~DUPLICATE_q\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \A1|A1|b8~DUPLICATE_q\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \linput[9]~feeder_combout\ : std_logic;
SIGNAL \A1|A1|b9~q\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \A1|A1|b10~q\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \A1|A1|b11~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~11_combout\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \A1|A1|b12~DUPLICATE_q\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \A1|A1|b7~q\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \A1|A1|b6~q\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \A1|A1|b5~q\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \A1|A1|b4~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|lzc_count~10_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~12_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~7_combout\ : std_logic;
SIGNAL \A1|A1|b4~q\ : std_logic;
SIGNAL \A1|A1|b5~DUPLICATE_q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \A1|A1|b2~q\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \A1|A1|b3~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~6_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~8_combout\ : std_logic;
SIGNAL \A1|A1|b27~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|lzc_count~4_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~5_combout\ : std_logic;
SIGNAL \A1|Add0~5_sumout\ : std_logic;
SIGNAL \A1|A1|b22~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|lzc_count~14_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~15_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~2_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \A1|A1|b1~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~16_combout\ : std_logic;
SIGNAL \A1|A1|b8~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~17_combout\ : std_logic;
SIGNAL \A1|A1|lzc_count~3_combout\ : std_logic;
SIGNAL \A1|Add0~1_sumout\ : std_logic;
SIGNAL \A1|Add2~2\ : std_logic;
SIGNAL \A1|Add2~6\ : std_logic;
SIGNAL \A1|Add2~9_sumout\ : std_logic;
SIGNAL \A1|A1|process_1~3_combout\ : std_logic;
SIGNAL \A1|A1|b12~q\ : std_logic;
SIGNAL \A1|A1|lzc_count~13_combout\ : std_logic;
SIGNAL \W[3]~input_o\ : std_logic;
SIGNAL \F[3]~input_o\ : std_logic;
SIGNAL \A1|Add0~10\ : std_logic;
SIGNAL \A1|Add0~11\ : std_logic;
SIGNAL \A1|Add0~13_sumout\ : std_logic;
SIGNAL \A1|Add2~10\ : std_logic;
SIGNAL \A1|Add2~13_sumout\ : std_logic;
SIGNAL \A1|Add2~1_sumout\ : std_logic;
SIGNAL \A1|Add2~5_sumout\ : std_logic;
SIGNAL \A1|ShiftRight0~2_combout\ : std_logic;
SIGNAL \A1|Xb[19]~2_combout\ : std_logic;
SIGNAL \A1|ShiftRight0~1_combout\ : std_logic;
SIGNAL \A1|Xb[19]~3_combout\ : std_logic;
SIGNAL \F[4]~input_o\ : std_logic;
SIGNAL \W[4]~input_o\ : std_logic;
SIGNAL \A1|Add0~14\ : std_logic;
SIGNAL \A1|Add0~15\ : std_logic;
SIGNAL \A1|Add0~17_sumout\ : std_logic;
SIGNAL \A1|A1|b13~q\ : std_logic;
SIGNAL \A1|Add2~14\ : std_logic;
SIGNAL \A1|Add2~17_sumout\ : std_logic;
SIGNAL \A1|Add3~0_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \A1|Add3~1_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \A1|Add3~2_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \W[5]~input_o\ : std_logic;
SIGNAL \F[5]~input_o\ : std_logic;
SIGNAL \A1|Add0~18\ : std_logic;
SIGNAL \A1|Add0~19\ : std_logic;
SIGNAL \A1|Add0~21_sumout\ : std_logic;
SIGNAL \A1|Add2~18\ : std_logic;
SIGNAL \A1|Add2~21_sumout\ : std_logic;
SIGNAL \A1|Xb[26]~0_combout\ : std_logic;
SIGNAL \A1|Xb[19]~4_combout\ : std_logic;
SIGNAL \A1|ShiftRight0~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \A1|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \A1|Xb[19]~1_combout\ : std_logic;
SIGNAL \A1|Xb[19]~5_combout\ : std_logic;
SIGNAL \A1|Xb[20]~9_combout\ : std_logic;
SIGNAL \A1|Xb[20]~6_combout\ : std_logic;
SIGNAL \A1|Xb[20]~11_combout\ : std_logic;
SIGNAL \A1|ShiftRight0~3_combout\ : std_logic;
SIGNAL \A1|Xb[20]~12_combout\ : std_logic;
SIGNAL \A1|Xb[20]~10_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \A1|Xb[20]~7_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \A1|Xb[20]~8_combout\ : std_logic;
SIGNAL \A1|Xb[20]~13_combout\ : std_logic;
SIGNAL \A1|Xb[21]~16_combout\ : std_logic;
SIGNAL \A1|ShiftRight0~4_combout\ : std_logic;
SIGNAL \A1|Xb[21]~17_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \A1|Xb[21]~15_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \A1|Xb[21]~14_combout\ : std_logic;
SIGNAL \A1|Xb[21]~18_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \A1|Xb[22]~19_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \A1|Xb[22]~21_combout\ : std_logic;
SIGNAL \A1|ShiftRight0~5_combout\ : std_logic;
SIGNAL \A1|Xb[22]~22_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \A1|Xb[22]~20_combout\ : std_logic;
SIGNAL \A1|Xb[22]~23_combout\ : std_logic;
SIGNAL \A1|Xb[23]~25_combout\ : std_logic;
SIGNAL \A1|Xb[23]~24_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \A1|Xb[23]~26_combout\ : std_logic;
SIGNAL \A1|Xb[26]~27_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \A1|Xb[24]~28_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \A1|Xb[25]~29_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \A1|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \A1|Xb[26]~30_combout\ : std_logic;
SIGNAL \A1|romlookup|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL linput : std_logic_vector(27 DOWNTO 0);
SIGNAL lF : std_logic_vector(5 DOWNTO 0);
SIGNAL lW : std_logic_vector(5 DOWNTO 0);
SIGNAL \A1|ALT_INV_ShiftLeft0~24_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~23_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[22]~22_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[22]~21_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~22_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[22]~20_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~21_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[22]~19_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[21]~17_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[21]~16_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[21]~15_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[21]~14_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~12_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~11_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~10_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~9_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~8_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~7_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[20]~6_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[19]~4_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[19]~3_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[19]~2_combout\ : std_logic;
SIGNAL ALT_INV_linput : std_logic_vector(27 DOWNTO 0);
SIGNAL \A1|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[19]~1_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[26]~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b4~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b5~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b8~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b12~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b13~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b22~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b27~DUPLICATE_q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b20~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_input[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[14]~input_o\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~17_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~16_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~15_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~14_combout\ : std_logic;
SIGNAL ALT_INV_lW : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_lF : std_logic_vector(5 DOWNTO 0);
SIGNAL \A1|A1|ALT_INV_lzc_count~13_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~12_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~11_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~10_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~9_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~8_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~7_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~6_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~5_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~4_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~3_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b1~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b2~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b3~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b4~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b5~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b6~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b7~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b8~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b9~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b10~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b11~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b12~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b13~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~2_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~1_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b22~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b23~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b21~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b27~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b26~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b24~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b25~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_lzc_count~0_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b18~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b19~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b16~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b17~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b15~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b20~q\ : std_logic;
SIGNAL \A1|A1|ALT_INV_b14~q\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~33_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~32_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~31_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~30_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~29_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~28_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[26]~27_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~27_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~26_combout\ : std_logic;
SIGNAL \A1|ALT_INV_ShiftLeft0~25_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[23]~25_combout\ : std_logic;
SIGNAL \A1|ALT_INV_Xb[23]~24_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_W <= W;
ww_F <= F;
Yout <= ww_Yout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\A1|Xb[26]~30_combout\ & \A1|Xb[25]~29_combout\ & \A1|Xb[24]~28_combout\ & \A1|Xb[23]~26_combout\ & \A1|Xb[22]~23_combout\ & \A1|Xb[21]~18_combout\ & \A1|Xb[20]~13_combout\
& \A1|Xb[19]~5_combout\);

\A1|romlookup|altsyncram_component|auto_generated|q_a\(0) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(1) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(2) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(3) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(4) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(5) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(6) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\A1|romlookup|altsyncram_component|auto_generated|q_a\(7) <= \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\A1|ALT_INV_ShiftLeft0~24_combout\ <= NOT \A1|ShiftLeft0~24_combout\;
\A1|ALT_INV_ShiftLeft0~23_combout\ <= NOT \A1|ShiftLeft0~23_combout\;
\A1|ALT_INV_Xb[22]~22_combout\ <= NOT \A1|Xb[22]~22_combout\;
\A1|ALT_INV_ShiftRight0~5_combout\ <= NOT \A1|ShiftRight0~5_combout\;
\A1|ALT_INV_Xb[22]~21_combout\ <= NOT \A1|Xb[22]~21_combout\;
\A1|ALT_INV_ShiftLeft0~22_combout\ <= NOT \A1|ShiftLeft0~22_combout\;
\A1|ALT_INV_Xb[22]~20_combout\ <= NOT \A1|Xb[22]~20_combout\;
\A1|ALT_INV_ShiftLeft0~21_combout\ <= NOT \A1|ShiftLeft0~21_combout\;
\A1|ALT_INV_ShiftLeft0~20_combout\ <= NOT \A1|ShiftLeft0~20_combout\;
\A1|ALT_INV_ShiftLeft0~19_combout\ <= NOT \A1|ShiftLeft0~19_combout\;
\A1|ALT_INV_ShiftLeft0~18_combout\ <= NOT \A1|ShiftLeft0~18_combout\;
\A1|ALT_INV_Xb[22]~19_combout\ <= NOT \A1|Xb[22]~19_combout\;
\A1|ALT_INV_ShiftLeft0~17_combout\ <= NOT \A1|ShiftLeft0~17_combout\;
\A1|ALT_INV_Xb[21]~17_combout\ <= NOT \A1|Xb[21]~17_combout\;
\A1|ALT_INV_ShiftRight0~4_combout\ <= NOT \A1|ShiftRight0~4_combout\;
\A1|ALT_INV_Xb[21]~16_combout\ <= NOT \A1|Xb[21]~16_combout\;
\A1|ALT_INV_ShiftLeft0~16_combout\ <= NOT \A1|ShiftLeft0~16_combout\;
\A1|ALT_INV_Xb[21]~15_combout\ <= NOT \A1|Xb[21]~15_combout\;
\A1|ALT_INV_ShiftLeft0~15_combout\ <= NOT \A1|ShiftLeft0~15_combout\;
\A1|ALT_INV_ShiftLeft0~14_combout\ <= NOT \A1|ShiftLeft0~14_combout\;
\A1|ALT_INV_ShiftLeft0~13_combout\ <= NOT \A1|ShiftLeft0~13_combout\;
\A1|ALT_INV_ShiftLeft0~12_combout\ <= NOT \A1|ShiftLeft0~12_combout\;
\A1|ALT_INV_Xb[21]~14_combout\ <= NOT \A1|Xb[21]~14_combout\;
\A1|ALT_INV_ShiftLeft0~11_combout\ <= NOT \A1|ShiftLeft0~11_combout\;
\A1|ALT_INV_Xb[20]~12_combout\ <= NOT \A1|Xb[20]~12_combout\;
\A1|ALT_INV_ShiftRight0~3_combout\ <= NOT \A1|ShiftRight0~3_combout\;
\A1|ALT_INV_Xb[20]~11_combout\ <= NOT \A1|Xb[20]~11_combout\;
\A1|ALT_INV_Xb[20]~10_combout\ <= NOT \A1|Xb[20]~10_combout\;
\A1|ALT_INV_Xb[20]~9_combout\ <= NOT \A1|Xb[20]~9_combout\;
\A1|ALT_INV_Xb[20]~8_combout\ <= NOT \A1|Xb[20]~8_combout\;
\A1|ALT_INV_ShiftLeft0~10_combout\ <= NOT \A1|ShiftLeft0~10_combout\;
\A1|ALT_INV_ShiftLeft0~9_combout\ <= NOT \A1|ShiftLeft0~9_combout\;
\A1|ALT_INV_ShiftLeft0~8_combout\ <= NOT \A1|ShiftLeft0~8_combout\;
\A1|ALT_INV_ShiftLeft0~7_combout\ <= NOT \A1|ShiftLeft0~7_combout\;
\A1|ALT_INV_Xb[20]~7_combout\ <= NOT \A1|Xb[20]~7_combout\;
\A1|ALT_INV_ShiftLeft0~6_combout\ <= NOT \A1|ShiftLeft0~6_combout\;
\A1|ALT_INV_Xb[20]~6_combout\ <= NOT \A1|Xb[20]~6_combout\;
\A1|ALT_INV_Xb[19]~4_combout\ <= NOT \A1|Xb[19]~4_combout\;
\A1|ALT_INV_Xb[19]~3_combout\ <= NOT \A1|Xb[19]~3_combout\;
\A1|ALT_INV_Xb[19]~2_combout\ <= NOT \A1|Xb[19]~2_combout\;
ALT_INV_linput(27) <= NOT linput(27);
\A1|ALT_INV_ShiftRight0~2_combout\ <= NOT \A1|ShiftRight0~2_combout\;
ALT_INV_linput(26) <= NOT linput(26);
ALT_INV_linput(24) <= NOT linput(24);
ALT_INV_linput(25) <= NOT linput(25);
ALT_INV_linput(23) <= NOT linput(23);
\A1|ALT_INV_ShiftRight0~1_combout\ <= NOT \A1|ShiftRight0~1_combout\;
ALT_INV_linput(22) <= NOT linput(22);
ALT_INV_linput(20) <= NOT linput(20);
ALT_INV_linput(21) <= NOT linput(21);
\A1|ALT_INV_Xb[19]~1_combout\ <= NOT \A1|Xb[19]~1_combout\;
\A1|ALT_INV_ShiftLeft0~5_combout\ <= NOT \A1|ShiftLeft0~5_combout\;
ALT_INV_linput(3) <= NOT linput(3);
ALT_INV_linput(1) <= NOT linput(1);
ALT_INV_linput(2) <= NOT linput(2);
ALT_INV_linput(0) <= NOT linput(0);
\A1|ALT_INV_ShiftRight0~0_combout\ <= NOT \A1|ShiftRight0~0_combout\;
\A1|ALT_INV_ShiftLeft0~4_combout\ <= NOT \A1|ShiftLeft0~4_combout\;
\A1|ALT_INV_Add3~2_combout\ <= NOT \A1|Add3~2_combout\;
\A1|ALT_INV_Add3~1_combout\ <= NOT \A1|Add3~1_combout\;
\A1|ALT_INV_ShiftLeft0~3_combout\ <= NOT \A1|ShiftLeft0~3_combout\;
ALT_INV_linput(19) <= NOT linput(19);
ALT_INV_linput(17) <= NOT linput(17);
ALT_INV_linput(18) <= NOT linput(18);
ALT_INV_linput(16) <= NOT linput(16);
\A1|ALT_INV_ShiftLeft0~2_combout\ <= NOT \A1|ShiftLeft0~2_combout\;
ALT_INV_linput(11) <= NOT linput(11);
ALT_INV_linput(9) <= NOT linput(9);
ALT_INV_linput(10) <= NOT linput(10);
ALT_INV_linput(8) <= NOT linput(8);
\A1|ALT_INV_ShiftLeft0~1_combout\ <= NOT \A1|ShiftLeft0~1_combout\;
ALT_INV_linput(15) <= NOT linput(15);
ALT_INV_linput(13) <= NOT linput(13);
ALT_INV_linput(14) <= NOT linput(14);
ALT_INV_linput(12) <= NOT linput(12);
\A1|ALT_INV_ShiftLeft0~0_combout\ <= NOT \A1|ShiftLeft0~0_combout\;
ALT_INV_linput(7) <= NOT linput(7);
ALT_INV_linput(5) <= NOT linput(5);
ALT_INV_linput(6) <= NOT linput(6);
ALT_INV_linput(4) <= NOT linput(4);
\A1|ALT_INV_Xb[26]~0_combout\ <= NOT \A1|Xb[26]~0_combout\;
\A1|ALT_INV_Add3~0_combout\ <= NOT \A1|Add3~0_combout\;
\A1|ALT_INV_Add0~21_sumout\ <= NOT \A1|Add0~21_sumout\;
\A1|ALT_INV_Add0~17_sumout\ <= NOT \A1|Add0~17_sumout\;
\A1|ALT_INV_Add0~13_sumout\ <= NOT \A1|Add0~13_sumout\;
\A1|ALT_INV_Add0~9_sumout\ <= NOT \A1|Add0~9_sumout\;
\A1|ALT_INV_Add0~5_sumout\ <= NOT \A1|Add0~5_sumout\;
\A1|ALT_INV_Add0~1_sumout\ <= NOT \A1|Add0~1_sumout\;
\A1|ALT_INV_Add2~21_sumout\ <= NOT \A1|Add2~21_sumout\;
\A1|ALT_INV_Add2~17_sumout\ <= NOT \A1|Add2~17_sumout\;
\A1|ALT_INV_Add2~13_sumout\ <= NOT \A1|Add2~13_sumout\;
\A1|ALT_INV_Add2~9_sumout\ <= NOT \A1|Add2~9_sumout\;
\A1|ALT_INV_Add2~5_sumout\ <= NOT \A1|Add2~5_sumout\;
\A1|ALT_INV_Add2~1_sumout\ <= NOT \A1|Add2~1_sumout\;
\A1|A1|ALT_INV_b4~DUPLICATE_q\ <= NOT \A1|A1|b4~DUPLICATE_q\;
\A1|A1|ALT_INV_b5~DUPLICATE_q\ <= NOT \A1|A1|b5~DUPLICATE_q\;
\A1|A1|ALT_INV_b8~DUPLICATE_q\ <= NOT \A1|A1|b8~DUPLICATE_q\;
\A1|A1|ALT_INV_b12~DUPLICATE_q\ <= NOT \A1|A1|b12~DUPLICATE_q\;
\A1|A1|ALT_INV_b13~DUPLICATE_q\ <= NOT \A1|A1|b13~DUPLICATE_q\;
\A1|A1|ALT_INV_b22~DUPLICATE_q\ <= NOT \A1|A1|b22~DUPLICATE_q\;
\A1|A1|ALT_INV_b27~DUPLICATE_q\ <= NOT \A1|A1|b27~DUPLICATE_q\;
\A1|A1|ALT_INV_b20~DUPLICATE_q\ <= NOT \A1|A1|b20~DUPLICATE_q\;
\ALT_INV_input[26]~input_o\ <= NOT \input[26]~input_o\;
\ALT_INV_input[24]~input_o\ <= NOT \input[24]~input_o\;
\ALT_INV_input[22]~input_o\ <= NOT \input[22]~input_o\;
\ALT_INV_input[16]~input_o\ <= NOT \input[16]~input_o\;
\ALT_INV_input[9]~input_o\ <= NOT \input[9]~input_o\;
\ALT_INV_input[15]~input_o\ <= NOT \input[15]~input_o\;
\ALT_INV_input[14]~input_o\ <= NOT \input[14]~input_o\;
\A1|A1|ALT_INV_lzc_count~17_combout\ <= NOT \A1|A1|lzc_count~17_combout\;
\A1|A1|ALT_INV_lzc_count~16_combout\ <= NOT \A1|A1|lzc_count~16_combout\;
\A1|A1|ALT_INV_lzc_count~15_combout\ <= NOT \A1|A1|lzc_count~15_combout\;
\A1|A1|ALT_INV_lzc_count~14_combout\ <= NOT \A1|A1|lzc_count~14_combout\;
ALT_INV_lW(5) <= NOT lW(5);
ALT_INV_lF(5) <= NOT lF(5);
ALT_INV_lW(4) <= NOT lW(4);
ALT_INV_lF(4) <= NOT lF(4);
ALT_INV_lW(3) <= NOT lW(3);
ALT_INV_lF(3) <= NOT lF(3);
ALT_INV_lW(2) <= NOT lW(2);
ALT_INV_lF(2) <= NOT lF(2);
ALT_INV_lW(1) <= NOT lW(1);
ALT_INV_lF(1) <= NOT lF(1);
ALT_INV_lW(0) <= NOT lW(0);
ALT_INV_lF(0) <= NOT lF(0);
\A1|A1|ALT_INV_lzc_count~13_combout\ <= NOT \A1|A1|lzc_count~13_combout\;
\A1|A1|ALT_INV_process_1~3_combout\ <= NOT \A1|A1|process_1~3_combout\;
\A1|A1|ALT_INV_lzc_count~12_combout\ <= NOT \A1|A1|lzc_count~12_combout\;
\A1|A1|ALT_INV_lzc_count~11_combout\ <= NOT \A1|A1|lzc_count~11_combout\;
\A1|A1|ALT_INV_lzc_count~10_combout\ <= NOT \A1|A1|lzc_count~10_combout\;
\A1|A1|ALT_INV_lzc_count~9_combout\ <= NOT \A1|A1|lzc_count~9_combout\;
\A1|A1|ALT_INV_lzc_count~8_combout\ <= NOT \A1|A1|lzc_count~8_combout\;
\A1|A1|ALT_INV_lzc_count~7_combout\ <= NOT \A1|A1|lzc_count~7_combout\;
\A1|A1|ALT_INV_lzc_count~6_combout\ <= NOT \A1|A1|lzc_count~6_combout\;
\A1|A1|ALT_INV_lzc_count~5_combout\ <= NOT \A1|A1|lzc_count~5_combout\;
\A1|A1|ALT_INV_lzc_count~4_combout\ <= NOT \A1|A1|lzc_count~4_combout\;
\A1|A1|ALT_INV_lzc_count~3_combout\ <= NOT \A1|A1|lzc_count~3_combout\;
\A1|A1|ALT_INV_b1~q\ <= NOT \A1|A1|b1~q\;
\A1|A1|ALT_INV_b2~q\ <= NOT \A1|A1|b2~q\;
\A1|A1|ALT_INV_b3~q\ <= NOT \A1|A1|b3~q\;
\A1|A1|ALT_INV_b4~q\ <= NOT \A1|A1|b4~q\;
\A1|A1|ALT_INV_b5~q\ <= NOT \A1|A1|b5~q\;
\A1|A1|ALT_INV_b6~q\ <= NOT \A1|A1|b6~q\;
\A1|A1|ALT_INV_b7~q\ <= NOT \A1|A1|b7~q\;
\A1|A1|ALT_INV_b8~q\ <= NOT \A1|A1|b8~q\;
\A1|A1|ALT_INV_b9~q\ <= NOT \A1|A1|b9~q\;
\A1|A1|ALT_INV_b10~q\ <= NOT \A1|A1|b10~q\;
\A1|A1|ALT_INV_b11~q\ <= NOT \A1|A1|b11~q\;
\A1|A1|ALT_INV_b12~q\ <= NOT \A1|A1|b12~q\;
\A1|A1|ALT_INV_b13~q\ <= NOT \A1|A1|b13~q\;
\A1|A1|ALT_INV_lzc_count~2_combout\ <= NOT \A1|A1|lzc_count~2_combout\;
\A1|A1|ALT_INV_process_1~2_combout\ <= NOT \A1|A1|process_1~2_combout\;
\A1|A1|ALT_INV_lzc_count~1_combout\ <= NOT \A1|A1|lzc_count~1_combout\;
\A1|A1|ALT_INV_b22~q\ <= NOT \A1|A1|b22~q\;
\A1|A1|ALT_INV_b23~q\ <= NOT \A1|A1|b23~q\;
\A1|A1|ALT_INV_b21~q\ <= NOT \A1|A1|b21~q\;
\A1|A1|ALT_INV_process_1~1_combout\ <= NOT \A1|A1|process_1~1_combout\;
\A1|A1|ALT_INV_b27~q\ <= NOT \A1|A1|b27~q\;
\A1|A1|ALT_INV_b26~q\ <= NOT \A1|A1|b26~q\;
\A1|A1|ALT_INV_b24~q\ <= NOT \A1|A1|b24~q\;
\A1|A1|ALT_INV_b25~q\ <= NOT \A1|A1|b25~q\;
\A1|A1|ALT_INV_lzc_count~0_combout\ <= NOT \A1|A1|lzc_count~0_combout\;
\A1|A1|ALT_INV_b18~q\ <= NOT \A1|A1|b18~q\;
\A1|A1|ALT_INV_b19~q\ <= NOT \A1|A1|b19~q\;
\A1|A1|ALT_INV_b16~q\ <= NOT \A1|A1|b16~q\;
\A1|A1|ALT_INV_b17~q\ <= NOT \A1|A1|b17~q\;
\A1|A1|ALT_INV_process_1~0_combout\ <= NOT \A1|A1|process_1~0_combout\;
\A1|A1|ALT_INV_b15~q\ <= NOT \A1|A1|b15~q\;
\A1|A1|ALT_INV_b20~q\ <= NOT \A1|A1|b20~q\;
\A1|A1|ALT_INV_b14~q\ <= NOT \A1|A1|b14~q\;
\A1|ALT_INV_ShiftLeft0~33_combout\ <= NOT \A1|ShiftLeft0~33_combout\;
\A1|ALT_INV_ShiftLeft0~32_combout\ <= NOT \A1|ShiftLeft0~32_combout\;
\A1|ALT_INV_ShiftLeft0~31_combout\ <= NOT \A1|ShiftLeft0~31_combout\;
\A1|ALT_INV_ShiftLeft0~30_combout\ <= NOT \A1|ShiftLeft0~30_combout\;
\A1|ALT_INV_ShiftLeft0~29_combout\ <= NOT \A1|ShiftLeft0~29_combout\;
\A1|ALT_INV_ShiftLeft0~28_combout\ <= NOT \A1|ShiftLeft0~28_combout\;
\A1|ALT_INV_Xb[26]~27_combout\ <= NOT \A1|Xb[26]~27_combout\;
\A1|ALT_INV_ShiftLeft0~27_combout\ <= NOT \A1|ShiftLeft0~27_combout\;
\A1|ALT_INV_ShiftLeft0~26_combout\ <= NOT \A1|ShiftLeft0~26_combout\;
\A1|ALT_INV_ShiftLeft0~25_combout\ <= NOT \A1|ShiftLeft0~25_combout\;
\A1|ALT_INV_Xb[23]~25_combout\ <= NOT \A1|Xb[23]~25_combout\;
\A1|ALT_INV_Xb[23]~24_combout\ <= NOT \A1|Xb[23]~24_combout\;

-- Location: IOOBUF_X72_Y0_N36
\Yout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_Yout(0));

-- Location: IOOBUF_X70_Y0_N19
\Yout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_Yout(1));

-- Location: IOOBUF_X72_Y0_N19
\Yout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_Yout(2));

-- Location: IOOBUF_X89_Y4_N45
\Yout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_Yout(3));

-- Location: IOOBUF_X89_Y6_N39
\Yout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_Yout(4));

-- Location: IOOBUF_X72_Y0_N2
\Yout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_Yout(5));

-- Location: IOOBUF_X89_Y4_N79
\Yout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_Yout(6));

-- Location: IOOBUF_X89_Y4_N96
\Yout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|romlookup|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_Yout(7));

-- Location: IOOBUF_X34_Y81_N93
\Yout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(8));

-- Location: IOOBUF_X74_Y81_N59
\Yout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(9));

-- Location: IOOBUF_X66_Y81_N59
\Yout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(10));

-- Location: IOOBUF_X78_Y81_N53
\Yout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(11));

-- Location: IOOBUF_X68_Y81_N2
\Yout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(12));

-- Location: IOOBUF_X89_Y9_N5
\Yout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(13));

-- Location: IOOBUF_X30_Y81_N19
\Yout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(14));

-- Location: IOOBUF_X36_Y0_N2
\Yout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(15));

-- Location: IOOBUF_X36_Y81_N36
\Yout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(16));

-- Location: IOOBUF_X8_Y0_N53
\Yout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(17));

-- Location: IOOBUF_X26_Y81_N59
\Yout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(18));

-- Location: IOOBUF_X74_Y81_N76
\Yout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(19));

-- Location: IOOBUF_X40_Y81_N53
\Yout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(20));

-- Location: IOOBUF_X89_Y9_N22
\Yout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(21));

-- Location: IOOBUF_X4_Y0_N19
\Yout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(22));

-- Location: IOOBUF_X89_Y8_N56
\Yout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(23));

-- Location: IOOBUF_X66_Y81_N76
\Yout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(24));

-- Location: IOOBUF_X64_Y81_N19
\Yout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(25));

-- Location: IOOBUF_X76_Y81_N19
\Yout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(26));

-- Location: IOOBUF_X58_Y81_N93
\Yout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(27));

-- Location: IOOBUF_X54_Y81_N53
\Yout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(28));

-- Location: IOOBUF_X8_Y0_N36
\Yout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(29));

-- Location: IOOBUF_X78_Y81_N19
\Yout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(30));

-- Location: IOOBUF_X54_Y81_N19
\Yout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(31));

-- Location: IOOBUF_X68_Y81_N19
\Yout[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(32));

-- Location: IOOBUF_X76_Y81_N36
\Yout[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(33));

-- Location: IOOBUF_X52_Y0_N19
\Yout[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(34));

-- Location: IOOBUF_X70_Y81_N36
\Yout[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(35));

-- Location: IOOBUF_X60_Y81_N36
\Yout[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(36));

-- Location: IOOBUF_X60_Y81_N53
\Yout[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(37));

-- Location: IOOBUF_X34_Y81_N42
\Yout[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(38));

-- Location: IOOBUF_X6_Y0_N53
\Yout[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(39));

-- Location: IOOBUF_X64_Y81_N36
\Yout[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(40));

-- Location: IOOBUF_X4_Y0_N2
\Yout[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(41));

-- Location: IOOBUF_X30_Y81_N36
\Yout[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(42));

-- Location: IOOBUF_X70_Y81_N53
\Yout[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(43));

-- Location: IOOBUF_X78_Y81_N36
\Yout[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(44));

-- Location: IOOBUF_X32_Y81_N36
\Yout[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(45));

-- Location: IOOBUF_X58_Y81_N59
\Yout[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Yout(46));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X64_Y0_N35
\input[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(16),
	o => \input[16]~input_o\);

-- Location: MLABCELL_X65_Y1_N6
\linput[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[16]~feeder_combout\ = ( \input[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[16]~input_o\,
	combout => \linput[16]~feeder_combout\);

-- Location: FF_X65_Y1_N8
\linput[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(16));

-- Location: FF_X65_Y3_N53
\A1|A1|b16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b16~q\);

-- Location: IOIBUF_X64_Y0_N1
\input[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(18),
	o => \input[18]~input_o\);

-- Location: FF_X66_Y1_N41
\linput[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(18));

-- Location: FF_X65_Y3_N17
\A1|A1|b18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b18~q\);

-- Location: IOIBUF_X62_Y0_N18
\input[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(19),
	o => \input[19]~input_o\);

-- Location: FF_X65_Y2_N35
\linput[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(19));

-- Location: FF_X65_Y3_N23
\A1|A1|b19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b19~q\);

-- Location: IOIBUF_X64_Y0_N18
\input[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(17),
	o => \input[17]~input_o\);

-- Location: FF_X65_Y1_N50
\linput[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(17));

-- Location: FF_X65_Y3_N35
\A1|A1|b17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b17~q\);

-- Location: MLABCELL_X65_Y3_N3
\A1|A1|lzc_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~0_combout\ = ( !\A1|A1|b17~q\ & ( (!\A1|A1|b16~q\ & (!\A1|A1|b18~q\ & !\A1|A1|b19~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b16~q\,
	datac => \A1|A1|ALT_INV_b18~q\,
	datad => \A1|A1|ALT_INV_b19~q\,
	dataf => \A1|A1|ALT_INV_b17~q\,
	combout => \A1|A1|lzc_count~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\input[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(23),
	o => \input[23]~input_o\);

-- Location: FF_X65_Y2_N50
\linput[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(23));

-- Location: FF_X65_Y3_N29
\A1|A1|b23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b23~q\);

-- Location: IOIBUF_X89_Y4_N61
\input[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(22),
	o => \input[22]~input_o\);

-- Location: LABCELL_X70_Y2_N42
\linput[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[22]~feeder_combout\ = ( \input[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[22]~input_o\,
	combout => \linput[22]~feeder_combout\);

-- Location: FF_X70_Y2_N44
\linput[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(22));

-- Location: FF_X65_Y3_N13
\A1|A1|b22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b22~q\);

-- Location: MLABCELL_X65_Y3_N48
\A1|A1|lzc_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~1_combout\ = (!\A1|A1|b23~q\ & !\A1|A1|b22~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A1|A1|ALT_INV_b23~q\,
	datad => \A1|A1|ALT_INV_b22~q\,
	combout => \A1|A1|lzc_count~1_combout\);

-- Location: IOIBUF_X54_Y0_N18
\input[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(21),
	o => \input[21]~input_o\);

-- Location: FF_X65_Y2_N2
\linput[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(21));

-- Location: FF_X65_Y3_N47
\A1|A1|b21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b21~q\);

-- Location: IOIBUF_X58_Y0_N75
\input[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(25),
	o => \input[25]~input_o\);

-- Location: FF_X65_Y2_N44
\linput[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(25));

-- Location: FF_X65_Y3_N41
\A1|A1|b25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b25~q\);

-- Location: IOIBUF_X62_Y0_N52
\input[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(27),
	o => \input[27]~input_o\);

-- Location: FF_X65_Y2_N59
\linput[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(27));

-- Location: FF_X65_Y3_N31
\A1|A1|b27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b27~q\);

-- Location: IOIBUF_X58_Y0_N58
\input[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(26),
	o => \input[26]~input_o\);

-- Location: LABCELL_X64_Y2_N24
\linput[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[26]~feeder_combout\ = ( \input[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[26]~input_o\,
	combout => \linput[26]~feeder_combout\);

-- Location: FF_X64_Y2_N26
\linput[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(26));

-- Location: FF_X65_Y3_N56
\A1|A1|b26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b26~q\);

-- Location: IOIBUF_X72_Y0_N52
\input[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(24),
	o => \input[24]~input_o\);

-- Location: LABCELL_X70_Y2_N12
\linput[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[24]~feeder_combout\ = ( \input[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[24]~input_o\,
	combout => \linput[24]~feeder_combout\);

-- Location: FF_X70_Y2_N14
\linput[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(24));

-- Location: FF_X65_Y3_N38
\A1|A1|b24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b24~q\);

-- Location: MLABCELL_X65_Y3_N0
\A1|A1|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|process_1~1_combout\ = ( !\A1|A1|b24~q\ & ( (!\A1|A1|b25~q\ & (!\A1|A1|b27~q\ & !\A1|A1|b26~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|A1|ALT_INV_b25~q\,
	datac => \A1|A1|ALT_INV_b27~q\,
	datad => \A1|A1|ALT_INV_b26~q\,
	dataf => \A1|A1|ALT_INV_b24~q\,
	combout => \A1|A1|process_1~1_combout\);

-- Location: IOIBUF_X66_Y0_N58
\input[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(20),
	o => \input[20]~input_o\);

-- Location: FF_X66_Y1_N17
\linput[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(20));

-- Location: FF_X65_Y3_N59
\A1|A1|b20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b20~q\);

-- Location: IOIBUF_X62_Y0_N35
\input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: MLABCELL_X65_Y1_N12
\linput[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[15]~feeder_combout\ = ( \input[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[15]~input_o\,
	combout => \linput[15]~feeder_combout\);

-- Location: FF_X65_Y1_N14
\linput[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(15));

-- Location: FF_X65_Y3_N10
\A1|A1|b15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b15~q\);

-- Location: IOIBUF_X68_Y0_N18
\input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: LABCELL_X68_Y1_N3
\linput[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[14]~feeder_combout\ = ( \input[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[14]~input_o\,
	combout => \linput[14]~feeder_combout\);

-- Location: FF_X68_Y1_N5
\linput[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(14));

-- Location: FF_X65_Y3_N20
\A1|A1|b14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b14~q\);

-- Location: MLABCELL_X65_Y3_N9
\A1|A1|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|process_1~0_combout\ = ( !\A1|A1|b14~q\ & ( (!\A1|A1|b20~q\ & !\A1|A1|b15~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A1|A1|ALT_INV_b20~q\,
	datad => \A1|A1|ALT_INV_b15~q\,
	dataf => \A1|A1|ALT_INV_b14~q\,
	combout => \A1|A1|process_1~0_combout\);

-- Location: MLABCELL_X65_Y3_N42
\A1|A1|process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|process_1~2_combout\ = ( \A1|A1|process_1~1_combout\ & ( \A1|A1|process_1~0_combout\ & ( (!\A1|A1|lzc_count~0_combout\) # ((!\A1|A1|lzc_count~1_combout\) # (\A1|A1|b21~q\)) ) ) ) # ( !\A1|A1|process_1~1_combout\ & ( \A1|A1|process_1~0_combout\ ) ) 
-- # ( \A1|A1|process_1~1_combout\ & ( !\A1|A1|process_1~0_combout\ ) ) # ( !\A1|A1|process_1~1_combout\ & ( !\A1|A1|process_1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_lzc_count~0_combout\,
	datac => \A1|A1|ALT_INV_lzc_count~1_combout\,
	datad => \A1|A1|ALT_INV_b21~q\,
	datae => \A1|A1|ALT_INV_process_1~1_combout\,
	dataf => \A1|A1|ALT_INV_process_1~0_combout\,
	combout => \A1|A1|process_1~2_combout\);

-- Location: FF_X65_Y3_N58
\A1|A1|b20~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b20~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y3_N21
\A1|A1|lzc_count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~9_combout\ = ( \A1|A1|b20~DUPLICATE_q\ & ( \A1|A1|process_1~1_combout\ ) ) # ( !\A1|A1|b20~DUPLICATE_q\ & ( (\A1|A1|process_1~1_combout\ & (((!\A1|A1|lzc_count~1_combout\) # (\A1|A1|lzc_count~0_combout\)) # (\A1|A1|b21~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101010100010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_process_1~1_combout\,
	datab => \A1|A1|ALT_INV_b21~q\,
	datac => \A1|A1|ALT_INV_lzc_count~1_combout\,
	datad => \A1|A1|ALT_INV_lzc_count~0_combout\,
	dataf => \A1|A1|ALT_INV_b20~DUPLICATE_q\,
	combout => \A1|A1|lzc_count~9_combout\);

-- Location: IOIBUF_X58_Y0_N41
\W[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(2),
	o => \W[2]~input_o\);

-- Location: FF_X66_Y3_N19
\lW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(2));

-- Location: IOIBUF_X56_Y0_N52
\F[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(2),
	o => \F[2]~input_o\);

-- Location: FF_X66_Y3_N52
\lF[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(2));

-- Location: IOIBUF_X54_Y0_N35
\W[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: FF_X66_Y3_N29
\lW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(1));

-- Location: IOIBUF_X60_Y0_N35
\F[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(1),
	o => \F[1]~input_o\);

-- Location: FF_X66_Y3_N59
\lF[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(1));

-- Location: IOIBUF_X56_Y0_N35
\F[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(0),
	o => \F[0]~input_o\);

-- Location: FF_X66_Y3_N55
\lF[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(0));

-- Location: IOIBUF_X52_Y0_N1
\W[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: FF_X66_Y3_N23
\lW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(0));

-- Location: LABCELL_X66_Y3_N30
\A1|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~26_cout\ = CARRY(( VCC ) + ( !VCC ) + ( !VCC ))
-- \A1|Add0~27\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \A1|Add0~26_cout\,
	shareout => \A1|Add0~27\);

-- Location: LABCELL_X66_Y3_N33
\A1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~1_sumout\ = SUM(( !lF(0) $ (lW(0)) ) + ( \A1|Add0~27\ ) + ( \A1|Add0~26_cout\ ))
-- \A1|Add0~2\ = CARRY(( !lF(0) $ (lW(0)) ) + ( \A1|Add0~27\ ) + ( \A1|Add0~26_cout\ ))
-- \A1|Add0~3\ = SHARE((!lF(0) & lW(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lF(0),
	datad => ALT_INV_lW(0),
	cin => \A1|Add0~26_cout\,
	sharein => \A1|Add0~27\,
	sumout => \A1|Add0~1_sumout\,
	cout => \A1|Add0~2\,
	shareout => \A1|Add0~3\);

-- Location: LABCELL_X66_Y3_N36
\A1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~5_sumout\ = SUM(( !lW(1) $ (lF(1)) ) + ( \A1|Add0~3\ ) + ( \A1|Add0~2\ ))
-- \A1|Add0~6\ = CARRY(( !lW(1) $ (lF(1)) ) + ( \A1|Add0~3\ ) + ( \A1|Add0~2\ ))
-- \A1|Add0~7\ = SHARE((lW(1) & !lF(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lW(1),
	datad => ALT_INV_lF(1),
	cin => \A1|Add0~2\,
	sharein => \A1|Add0~3\,
	sumout => \A1|Add0~5_sumout\,
	cout => \A1|Add0~6\,
	shareout => \A1|Add0~7\);

-- Location: LABCELL_X66_Y3_N39
\A1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~9_sumout\ = SUM(( !lW(2) $ (lF(2)) ) + ( \A1|Add0~7\ ) + ( \A1|Add0~6\ ))
-- \A1|Add0~10\ = CARRY(( !lW(2) $ (lF(2)) ) + ( \A1|Add0~7\ ) + ( \A1|Add0~6\ ))
-- \A1|Add0~11\ = SHARE((lW(2) & !lF(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_lW(2),
	datad => ALT_INV_lF(2),
	cin => \A1|Add0~6\,
	sharein => \A1|Add0~7\,
	sumout => \A1|Add0~9_sumout\,
	cout => \A1|Add0~10\,
	shareout => \A1|Add0~11\);

-- Location: IOIBUF_X60_Y0_N1
\input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: FF_X66_Y2_N8
\linput[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(13));

-- Location: FF_X67_Y3_N44
\A1|A1|b13~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b13~DUPLICATE_q\);

-- Location: IOIBUF_X66_Y0_N75
\input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: FF_X66_Y1_N53
\linput[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(8));

-- Location: FF_X67_Y3_N56
\A1|A1|b8~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b8~DUPLICATE_q\);

-- Location: IOIBUF_X66_Y0_N41
\input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LABCELL_X66_Y1_N42
\linput[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \linput[9]~feeder_combout\ = ( \input[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[9]~input_o\,
	combout => \linput[9]~feeder_combout\);

-- Location: FF_X66_Y1_N44
\linput[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \linput[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(9));

-- Location: FF_X67_Y3_N14
\A1|A1|b9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b9~q\);

-- Location: IOIBUF_X68_Y0_N35
\input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: FF_X68_Y2_N47
\linput[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(10));

-- Location: FF_X67_Y3_N35
\A1|A1|b10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b10~q\);

-- Location: IOIBUF_X64_Y0_N52
\input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: FF_X66_Y1_N29
\linput[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(11));

-- Location: FF_X67_Y3_N53
\A1|A1|b11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b11~q\);

-- Location: LABCELL_X67_Y3_N33
\A1|A1|lzc_count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~11_combout\ = ( !\A1|A1|b11~q\ & ( (!\A1|A1|b8~DUPLICATE_q\ & (!\A1|A1|b9~q\ & !\A1|A1|b10~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b8~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_b9~q\,
	datad => \A1|A1|ALT_INV_b10~q\,
	dataf => \A1|A1|ALT_INV_b11~q\,
	combout => \A1|A1|lzc_count~11_combout\);

-- Location: IOIBUF_X66_Y0_N92
\input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: FF_X66_Y2_N5
\linput[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(12));

-- Location: FF_X67_Y3_N2
\A1|A1|b12~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b12~DUPLICATE_q\);

-- Location: IOIBUF_X60_Y0_N18
\input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: FF_X66_Y2_N20
\linput[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(7));

-- Location: FF_X67_Y3_N26
\A1|A1|b7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b7~q\);

-- Location: IOIBUF_X70_Y0_N52
\input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: FF_X67_Y2_N59
\linput[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(6));

-- Location: FF_X67_Y3_N38
\A1|A1|b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b6~q\);

-- Location: IOIBUF_X89_Y6_N4
\input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X67_Y3_N23
\linput[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(5));

-- Location: FF_X67_Y3_N40
\A1|A1|b5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b5~q\);

-- Location: IOIBUF_X68_Y0_N1
\input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: FF_X66_Y2_N29
\linput[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(4));

-- Location: FF_X67_Y3_N20
\A1|A1|b4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b4~DUPLICATE_q\);

-- Location: LABCELL_X67_Y3_N48
\A1|A1|lzc_count~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~10_combout\ = ( !\A1|A1|b4~DUPLICATE_q\ & ( (!\A1|A1|b7~q\ & (!\A1|A1|b6~q\ & !\A1|A1|b5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b7~q\,
	datac => \A1|A1|ALT_INV_b6~q\,
	datad => \A1|A1|ALT_INV_b5~q\,
	dataf => \A1|A1|ALT_INV_b4~DUPLICATE_q\,
	combout => \A1|A1|lzc_count~10_combout\);

-- Location: LABCELL_X67_Y3_N30
\A1|A1|lzc_count~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~12_combout\ = ( \A1|A1|lzc_count~10_combout\ & ( (\A1|A1|b12~DUPLICATE_q\) # (\A1|A1|b13~DUPLICATE_q\) ) ) # ( !\A1|A1|lzc_count~10_combout\ & ( ((\A1|A1|b12~DUPLICATE_q\) # (\A1|A1|lzc_count~11_combout\)) # (\A1|A1|b13~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|A1|ALT_INV_b13~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_lzc_count~11_combout\,
	datad => \A1|A1|ALT_INV_b12~DUPLICATE_q\,
	dataf => \A1|A1|ALT_INV_lzc_count~10_combout\,
	combout => \A1|A1|lzc_count~12_combout\);

-- Location: LABCELL_X67_Y3_N6
\A1|A1|lzc_count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~7_combout\ = ( !\A1|A1|b9~q\ & ( !\A1|A1|b8~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \A1|A1|ALT_INV_b8~DUPLICATE_q\,
	dataf => \A1|A1|ALT_INV_b9~q\,
	combout => \A1|A1|lzc_count~7_combout\);

-- Location: FF_X67_Y3_N19
\A1|A1|b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b4~q\);

-- Location: FF_X67_Y3_N41
\A1|A1|b5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b5~DUPLICATE_q\);

-- Location: IOIBUF_X58_Y0_N92
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X65_Y2_N38
\linput[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(2));

-- Location: FF_X67_Y3_N29
\A1|A1|b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b2~q\);

-- Location: IOIBUF_X70_Y0_N1
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X67_Y2_N23
\linput[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(3));

-- Location: FF_X67_Y3_N11
\A1|A1|b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b3~q\);

-- Location: LABCELL_X67_Y3_N21
\A1|A1|lzc_count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~6_combout\ = ( \A1|A1|b2~q\ & ( \A1|A1|b3~q\ & ( (!\A1|A1|b6~q\ & (!\A1|A1|b7~q\ & ((\A1|A1|b5~DUPLICATE_q\) # (\A1|A1|b4~q\)))) ) ) ) # ( !\A1|A1|b2~q\ & ( \A1|A1|b3~q\ & ( (!\A1|A1|b6~q\ & (!\A1|A1|b7~q\ & ((\A1|A1|b5~DUPLICATE_q\) # 
-- (\A1|A1|b4~q\)))) ) ) ) # ( \A1|A1|b2~q\ & ( !\A1|A1|b3~q\ & ( (!\A1|A1|b6~q\ & (!\A1|A1|b7~q\ & ((\A1|A1|b5~DUPLICATE_q\) # (\A1|A1|b4~q\)))) ) ) ) # ( !\A1|A1|b2~q\ & ( !\A1|A1|b3~q\ & ( (!\A1|A1|b6~q\ & !\A1|A1|b7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001010100000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b6~q\,
	datab => \A1|A1|ALT_INV_b4~q\,
	datac => \A1|A1|ALT_INV_b5~DUPLICATE_q\,
	datad => \A1|A1|ALT_INV_b7~q\,
	datae => \A1|A1|ALT_INV_b2~q\,
	dataf => \A1|A1|ALT_INV_b3~q\,
	combout => \A1|A1|lzc_count~6_combout\);

-- Location: LABCELL_X67_Y3_N57
\A1|A1|lzc_count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~8_combout\ = ( \A1|A1|lzc_count~6_combout\ & ( \A1|A1|b11~q\ & ( (\A1|A1|b13~DUPLICATE_q\) # (\A1|A1|b12~DUPLICATE_q\) ) ) ) # ( !\A1|A1|lzc_count~6_combout\ & ( \A1|A1|b11~q\ & ( (\A1|A1|b13~DUPLICATE_q\) # (\A1|A1|b12~DUPLICATE_q\) ) ) 
-- ) # ( \A1|A1|lzc_count~6_combout\ & ( !\A1|A1|b11~q\ & ( ((!\A1|A1|b10~q\) # (\A1|A1|b13~DUPLICATE_q\)) # (\A1|A1|b12~DUPLICATE_q\) ) ) ) # ( !\A1|A1|lzc_count~6_combout\ & ( !\A1|A1|b11~q\ & ( (((!\A1|A1|lzc_count~7_combout\ & !\A1|A1|b10~q\)) # 
-- (\A1|A1|b13~DUPLICATE_q\)) # (\A1|A1|b12~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101110111111111110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b12~DUPLICATE_q\,
	datab => \A1|A1|ALT_INV_b13~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_lzc_count~7_combout\,
	datad => \A1|A1|ALT_INV_b10~q\,
	datae => \A1|A1|ALT_INV_lzc_count~6_combout\,
	dataf => \A1|A1|ALT_INV_b11~q\,
	combout => \A1|A1|lzc_count~8_combout\);

-- Location: FF_X65_Y3_N32
\A1|A1|b27~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b27~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y3_N15
\A1|A1|lzc_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~4_combout\ = ( \A1|A1|b18~q\ & ( \A1|A1|b17~q\ & ( (!\A1|A1|b21~q\ & !\A1|A1|b20~q\) ) ) ) # ( !\A1|A1|b18~q\ & ( \A1|A1|b17~q\ & ( (!\A1|A1|b21~q\ & (!\A1|A1|b20~q\ & \A1|A1|b19~q\)) ) ) ) # ( \A1|A1|b18~q\ & ( !\A1|A1|b17~q\ & ( 
-- (!\A1|A1|b21~q\ & !\A1|A1|b20~q\) ) ) ) # ( !\A1|A1|b18~q\ & ( !\A1|A1|b17~q\ & ( (!\A1|A1|b21~q\ & (!\A1|A1|b20~q\ & ((!\A1|A1|b16~q\) # (\A1|A1|b19~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000110000001100000000000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b16~q\,
	datab => \A1|A1|ALT_INV_b21~q\,
	datac => \A1|A1|ALT_INV_b20~q\,
	datad => \A1|A1|ALT_INV_b19~q\,
	datae => \A1|A1|ALT_INV_b18~q\,
	dataf => \A1|A1|ALT_INV_b17~q\,
	combout => \A1|A1|lzc_count~4_combout\);

-- Location: MLABCELL_X65_Y3_N33
\A1|A1|lzc_count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~5_combout\ = ( \A1|A1|lzc_count~1_combout\ & ( \A1|A1|lzc_count~4_combout\ & ( (!\A1|A1|b26~q\ & (!\A1|A1|b27~DUPLICATE_q\ & ((\A1|A1|b24~q\) # (\A1|A1|b25~q\)))) ) ) ) # ( !\A1|A1|lzc_count~1_combout\ & ( \A1|A1|lzc_count~4_combout\ & ( 
-- (!\A1|A1|b26~q\ & (!\A1|A1|b27~DUPLICATE_q\ & ((\A1|A1|b24~q\) # (\A1|A1|b25~q\)))) ) ) ) # ( \A1|A1|lzc_count~1_combout\ & ( !\A1|A1|lzc_count~4_combout\ & ( (!\A1|A1|b26~q\ & !\A1|A1|b27~DUPLICATE_q\) ) ) ) # ( !\A1|A1|lzc_count~1_combout\ & ( 
-- !\A1|A1|lzc_count~4_combout\ & ( (!\A1|A1|b26~q\ & (!\A1|A1|b27~DUPLICATE_q\ & ((\A1|A1|b24~q\) # (\A1|A1|b25~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000100010001000100000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b26~q\,
	datab => \A1|A1|ALT_INV_b27~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_b25~q\,
	datad => \A1|A1|ALT_INV_b24~q\,
	datae => \A1|A1|ALT_INV_lzc_count~1_combout\,
	dataf => \A1|A1|ALT_INV_lzc_count~4_combout\,
	combout => \A1|A1|lzc_count~5_combout\);

-- Location: FF_X65_Y3_N14
\A1|A1|b22~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b22~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y3_N36
\A1|A1|lzc_count~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~14_combout\ = ( \A1|A1|b15~q\ & ( \A1|A1|b16~q\ & ( (!\A1|A1|b20~q\ & (((!\A1|A1|b18~q\ & \A1|A1|b17~q\)) # (\A1|A1|b19~q\))) ) ) ) # ( !\A1|A1|b15~q\ & ( \A1|A1|b16~q\ & ( (!\A1|A1|b20~q\ & (((!\A1|A1|b18~q\ & \A1|A1|b17~q\)) # 
-- (\A1|A1|b19~q\))) ) ) ) # ( \A1|A1|b15~q\ & ( !\A1|A1|b16~q\ & ( (!\A1|A1|b20~q\ & ((!\A1|A1|b18~q\) # (\A1|A1|b19~q\))) ) ) ) # ( !\A1|A1|b15~q\ & ( !\A1|A1|b16~q\ & ( (!\A1|A1|b20~q\ & (((!\A1|A1|b18~q\ & \A1|A1|b17~q\)) # (\A1|A1|b19~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000000110111010000000001011101000000000101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b19~q\,
	datab => \A1|A1|ALT_INV_b18~q\,
	datac => \A1|A1|ALT_INV_b17~q\,
	datad => \A1|A1|ALT_INV_b20~q\,
	datae => \A1|A1|ALT_INV_b15~q\,
	dataf => \A1|A1|ALT_INV_b16~q\,
	combout => \A1|A1|lzc_count~14_combout\);

-- Location: MLABCELL_X65_Y3_N6
\A1|A1|lzc_count~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~15_combout\ = ( \A1|A1|b22~DUPLICATE_q\ & ( (!\A1|A1|b25~q\ & ((!\A1|A1|b23~q\) # (\A1|A1|b24~q\))) ) ) # ( !\A1|A1|b22~DUPLICATE_q\ & ( (!\A1|A1|b25~q\ & (((!\A1|A1|b23~q\ & !\A1|A1|b21~q\)) # (\A1|A1|b24~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000001100100011000000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b23~q\,
	datab => \A1|A1|ALT_INV_b25~q\,
	datac => \A1|A1|ALT_INV_b24~q\,
	datad => \A1|A1|ALT_INV_b21~q\,
	dataf => \A1|A1|ALT_INV_b22~DUPLICATE_q\,
	combout => \A1|A1|lzc_count~15_combout\);

-- Location: MLABCELL_X65_Y3_N24
\A1|A1|lzc_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~2_combout\ = ( \A1|A1|lzc_count~14_combout\ & ( \A1|A1|lzc_count~15_combout\ & ( (!\A1|A1|b27~DUPLICATE_q\ & (((\A1|A1|b22~DUPLICATE_q\) # (\A1|A1|b26~q\)) # (\A1|A1|b24~q\))) ) ) ) # ( !\A1|A1|lzc_count~14_combout\ & ( 
-- \A1|A1|lzc_count~15_combout\ & ( !\A1|A1|b27~DUPLICATE_q\ ) ) ) # ( \A1|A1|lzc_count~14_combout\ & ( !\A1|A1|lzc_count~15_combout\ & ( (!\A1|A1|b27~DUPLICATE_q\ & \A1|A1|b26~q\) ) ) ) # ( !\A1|A1|lzc_count~14_combout\ & ( !\A1|A1|lzc_count~15_combout\ & ( 
-- (!\A1|A1|b27~DUPLICATE_q\ & \A1|A1|b26~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b24~q\,
	datab => \A1|A1|ALT_INV_b27~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_b26~q\,
	datad => \A1|A1|ALT_INV_b22~DUPLICATE_q\,
	datae => \A1|A1|ALT_INV_lzc_count~14_combout\,
	dataf => \A1|A1|ALT_INV_lzc_count~15_combout\,
	combout => \A1|A1|lzc_count~2_combout\);

-- Location: IOIBUF_X70_Y0_N35
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X67_Y2_N41
\linput[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(1));

-- Location: FF_X67_Y3_N59
\A1|A1|b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b1~q\);

-- Location: LABCELL_X67_Y3_N45
\A1|A1|lzc_count~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~16_combout\ = ( \A1|A1|b2~q\ & ( \A1|A1|b5~DUPLICATE_q\ & ( !\A1|A1|b6~q\ ) ) ) # ( !\A1|A1|b2~q\ & ( \A1|A1|b5~DUPLICATE_q\ & ( !\A1|A1|b6~q\ ) ) ) # ( \A1|A1|b2~q\ & ( !\A1|A1|b5~DUPLICATE_q\ & ( (!\A1|A1|b6~q\ & (\A1|A1|b3~q\ & 
-- !\A1|A1|b4~DUPLICATE_q\)) ) ) ) # ( !\A1|A1|b2~q\ & ( !\A1|A1|b5~DUPLICATE_q\ & ( (!\A1|A1|b6~q\ & (!\A1|A1|b4~DUPLICATE_q\ & ((\A1|A1|b3~q\) # (\A1|A1|b1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000000010100000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b6~q\,
	datab => \A1|A1|ALT_INV_b1~q\,
	datac => \A1|A1|ALT_INV_b3~q\,
	datad => \A1|A1|ALT_INV_b4~DUPLICATE_q\,
	datae => \A1|A1|ALT_INV_b2~q\,
	dataf => \A1|A1|ALT_INV_b5~DUPLICATE_q\,
	combout => \A1|A1|lzc_count~16_combout\);

-- Location: FF_X67_Y3_N55
\A1|A1|b8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b8~q\);

-- Location: LABCELL_X67_Y3_N51
\A1|A1|lzc_count~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~17_combout\ = ( \A1|A1|b10~q\ & ( !\A1|A1|b11~q\ ) ) # ( !\A1|A1|b10~q\ & ( (!\A1|A1|b9~q\ & (!\A1|A1|b11~q\ & ((!\A1|A1|b7~q\) # (\A1|A1|b8~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b7~q\,
	datab => \A1|A1|ALT_INV_b9~q\,
	datac => \A1|A1|ALT_INV_b8~q\,
	datad => \A1|A1|ALT_INV_b11~q\,
	dataf => \A1|A1|ALT_INV_b10~q\,
	combout => \A1|A1|lzc_count~17_combout\);

-- Location: LABCELL_X67_Y3_N27
\A1|A1|lzc_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~3_combout\ = ( \A1|A1|lzc_count~16_combout\ & ( \A1|A1|lzc_count~17_combout\ & ( (!\A1|A1|b13~DUPLICATE_q\ & (((\A1|A1|b8~DUPLICATE_q\) # (\A1|A1|b10~q\)) # (\A1|A1|b12~DUPLICATE_q\))) ) ) ) # ( !\A1|A1|lzc_count~16_combout\ & ( 
-- \A1|A1|lzc_count~17_combout\ & ( !\A1|A1|b13~DUPLICATE_q\ ) ) ) # ( \A1|A1|lzc_count~16_combout\ & ( !\A1|A1|lzc_count~17_combout\ & ( (\A1|A1|b12~DUPLICATE_q\ & !\A1|A1|b13~DUPLICATE_q\) ) ) ) # ( !\A1|A1|lzc_count~16_combout\ & ( 
-- !\A1|A1|lzc_count~17_combout\ & ( (\A1|A1|b12~DUPLICATE_q\ & !\A1|A1|b13~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b12~DUPLICATE_q\,
	datab => \A1|A1|ALT_INV_b13~DUPLICATE_q\,
	datac => \A1|A1|ALT_INV_b10~q\,
	datad => \A1|A1|ALT_INV_b8~DUPLICATE_q\,
	datae => \A1|A1|ALT_INV_lzc_count~16_combout\,
	dataf => \A1|A1|ALT_INV_lzc_count~17_combout\,
	combout => \A1|A1|lzc_count~3_combout\);

-- Location: LABCELL_X66_Y3_N0
\A1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~1_sumout\ = SUM(( (!\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~3_combout\))) # (\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~2_combout\)) ) + ( \A1|Add0~1_sumout\ ) + ( !VCC ))
-- \A1|Add2~2\ = CARRY(( (!\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~3_combout\))) # (\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~2_combout\)) ) + ( \A1|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|A1|ALT_INV_lzc_count~2_combout\,
	datad => \A1|A1|ALT_INV_lzc_count~3_combout\,
	dataf => \A1|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \A1|Add2~1_sumout\,
	cout => \A1|Add2~2\);

-- Location: LABCELL_X66_Y3_N3
\A1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~5_sumout\ = SUM(( \A1|Add0~5_sumout\ ) + ( (!\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~8_combout\)) # (\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~5_combout\))) ) + ( \A1|Add2~2\ ))
-- \A1|Add2~6\ = CARRY(( \A1|Add0~5_sumout\ ) + ( (!\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~8_combout\)) # (\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~5_combout\))) ) + ( \A1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_lzc_count~8_combout\,
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|A1|ALT_INV_lzc_count~5_combout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	cin => \A1|Add2~2\,
	sumout => \A1|Add2~5_sumout\,
	cout => \A1|Add2~6\);

-- Location: LABCELL_X66_Y3_N6
\A1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~9_sumout\ = SUM(( \A1|Add0~9_sumout\ ) + ( (!\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~12_combout\))) # (\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~9_combout\)) ) + ( \A1|Add2~6\ ))
-- \A1|Add2~10\ = CARRY(( \A1|Add0~9_sumout\ ) + ( (!\A1|A1|process_1~2_combout\ & ((!\A1|A1|lzc_count~12_combout\))) # (\A1|A1|process_1~2_combout\ & (!\A1|A1|lzc_count~9_combout\)) ) + ( \A1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|A1|ALT_INV_lzc_count~9_combout\,
	datad => \A1|ALT_INV_Add0~9_sumout\,
	dataf => \A1|A1|ALT_INV_lzc_count~12_combout\,
	cin => \A1|Add2~6\,
	sumout => \A1|Add2~9_sumout\,
	cout => \A1|Add2~10\);

-- Location: MLABCELL_X65_Y3_N18
\A1|A1|process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|process_1~3_combout\ = (!\A1|A1|process_1~1_combout\) # ((!\A1|A1|lzc_count~1_combout\) # (\A1|A1|b21~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_process_1~1_combout\,
	datab => \A1|A1|ALT_INV_b21~q\,
	datac => \A1|A1|ALT_INV_lzc_count~1_combout\,
	combout => \A1|A1|process_1~3_combout\);

-- Location: FF_X67_Y3_N1
\A1|A1|b12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b12~q\);

-- Location: LABCELL_X67_Y3_N9
\A1|A1|lzc_count~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|A1|lzc_count~13_combout\ = ( \A1|A1|lzc_count~10_combout\ & ( ((\A1|A1|b13~DUPLICATE_q\) # (\A1|A1|b12~q\)) # (\A1|A1|lzc_count~11_combout\) ) ) # ( !\A1|A1|lzc_count~10_combout\ & ( (\A1|A1|b13~DUPLICATE_q\) # (\A1|A1|b12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_lzc_count~11_combout\,
	datab => \A1|A1|ALT_INV_b12~q\,
	datac => \A1|A1|ALT_INV_b13~DUPLICATE_q\,
	dataf => \A1|A1|ALT_INV_lzc_count~10_combout\,
	combout => \A1|A1|lzc_count~13_combout\);

-- Location: IOIBUF_X89_Y6_N55
\W[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(3),
	o => \W[3]~input_o\);

-- Location: FF_X66_Y3_N41
\lW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(3));

-- Location: IOIBUF_X60_Y0_N52
\F[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(3),
	o => \F[3]~input_o\);

-- Location: FF_X66_Y3_N26
\lF[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(3));

-- Location: LABCELL_X66_Y3_N42
\A1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~13_sumout\ = SUM(( !lW(3) $ (lF(3)) ) + ( \A1|Add0~11\ ) + ( \A1|Add0~10\ ))
-- \A1|Add0~14\ = CARRY(( !lW(3) $ (lF(3)) ) + ( \A1|Add0~11\ ) + ( \A1|Add0~10\ ))
-- \A1|Add0~15\ = SHARE((lW(3) & !lF(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lW(3),
	datac => ALT_INV_lF(3),
	cin => \A1|Add0~10\,
	sharein => \A1|Add0~11\,
	sumout => \A1|Add0~13_sumout\,
	cout => \A1|Add0~14\,
	shareout => \A1|Add0~15\);

-- Location: LABCELL_X66_Y3_N9
\A1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~13_sumout\ = SUM(( (!\A1|A1|process_1~2_combout\ & (((!\A1|A1|lzc_count~13_combout\)))) # (\A1|A1|process_1~2_combout\ & (((\A1|A1|process_1~3_combout\)) # (\A1|A1|b20~q\))) ) + ( \A1|Add0~13_sumout\ ) + ( \A1|Add2~10\ ))
-- \A1|Add2~14\ = CARRY(( (!\A1|A1|process_1~2_combout\ & (((!\A1|A1|lzc_count~13_combout\)))) # (\A1|A1|process_1~2_combout\ & (((\A1|A1|process_1~3_combout\)) # (\A1|A1|b20~q\))) ) + ( \A1|Add0~13_sumout\ ) + ( \A1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b20~q\,
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|A1|ALT_INV_process_1~3_combout\,
	datad => \A1|A1|ALT_INV_lzc_count~13_combout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	cin => \A1|Add2~10\,
	sumout => \A1|Add2~13_sumout\,
	cout => \A1|Add2~14\);

-- Location: LABCELL_X67_Y2_N24
\A1|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~2_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(26) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(25) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(24) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(23) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(24),
	datab => ALT_INV_linput(26),
	datac => ALT_INV_linput(25),
	datad => ALT_INV_linput(23),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftRight0~2_combout\);

-- Location: LABCELL_X66_Y2_N48
\A1|Xb[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[19]~2_combout\ = ( !\A1|Add2~1_sumout\ & ( (linput(27) & !\A1|Add2~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_linput(27),
	datac => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|Xb[19]~2_combout\);

-- Location: LABCELL_X67_Y2_N51
\A1|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~1_combout\ = ( linput(21) & ( linput(19) & ( (!\A1|Add2~1_sumout\) # ((!\A1|Add2~5_sumout\ & ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22)))) ) ) ) # ( !linput(21) & ( linput(19) & ( (!\A1|Add2~1_sumout\ & (((!\A1|Add2~5_sumout\)))) 
-- # (\A1|Add2~1_sumout\ & ((!\A1|Add2~5_sumout\ & ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22))))) ) ) ) # ( linput(21) & ( !linput(19) & ( (!\A1|Add2~1_sumout\ & (((\A1|Add2~5_sumout\)))) # (\A1|Add2~1_sumout\ & ((!\A1|Add2~5_sumout\ & 
-- ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22))))) ) ) ) # ( !linput(21) & ( !linput(19) & ( (\A1|Add2~1_sumout\ & ((!\A1|Add2~5_sumout\ & ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(22),
	datab => ALT_INV_linput(20),
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => \A1|ALT_INV_Add2~5_sumout\,
	datae => ALT_INV_linput(21),
	dataf => ALT_INV_linput(19),
	combout => \A1|ShiftRight0~1_combout\);

-- Location: LABCELL_X67_Y2_N30
\A1|Xb[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[19]~3_combout\ = ( \A1|ShiftRight0~1_combout\ & ( (!\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\) # ((\A1|Xb[19]~2_combout\)))) # (\A1|Add2~9_sumout\ & (!\A1|Add2~13_sumout\ & (\A1|ShiftRight0~2_combout\))) ) ) # ( !\A1|ShiftRight0~1_combout\ & ( 
-- (!\A1|Add2~9_sumout\ & (\A1|Add2~13_sumout\ & ((\A1|Xb[19]~2_combout\)))) # (\A1|Add2~9_sumout\ & (!\A1|Add2~13_sumout\ & (\A1|ShiftRight0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~13_sumout\,
	datac => \A1|ALT_INV_ShiftRight0~2_combout\,
	datad => \A1|ALT_INV_Xb[19]~2_combout\,
	dataf => \A1|ALT_INV_ShiftRight0~1_combout\,
	combout => \A1|Xb[19]~3_combout\);

-- Location: IOIBUF_X54_Y0_N52
\F[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(4),
	o => \F[4]~input_o\);

-- Location: FF_X66_Y3_N44
\lF[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(4));

-- Location: IOIBUF_X54_Y0_N1
\W[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(4),
	o => \W[4]~input_o\);

-- Location: FF_X66_Y3_N47
\lW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(4));

-- Location: LABCELL_X66_Y3_N45
\A1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~17_sumout\ = SUM(( !lF(4) $ (lW(4)) ) + ( \A1|Add0~15\ ) + ( \A1|Add0~14\ ))
-- \A1|Add0~18\ = CARRY(( !lF(4) $ (lW(4)) ) + ( \A1|Add0~15\ ) + ( \A1|Add0~14\ ))
-- \A1|Add0~19\ = SHARE((!lF(4) & lW(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lF(4),
	datad => ALT_INV_lW(4),
	cin => \A1|Add0~14\,
	sharein => \A1|Add0~15\,
	sumout => \A1|Add0~17_sumout\,
	cout => \A1|Add0~18\,
	shareout => \A1|Add0~19\);

-- Location: FF_X67_Y3_N43
\A1|A1|b13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => linput(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|A1|b13~q\);

-- Location: LABCELL_X66_Y3_N12
\A1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~17_sumout\ = SUM(( \A1|Add0~17_sumout\ ) + ( ((\A1|A1|b13~q\) # (\A1|A1|b12~DUPLICATE_q\)) # (\A1|A1|process_1~2_combout\) ) + ( \A1|Add2~14\ ))
-- \A1|Add2~18\ = CARRY(( \A1|Add0~17_sumout\ ) + ( ((\A1|A1|b13~q\) # (\A1|A1|b12~DUPLICATE_q\)) # (\A1|A1|process_1~2_combout\) ) + ( \A1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|A1|ALT_INV_b12~DUPLICATE_q\,
	datad => \A1|ALT_INV_Add0~17_sumout\,
	dataf => \A1|A1|ALT_INV_b13~q\,
	cin => \A1|Add2~14\,
	sumout => \A1|Add2~17_sumout\,
	cout => \A1|Add2~18\);

-- Location: LABCELL_X67_Y2_N33
\A1|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add3~0_combout\ = ( \A1|Add2~17_sumout\ & ( (!\A1|Add2~9_sumout\ & (!\A1|Add2~13_sumout\ & (!\A1|Add2~5_sumout\ & !\A1|Add2~1_sumout\))) ) ) # ( !\A1|Add2~17_sumout\ & ( (((\A1|Add2~1_sumout\) # (\A1|Add2~5_sumout\)) # (\A1|Add2~13_sumout\)) # 
-- (\A1|Add2~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~13_sumout\,
	datac => \A1|ALT_INV_Add2~5_sumout\,
	datad => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~17_sumout\,
	combout => \A1|Add3~0_combout\);

-- Location: LABCELL_X67_Y2_N18
\A1|ShiftLeft0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~3_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(18) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(17) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(16) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(19),
	datab => ALT_INV_linput(18),
	datac => ALT_INV_linput(17),
	datad => ALT_INV_linput(16),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~3_combout\);

-- Location: LABCELL_X66_Y1_N30
\A1|ShiftLeft0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~2_combout\ = ( linput(11) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(9)))) # (\A1|Add2~1_sumout\ & (linput(10))) ) ) ) # ( !linput(11) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(9)))) # (\A1|Add2~1_sumout\ & 
-- (linput(10))) ) ) ) # ( linput(11) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\) # (linput(8)) ) ) ) # ( !linput(11) & ( !\A1|Add2~5_sumout\ & ( (linput(8) & \A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(10),
	datab => ALT_INV_linput(9),
	datac => ALT_INV_linput(8),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(11),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~2_combout\);

-- Location: LABCELL_X67_Y2_N3
\A1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add3~1_combout\ = ( \A1|Add2~13_sumout\ & ( (!\A1|Add2~9_sumout\ & (!\A1|Add2~1_sumout\ & !\A1|Add2~5_sumout\)) ) ) # ( !\A1|Add2~13_sumout\ & ( ((\A1|Add2~5_sumout\) # (\A1|Add2~1_sumout\)) # (\A1|Add2~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~13_sumout\,
	combout => \A1|Add3~1_combout\);

-- Location: LABCELL_X67_Y2_N15
\A1|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~0_combout\ = ( \A1|Add2~1_sumout\ & ( linput(6) & ( (\A1|Add2~5_sumout\) # (linput(4)) ) ) ) # ( !\A1|Add2~1_sumout\ & ( linput(6) & ( (!\A1|Add2~5_sumout\ & (linput(7))) # (\A1|Add2~5_sumout\ & ((linput(5)))) ) ) ) # ( \A1|Add2~1_sumout\ & 
-- ( !linput(6) & ( (linput(4) & !\A1|Add2~5_sumout\) ) ) ) # ( !\A1|Add2~1_sumout\ & ( !linput(6) & ( (!\A1|Add2~5_sumout\ & (linput(7))) # (\A1|Add2~5_sumout\ & ((linput(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(7),
	datab => ALT_INV_linput(5),
	datac => ALT_INV_linput(4),
	datad => \A1|ALT_INV_Add2~5_sumout\,
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => ALT_INV_linput(6),
	combout => \A1|ShiftLeft0~0_combout\);

-- Location: LABCELL_X67_Y2_N36
\A1|ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~1_combout\ = ( linput(13) & ( \A1|Add2~1_sumout\ & ( (!\A1|Add2~5_sumout\ & ((linput(12)))) # (\A1|Add2~5_sumout\ & (linput(14))) ) ) ) # ( !linput(13) & ( \A1|Add2~1_sumout\ & ( (!\A1|Add2~5_sumout\ & ((linput(12)))) # (\A1|Add2~5_sumout\ 
-- & (linput(14))) ) ) ) # ( linput(13) & ( !\A1|Add2~1_sumout\ & ( (linput(15)) # (\A1|Add2~5_sumout\) ) ) ) # ( !linput(13) & ( !\A1|Add2~1_sumout\ & ( (!\A1|Add2~5_sumout\ & linput(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(14),
	datab => ALT_INV_linput(12),
	datac => \A1|ALT_INV_Add2~5_sumout\,
	datad => ALT_INV_linput(15),
	datae => ALT_INV_linput(13),
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|ShiftLeft0~1_combout\);

-- Location: LABCELL_X66_Y3_N57
\A1|Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add3~2_combout\ = ( \A1|Add2~1_sumout\ & ( !\A1|Add2~9_sumout\ ) ) # ( !\A1|Add2~1_sumout\ & ( !\A1|Add2~9_sumout\ $ (!\A1|Add2~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|Add3~2_combout\);

-- Location: LABCELL_X67_Y2_N6
\A1|ShiftLeft0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~4_combout\ = ( \A1|ShiftLeft0~1_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\) # (\A1|ShiftLeft0~0_combout\) ) ) ) # ( !\A1|ShiftLeft0~1_combout\ & ( \A1|Add3~2_combout\ & ( (\A1|Add3~1_combout\ & \A1|ShiftLeft0~0_combout\) ) ) 
-- ) # ( \A1|ShiftLeft0~1_combout\ & ( !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~3_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~2_combout\))) ) ) ) # ( !\A1|ShiftLeft0~1_combout\ & ( !\A1|Add3~2_combout\ & ( 
-- (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~3_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~3_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~2_combout\,
	datac => \A1|ALT_INV_Add3~1_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~0_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|ShiftLeft0~4_combout\);

-- Location: IOIBUF_X56_Y0_N1
\W[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(5),
	o => \W[5]~input_o\);

-- Location: FF_X66_Y3_N13
\lW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \W[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lW(5));

-- Location: IOIBUF_X56_Y0_N18
\F[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(5),
	o => \F[5]~input_o\);

-- Location: FF_X66_Y3_N37
\lF[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \F[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lF(5));

-- Location: LABCELL_X66_Y3_N48
\A1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~21_sumout\ = SUM(( !lW(5) $ (lF(5)) ) + ( \A1|Add0~19\ ) + ( \A1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lW(5),
	datad => ALT_INV_lF(5),
	cin => \A1|Add0~18\,
	sharein => \A1|Add0~19\,
	sumout => \A1|Add0~21_sumout\);

-- Location: LABCELL_X66_Y3_N15
\A1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add2~21_sumout\ = SUM(( ((\A1|A1|b13~DUPLICATE_q\) # (\A1|A1|process_1~2_combout\)) # (\A1|A1|b12~DUPLICATE_q\) ) + ( \A1|Add0~21_sumout\ ) + ( \A1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|A1|ALT_INV_b12~DUPLICATE_q\,
	datab => \A1|A1|ALT_INV_process_1~2_combout\,
	datac => \A1|ALT_INV_Add0~21_sumout\,
	datad => \A1|A1|ALT_INV_b13~DUPLICATE_q\,
	cin => \A1|Add2~18\,
	sumout => \A1|Add2~21_sumout\);

-- Location: LABCELL_X67_Y2_N42
\A1|Xb[26]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[26]~0_combout\ = ( \A1|Add2~17_sumout\ & ( \A1|Add2~21_sumout\ ) ) # ( !\A1|Add2~17_sumout\ & ( \A1|Add2~21_sumout\ & ( (((\A1|Add2~13_sumout\) # (\A1|Add2~5_sumout\)) # (\A1|Add2~9_sumout\)) # (\A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~1_sumout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~5_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_Add2~17_sumout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[26]~0_combout\);

-- Location: LABCELL_X68_Y2_N57
\A1|Xb[19]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[19]~4_combout\ = ( !\A1|Add2~17_sumout\ & ( !\A1|Add2~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \A1|ALT_INV_Add2~21_sumout\,
	dataf => \A1|ALT_INV_Add2~17_sumout\,
	combout => \A1|Xb[19]~4_combout\);

-- Location: LABCELL_X66_Y2_N51
\A1|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~0_combout\ = ( !\A1|Add2~5_sumout\ & ( !\A1|Add2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftRight0~0_combout\);

-- Location: IOIBUF_X68_Y0_N52
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: FF_X68_Y2_N53
\linput[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linput(0));

-- Location: LABCELL_X66_Y2_N0
\A1|ShiftLeft0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~5_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(2) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(1) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(0) ) ) ) # ( !\A1|Add2~1_sumout\ & ( 
-- !\A1|Add2~5_sumout\ & ( linput(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(3),
	datab => ALT_INV_linput(2),
	datac => ALT_INV_linput(0),
	datad => ALT_INV_linput(1),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~5_combout\);

-- Location: LABCELL_X66_Y2_N15
\A1|Xb[19]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[19]~1_combout\ = ( \A1|ShiftLeft0~5_combout\ & ( \A1|Add2~21_sumout\ & ( (!\A1|ShiftRight0~0_combout\ & (\A1|Add2~9_sumout\ & (\A1|Add2~13_sumout\ & !\A1|Add2~17_sumout\))) # (\A1|ShiftRight0~0_combout\ & (!\A1|Add2~9_sumout\ & 
-- (!\A1|Add2~13_sumout\ & \A1|Add2~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~0_combout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~13_sumout\,
	datad => \A1|ALT_INV_Add2~17_sumout\,
	datae => \A1|ALT_INV_ShiftLeft0~5_combout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[19]~1_combout\);

-- Location: LABCELL_X68_Y2_N36
\A1|Xb[19]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[19]~5_combout\ = ( \A1|Xb[19]~4_combout\ & ( \A1|Xb[19]~1_combout\ ) ) # ( !\A1|Xb[19]~4_combout\ & ( \A1|Xb[19]~1_combout\ ) ) # ( \A1|Xb[19]~4_combout\ & ( !\A1|Xb[19]~1_combout\ & ( ((!\A1|Add3~0_combout\ & (\A1|ShiftLeft0~4_combout\ & 
-- \A1|Xb[26]~0_combout\))) # (\A1|Xb[19]~3_combout\) ) ) ) # ( !\A1|Xb[19]~4_combout\ & ( !\A1|Xb[19]~1_combout\ & ( (!\A1|Add3~0_combout\ & (\A1|ShiftLeft0~4_combout\ & \A1|Xb[26]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010101010101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Xb[19]~3_combout\,
	datab => \A1|ALT_INV_Add3~0_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~4_combout\,
	datad => \A1|ALT_INV_Xb[26]~0_combout\,
	datae => \A1|ALT_INV_Xb[19]~4_combout\,
	dataf => \A1|ALT_INV_Xb[19]~1_combout\,
	combout => \A1|Xb[19]~5_combout\);

-- Location: MLABCELL_X65_Y2_N27
\A1|Xb[20]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~9_combout\ = ( !\A1|Add2~5_sumout\ & ( (linput(0) & !\A1|Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_linput(0),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|Xb[20]~9_combout\);

-- Location: LABCELL_X66_Y3_N24
\A1|Xb[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~6_combout\ = ( \A1|Add2~13_sumout\ & ( \A1|Add2~21_sumout\ & ( ((\A1|Add2~9_sumout\ & ((\A1|Add2~1_sumout\) # (\A1|Add2~5_sumout\)))) # (\A1|Add2~17_sumout\) ) ) ) # ( !\A1|Add2~13_sumout\ & ( \A1|Add2~21_sumout\ & ( \A1|Add2~17_sumout\ ) ) ) # 
-- ( !\A1|Add2~13_sumout\ & ( !\A1|Add2~21_sumout\ & ( (!\A1|Add2~5_sumout\ & (!\A1|Add2~9_sumout\ & (!\A1|Add2~1_sumout\ & !\A1|Add2~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000111111110001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~5_sumout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => \A1|ALT_INV_Add2~17_sumout\,
	datae => \A1|ALT_INV_Add2~13_sumout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[20]~6_combout\);

-- Location: MLABCELL_X65_Y2_N3
\A1|Xb[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~11_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(23) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(22) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(21) ) ) ) # ( !\A1|Add2~1_sumout\ & ( 
-- !\A1|Add2~5_sumout\ & ( linput(20) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(21),
	datab => ALT_INV_linput(20),
	datac => ALT_INV_linput(22),
	datad => ALT_INV_linput(23),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|Xb[20]~11_combout\);

-- Location: MLABCELL_X65_Y2_N30
\A1|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~3_combout\ = ( linput(27) & ( \A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\) # (linput(26)) ) ) ) # ( !linput(27) & ( \A1|Add2~5_sumout\ & ( (linput(26) & !\A1|Add2~1_sumout\) ) ) ) # ( linput(27) & ( !\A1|Add2~5_sumout\ & ( 
-- (!\A1|Add2~1_sumout\ & (linput(24))) # (\A1|Add2~1_sumout\ & ((linput(25)))) ) ) ) # ( !linput(27) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(24))) # (\A1|Add2~1_sumout\ & ((linput(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(26),
	datab => ALT_INV_linput(24),
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => ALT_INV_linput(25),
	datae => ALT_INV_linput(27),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftRight0~3_combout\);

-- Location: MLABCELL_X65_Y2_N39
\A1|Xb[20]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~12_combout\ = ( \A1|Xb[20]~11_combout\ & ( \A1|ShiftRight0~3_combout\ & ( (!\A1|Add2~21_sumout\ & (!\A1|Add2~13_sumout\ & !\A1|Add2~17_sumout\)) ) ) ) # ( !\A1|Xb[20]~11_combout\ & ( \A1|ShiftRight0~3_combout\ & ( (\A1|Add2~9_sumout\ & 
-- (!\A1|Add2~21_sumout\ & (!\A1|Add2~13_sumout\ & !\A1|Add2~17_sumout\))) ) ) ) # ( \A1|Xb[20]~11_combout\ & ( !\A1|ShiftRight0~3_combout\ & ( (!\A1|Add2~9_sumout\ & (!\A1|Add2~21_sumout\ & (!\A1|Add2~13_sumout\ & !\A1|Add2~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~21_sumout\,
	datac => \A1|ALT_INV_Add2~13_sumout\,
	datad => \A1|ALT_INV_Add2~17_sumout\,
	datae => \A1|ALT_INV_Xb[20]~11_combout\,
	dataf => \A1|ALT_INV_ShiftRight0~3_combout\,
	combout => \A1|Xb[20]~12_combout\);

-- Location: LABCELL_X66_Y3_N18
\A1|Xb[20]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~10_combout\ = ( \A1|Add2~13_sumout\ & ( \A1|Add2~21_sumout\ & ( (!\A1|Add2~9_sumout\ $ (((!\A1|Add2~5_sumout\ & !\A1|Add2~1_sumout\)))) # (\A1|Add2~17_sumout\) ) ) ) # ( !\A1|Add2~13_sumout\ & ( \A1|Add2~21_sumout\ & ( (\A1|Add2~17_sumout\ & 
-- (((\A1|Add2~1_sumout\) # (\A1|Add2~9_sumout\)) # (\A1|Add2~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110110110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~5_sumout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => \A1|ALT_INV_Add2~17_sumout\,
	datae => \A1|ALT_INV_Add2~13_sumout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[20]~10_combout\);

-- Location: MLABCELL_X65_Y2_N45
\A1|ShiftLeft0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~6_combout\ = ( \A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(3) ) ) ) # ( !\A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(1) ) ) ) # ( \A1|Add2~5_sumout\ & ( !\A1|Add2~1_sumout\ & ( linput(2) ) ) ) # ( !\A1|Add2~5_sumout\ & ( 
-- !\A1|Add2~1_sumout\ & ( linput(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(2),
	datab => ALT_INV_linput(4),
	datac => ALT_INV_linput(3),
	datad => ALT_INV_linput(1),
	datae => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|ShiftLeft0~6_combout\);

-- Location: MLABCELL_X65_Y2_N54
\A1|Xb[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~7_combout\ = ( \A1|ShiftLeft0~6_combout\ & ( \A1|Add2~17_sumout\ & ( (!\A1|Add2~9_sumout\ & (!\A1|Add2~13_sumout\ & (\A1|ShiftRight0~0_combout\ & \A1|Add2~21_sumout\))) ) ) ) # ( \A1|ShiftLeft0~6_combout\ & ( !\A1|Add2~17_sumout\ & ( 
-- (\A1|Add2~9_sumout\ & (\A1|Add2~13_sumout\ & (!\A1|ShiftRight0~0_combout\ & \A1|Add2~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~13_sumout\,
	datac => \A1|ALT_INV_ShiftRight0~0_combout\,
	datad => \A1|ALT_INV_Add2~21_sumout\,
	datae => \A1|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \A1|ALT_INV_Add2~17_sumout\,
	combout => \A1|Xb[20]~7_combout\);

-- Location: LABCELL_X66_Y1_N0
\A1|ShiftLeft0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~10_combout\ = ( linput(20) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(18))) # (\A1|Add2~1_sumout\ & ((linput(19)))) ) ) ) # ( !linput(20) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(18))) # (\A1|Add2~1_sumout\ & 
-- ((linput(19)))) ) ) ) # ( linput(20) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\) # (linput(17)) ) ) ) # ( !linput(20) & ( !\A1|Add2~5_sumout\ & ( (linput(17) & \A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(17),
	datab => ALT_INV_linput(18),
	datac => ALT_INV_linput(19),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(20),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~10_combout\);

-- Location: LABCELL_X66_Y1_N57
\A1|ShiftLeft0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~7_combout\ = ( linput(7) & ( \A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\) # (linput(6)) ) ) ) # ( !linput(7) & ( \A1|Add2~5_sumout\ & ( (linput(6) & !\A1|Add2~1_sumout\) ) ) ) # ( linput(7) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & 
-- ((linput(8)))) # (\A1|Add2~1_sumout\ & (linput(5))) ) ) ) # ( !linput(7) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(8)))) # (\A1|Add2~1_sumout\ & (linput(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(6),
	datab => ALT_INV_linput(5),
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => ALT_INV_linput(8),
	datae => ALT_INV_linput(7),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~7_combout\);

-- Location: LABCELL_X66_Y1_N24
\A1|ShiftLeft0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~8_combout\ = ( linput(14) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\) # (linput(15)) ) ) ) # ( !linput(14) & ( \A1|Add2~5_sumout\ & ( (linput(15) & \A1|Add2~1_sumout\) ) ) ) # ( linput(14) & ( !\A1|Add2~5_sumout\ & ( 
-- (!\A1|Add2~1_sumout\ & ((linput(16)))) # (\A1|Add2~1_sumout\ & (linput(13))) ) ) ) # ( !linput(14) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(16)))) # (\A1|Add2~1_sumout\ & (linput(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(13),
	datab => ALT_INV_linput(16),
	datac => ALT_INV_linput(15),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(14),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~8_combout\);

-- Location: LABCELL_X66_Y1_N36
\A1|ShiftLeft0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~9_combout\ = ( linput(11) & ( \A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\) # (linput(10)) ) ) ) # ( !linput(11) & ( \A1|Add2~5_sumout\ & ( (linput(10) & !\A1|Add2~1_sumout\) ) ) ) # ( linput(11) & ( !\A1|Add2~5_sumout\ & ( 
-- (!\A1|Add2~1_sumout\ & ((linput(12)))) # (\A1|Add2~1_sumout\ & (linput(9))) ) ) ) # ( !linput(11) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(12)))) # (\A1|Add2~1_sumout\ & (linput(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(9),
	datab => ALT_INV_linput(12),
	datac => ALT_INV_linput(10),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(11),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~9_combout\);

-- Location: LABCELL_X66_Y1_N48
\A1|Xb[20]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~8_combout\ = ( \A1|Add3~2_combout\ & ( \A1|Add3~1_combout\ & ( \A1|ShiftLeft0~7_combout\ ) ) ) # ( !\A1|Add3~2_combout\ & ( \A1|Add3~1_combout\ & ( \A1|ShiftLeft0~9_combout\ ) ) ) # ( \A1|Add3~2_combout\ & ( !\A1|Add3~1_combout\ & ( 
-- \A1|ShiftLeft0~8_combout\ ) ) ) # ( !\A1|Add3~2_combout\ & ( !\A1|Add3~1_combout\ & ( \A1|ShiftLeft0~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~10_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~7_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~8_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~9_combout\,
	datae => \A1|ALT_INV_Add3~2_combout\,
	dataf => \A1|ALT_INV_Add3~1_combout\,
	combout => \A1|Xb[20]~8_combout\);

-- Location: MLABCELL_X65_Y2_N51
\A1|Xb[20]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[20]~13_combout\ = ( \A1|Xb[20]~7_combout\ & ( \A1|Xb[20]~8_combout\ ) ) # ( !\A1|Xb[20]~7_combout\ & ( \A1|Xb[20]~8_combout\ & ( ((\A1|Xb[20]~10_combout\ & ((\A1|Xb[20]~6_combout\) # (\A1|Xb[20]~9_combout\)))) # (\A1|Xb[20]~12_combout\) ) ) ) # ( 
-- \A1|Xb[20]~7_combout\ & ( !\A1|Xb[20]~8_combout\ ) ) # ( !\A1|Xb[20]~7_combout\ & ( !\A1|Xb[20]~8_combout\ & ( ((\A1|Xb[20]~9_combout\ & (!\A1|Xb[20]~6_combout\ & \A1|Xb[20]~10_combout\))) # (\A1|Xb[20]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111111111111111111100001111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Xb[20]~9_combout\,
	datab => \A1|ALT_INV_Xb[20]~6_combout\,
	datac => \A1|ALT_INV_Xb[20]~12_combout\,
	datad => \A1|ALT_INV_Xb[20]~10_combout\,
	datae => \A1|ALT_INV_Xb[20]~7_combout\,
	dataf => \A1|ALT_INV_Xb[20]~8_combout\,
	combout => \A1|Xb[20]~13_combout\);

-- Location: LABCELL_X66_Y2_N42
\A1|Xb[21]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[21]~16_combout\ = ( \A1|Add2~1_sumout\ & ( linput(21) & ( (!\A1|Add2~5_sumout\ & ((linput(22)))) # (\A1|Add2~5_sumout\ & (linput(24))) ) ) ) # ( !\A1|Add2~1_sumout\ & ( linput(21) & ( (!\A1|Add2~5_sumout\) # (linput(23)) ) ) ) # ( 
-- \A1|Add2~1_sumout\ & ( !linput(21) & ( (!\A1|Add2~5_sumout\ & ((linput(22)))) # (\A1|Add2~5_sumout\ & (linput(24))) ) ) ) # ( !\A1|Add2~1_sumout\ & ( !linput(21) & ( (linput(23) & \A1|Add2~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(24),
	datab => ALT_INV_linput(23),
	datac => \A1|ALT_INV_Add2~5_sumout\,
	datad => ALT_INV_linput(22),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => ALT_INV_linput(21),
	combout => \A1|Xb[21]~16_combout\);

-- Location: MLABCELL_X65_Y3_N51
\A1|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~4_combout\ = ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & linput(27)) ) ) # ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(25))) # (\A1|Add2~1_sumout\ & ((linput(26)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~1_sumout\,
	datab => ALT_INV_linput(25),
	datac => ALT_INV_linput(26),
	datad => ALT_INV_linput(27),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftRight0~4_combout\);

-- Location: LABCELL_X66_Y2_N54
\A1|Xb[21]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[21]~17_combout\ = ( !\A1|Add2~17_sumout\ & ( \A1|ShiftRight0~4_combout\ & ( (!\A1|Add2~21_sumout\ & (!\A1|Add2~13_sumout\ & ((\A1|Xb[21]~16_combout\) # (\A1|Add2~9_sumout\)))) ) ) ) # ( !\A1|Add2~17_sumout\ & ( !\A1|ShiftRight0~4_combout\ & ( 
-- (!\A1|Add2~9_sumout\ & (\A1|Xb[21]~16_combout\ & (!\A1|Add2~21_sumout\ & !\A1|Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000001110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Xb[21]~16_combout\,
	datac => \A1|ALT_INV_Add2~21_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_Add2~17_sumout\,
	dataf => \A1|ALT_INV_ShiftRight0~4_combout\,
	combout => \A1|Xb[21]~17_combout\);

-- Location: MLABCELL_X65_Y2_N24
\A1|ShiftLeft0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~16_combout\ = ( \A1|Add2~1_sumout\ & ( (linput(0) & \A1|Add2~5_sumout\) ) ) # ( !\A1|Add2~1_sumout\ & ( (linput(1) & !\A1|Add2~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_linput(0),
	datac => ALT_INV_linput(1),
	datad => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|ShiftLeft0~16_combout\);

-- Location: LABCELL_X67_Y3_N3
\A1|ShiftLeft0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~12_combout\ = ( linput(9) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(7)))) # (\A1|Add2~1_sumout\ & (linput(8))) ) ) ) # ( !linput(9) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(7)))) # (\A1|Add2~1_sumout\ & 
-- (linput(8))) ) ) ) # ( linput(9) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\) # (linput(6)) ) ) ) # ( !linput(9) & ( !\A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\ & linput(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(8),
	datab => ALT_INV_linput(7),
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => ALT_INV_linput(6),
	datae => ALT_INV_linput(9),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~12_combout\);

-- Location: MLABCELL_X65_Y2_N18
\A1|ShiftLeft0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~15_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(20) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(19) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(18) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(21) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(19),
	datab => ALT_INV_linput(20),
	datac => ALT_INV_linput(21),
	datad => ALT_INV_linput(18),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~15_combout\);

-- Location: LABCELL_X66_Y1_N9
\A1|ShiftLeft0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~14_combout\ = ( \A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(12) ) ) ) # ( !\A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(10) ) ) ) # ( \A1|Add2~5_sumout\ & ( !\A1|Add2~1_sumout\ & ( linput(11) ) ) ) # ( !\A1|Add2~5_sumout\ & 
-- ( !\A1|Add2~1_sumout\ & ( linput(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(10),
	datab => ALT_INV_linput(11),
	datac => ALT_INV_linput(12),
	datad => ALT_INV_linput(13),
	datae => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|ShiftLeft0~14_combout\);

-- Location: LABCELL_X66_Y1_N18
\A1|ShiftLeft0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~13_combout\ = ( \A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(16) ) ) ) # ( !\A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(14) ) ) ) # ( \A1|Add2~5_sumout\ & ( !\A1|Add2~1_sumout\ & ( linput(15) ) ) ) # ( !\A1|Add2~5_sumout\ & 
-- ( !\A1|Add2~1_sumout\ & ( linput(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(15),
	datab => ALT_INV_linput(14),
	datac => ALT_INV_linput(16),
	datad => ALT_INV_linput(17),
	datae => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|ShiftLeft0~13_combout\);

-- Location: LABCELL_X66_Y2_N21
\A1|Xb[21]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[21]~15_combout\ = ( \A1|ShiftLeft0~13_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\) # (\A1|ShiftLeft0~12_combout\) ) ) ) # ( !\A1|ShiftLeft0~13_combout\ & ( \A1|Add3~2_combout\ & ( (\A1|Add3~1_combout\ & \A1|ShiftLeft0~12_combout\) ) 
-- ) ) # ( \A1|ShiftLeft0~13_combout\ & ( !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~15_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~14_combout\))) ) ) ) # ( !\A1|ShiftLeft0~13_combout\ & ( !\A1|Add3~2_combout\ & ( 
-- (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~15_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add3~1_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~12_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~15_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~14_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~13_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|Xb[21]~15_combout\);

-- Location: MLABCELL_X65_Y3_N54
\A1|ShiftLeft0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~11_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(4) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(3) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(2) ) ) ) # ( !\A1|Add2~1_sumout\ & ( 
-- !\A1|Add2~5_sumout\ & ( linput(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(4),
	datab => ALT_INV_linput(2),
	datac => ALT_INV_linput(5),
	datad => ALT_INV_linput(3),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~11_combout\);

-- Location: LABCELL_X66_Y2_N12
\A1|Xb[21]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[21]~14_combout\ = ( \A1|Add2~21_sumout\ & ( \A1|ShiftLeft0~11_combout\ & ( (!\A1|ShiftRight0~0_combout\ & (\A1|Add2~9_sumout\ & (!\A1|Add2~17_sumout\ & \A1|Add2~13_sumout\))) # (\A1|ShiftRight0~0_combout\ & (!\A1|Add2~9_sumout\ & 
-- (\A1|Add2~17_sumout\ & !\A1|Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~0_combout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~17_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_Add2~21_sumout\,
	dataf => \A1|ALT_INV_ShiftLeft0~11_combout\,
	combout => \A1|Xb[21]~14_combout\);

-- Location: LABCELL_X66_Y2_N24
\A1|Xb[21]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[21]~18_combout\ = ( \A1|Xb[21]~15_combout\ & ( \A1|Xb[21]~14_combout\ ) ) # ( !\A1|Xb[21]~15_combout\ & ( \A1|Xb[21]~14_combout\ ) ) # ( \A1|Xb[21]~15_combout\ & ( !\A1|Xb[21]~14_combout\ & ( ((\A1|Xb[20]~10_combout\ & ((\A1|ShiftLeft0~16_combout\) 
-- # (\A1|Xb[20]~6_combout\)))) # (\A1|Xb[21]~17_combout\) ) ) ) # ( !\A1|Xb[21]~15_combout\ & ( !\A1|Xb[21]~14_combout\ & ( ((\A1|Xb[20]~10_combout\ & (!\A1|Xb[20]~6_combout\ & \A1|ShiftLeft0~16_combout\))) # (\A1|Xb[21]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Xb[20]~10_combout\,
	datab => \A1|ALT_INV_Xb[20]~6_combout\,
	datac => \A1|ALT_INV_Xb[21]~17_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~16_combout\,
	datae => \A1|ALT_INV_Xb[21]~15_combout\,
	dataf => \A1|ALT_INV_Xb[21]~14_combout\,
	combout => \A1|Xb[21]~18_combout\);

-- Location: LABCELL_X67_Y3_N15
\A1|ShiftLeft0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~17_combout\ = ( linput(6) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(4)))) # (\A1|Add2~1_sumout\ & (linput(5))) ) ) ) # ( !linput(6) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(4)))) # (\A1|Add2~1_sumout\ & 
-- (linput(5))) ) ) ) # ( linput(6) & ( !\A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\) # (linput(3)) ) ) ) # ( !linput(6) & ( !\A1|Add2~5_sumout\ & ( (linput(3) & \A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(3),
	datab => ALT_INV_linput(5),
	datac => \A1|ALT_INV_Add2~1_sumout\,
	datad => ALT_INV_linput(4),
	datae => ALT_INV_linput(6),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~17_combout\);

-- Location: LABCELL_X70_Y2_N9
\A1|Xb[22]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[22]~19_combout\ = ( \A1|ShiftRight0~0_combout\ & ( \A1|Add2~21_sumout\ & ( (\A1|ShiftLeft0~17_combout\ & (!\A1|Add2~9_sumout\ & (\A1|Add2~17_sumout\ & !\A1|Add2~13_sumout\))) ) ) ) # ( !\A1|ShiftRight0~0_combout\ & ( \A1|Add2~21_sumout\ & ( 
-- (\A1|ShiftLeft0~17_combout\ & (\A1|Add2~9_sumout\ & (!\A1|Add2~17_sumout\ & \A1|Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~17_combout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~17_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_ShiftRight0~0_combout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[22]~19_combout\);

-- Location: LABCELL_X68_Y2_N54
\A1|ShiftLeft0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~22_combout\ = ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & ((linput(0)))) # (\A1|Add2~1_sumout\ & (linput(1))) ) ) # ( !\A1|Add2~5_sumout\ & ( (linput(2) & !\A1|Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(1),
	datab => ALT_INV_linput(2),
	datac => ALT_INV_linput(0),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~22_combout\);

-- Location: LABCELL_X70_Y2_N0
\A1|Xb[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[22]~21_combout\ = ( \A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(25) ) ) ) # ( !\A1|Add2~5_sumout\ & ( \A1|Add2~1_sumout\ & ( linput(23) ) ) ) # ( \A1|Add2~5_sumout\ & ( !\A1|Add2~1_sumout\ & ( linput(24) ) ) ) # ( !\A1|Add2~5_sumout\ & ( 
-- !\A1|Add2~1_sumout\ & ( linput(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(23),
	datab => ALT_INV_linput(22),
	datac => ALT_INV_linput(25),
	datad => ALT_INV_linput(24),
	datae => \A1|ALT_INV_Add2~5_sumout\,
	dataf => \A1|ALT_INV_Add2~1_sumout\,
	combout => \A1|Xb[22]~21_combout\);

-- Location: MLABCELL_X65_Y2_N6
\A1|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftRight0~5_combout\ = ( linput(27) & ( !\A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\) # (linput(26)) ) ) ) # ( !linput(27) & ( !\A1|Add2~5_sumout\ & ( (linput(26) & !\A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_linput(26),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(27),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftRight0~5_combout\);

-- Location: LABCELL_X70_Y2_N54
\A1|Xb[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[22]~22_combout\ = ( !\A1|Add2~21_sumout\ & ( \A1|ShiftRight0~5_combout\ & ( (!\A1|Add2~13_sumout\ & (!\A1|Add2~17_sumout\ & ((\A1|Xb[22]~21_combout\) # (\A1|Add2~9_sumout\)))) ) ) ) # ( !\A1|Add2~21_sumout\ & ( !\A1|ShiftRight0~5_combout\ & ( 
-- (!\A1|Add2~13_sumout\ & (!\A1|Add2~9_sumout\ & (\A1|Xb[22]~21_combout\ & !\A1|Add2~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~13_sumout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Xb[22]~21_combout\,
	datad => \A1|ALT_INV_Add2~17_sumout\,
	datae => \A1|ALT_INV_Add2~21_sumout\,
	dataf => \A1|ALT_INV_ShiftRight0~5_combout\,
	combout => \A1|Xb[22]~22_combout\);

-- Location: LABCELL_X67_Y3_N36
\A1|ShiftLeft0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~19_combout\ = ( linput(15) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(16))) # (\A1|Add2~1_sumout\ & ((linput(17)))) ) ) ) # ( !linput(15) & ( \A1|Add2~5_sumout\ & ( (!\A1|Add2~1_sumout\ & (linput(16))) # (\A1|Add2~1_sumout\ & 
-- ((linput(17)))) ) ) ) # ( linput(15) & ( !\A1|Add2~5_sumout\ & ( (\A1|Add2~1_sumout\) # (linput(18)) ) ) ) # ( !linput(15) & ( !\A1|Add2~5_sumout\ & ( (linput(18) & !\A1|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(18),
	datab => ALT_INV_linput(16),
	datac => ALT_INV_linput(17),
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(15),
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~19_combout\);

-- Location: LABCELL_X68_Y2_N30
\A1|ShiftLeft0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~18_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(9) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(8) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(7) ) ) ) # ( !\A1|Add2~1_sumout\ & ( 
-- !\A1|Add2~5_sumout\ & ( linput(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(8),
	datab => ALT_INV_linput(10),
	datac => ALT_INV_linput(9),
	datad => ALT_INV_linput(7),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~18_combout\);

-- Location: LABCELL_X68_Y3_N0
\A1|ShiftLeft0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~21_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(21) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(20) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(19) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(22),
	datab => ALT_INV_linput(19),
	datac => ALT_INV_linput(20),
	datad => ALT_INV_linput(21),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~21_combout\);

-- Location: LABCELL_X68_Y3_N48
\A1|ShiftLeft0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~20_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(13) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(12) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(11) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(11),
	datab => ALT_INV_linput(14),
	datac => ALT_INV_linput(12),
	datad => ALT_INV_linput(13),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~20_combout\);

-- Location: LABCELL_X70_Y2_N18
\A1|Xb[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[22]~20_combout\ = ( \A1|ShiftLeft0~20_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~19_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~18_combout\))) ) ) ) # ( !\A1|ShiftLeft0~20_combout\ & ( \A1|Add3~2_combout\ 
-- & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~19_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~18_combout\))) ) ) ) # ( \A1|ShiftLeft0~20_combout\ & ( !\A1|Add3~2_combout\ & ( (\A1|Add3~1_combout\) # (\A1|ShiftLeft0~21_combout\) ) ) ) # ( 
-- !\A1|ShiftLeft0~20_combout\ & ( !\A1|Add3~2_combout\ & ( (\A1|ShiftLeft0~21_combout\ & !\A1|Add3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~19_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~18_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~21_combout\,
	datad => \A1|ALT_INV_Add3~1_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~20_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|Xb[22]~20_combout\);

-- Location: LABCELL_X70_Y2_N30
\A1|Xb[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[22]~23_combout\ = ( \A1|Xb[22]~22_combout\ & ( \A1|Xb[22]~20_combout\ ) ) # ( !\A1|Xb[22]~22_combout\ & ( \A1|Xb[22]~20_combout\ & ( ((\A1|Xb[20]~10_combout\ & ((\A1|Xb[20]~6_combout\) # (\A1|ShiftLeft0~22_combout\)))) # (\A1|Xb[22]~19_combout\) ) 
-- ) ) # ( \A1|Xb[22]~22_combout\ & ( !\A1|Xb[22]~20_combout\ ) ) # ( !\A1|Xb[22]~22_combout\ & ( !\A1|Xb[22]~20_combout\ & ( ((\A1|Xb[20]~10_combout\ & (\A1|ShiftLeft0~22_combout\ & !\A1|Xb[20]~6_combout\))) # (\A1|Xb[22]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011111111111111111100110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Xb[20]~10_combout\,
	datab => \A1|ALT_INV_Xb[22]~19_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~22_combout\,
	datad => \A1|ALT_INV_Xb[20]~6_combout\,
	datae => \A1|ALT_INV_Xb[22]~22_combout\,
	dataf => \A1|ALT_INV_Xb[22]~20_combout\,
	combout => \A1|Xb[22]~23_combout\);

-- Location: LABCELL_X68_Y2_N0
\A1|Xb[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[23]~25_combout\ = ( !\A1|Add2~17_sumout\ & ( \A1|Xb[19]~2_combout\ & ( (!\A1|Add2~21_sumout\ & (!\A1|Add2~13_sumout\ & ((\A1|Add2~9_sumout\) # (\A1|ShiftRight0~2_combout\)))) ) ) ) # ( !\A1|Add2~17_sumout\ & ( !\A1|Xb[19]~2_combout\ & ( 
-- (!\A1|Add2~21_sumout\ & (\A1|ShiftRight0~2_combout\ & (!\A1|Add2~9_sumout\ & !\A1|Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~21_sumout\,
	datab => \A1|ALT_INV_ShiftRight0~2_combout\,
	datac => \A1|ALT_INV_Add2~9_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_Add2~17_sumout\,
	dataf => \A1|ALT_INV_Xb[19]~2_combout\,
	combout => \A1|Xb[23]~25_combout\);

-- Location: LABCELL_X67_Y2_N0
\A1|Xb[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[23]~24_combout\ = ( \A1|ShiftLeft0~5_combout\ & ( (!\A1|ShiftRight0~0_combout\ $ (\A1|Add2~9_sumout\)) # (\A1|ShiftLeft0~0_combout\) ) ) # ( !\A1|ShiftLeft0~5_combout\ & ( (\A1|ShiftLeft0~0_combout\ & (!\A1|ShiftRight0~0_combout\ $ 
-- (!\A1|Add2~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011110011001111111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|ALT_INV_ShiftLeft0~0_combout\,
	datac => \A1|ALT_INV_ShiftRight0~0_combout\,
	datad => \A1|ALT_INV_Add2~9_sumout\,
	dataf => \A1|ALT_INV_ShiftLeft0~5_combout\,
	combout => \A1|Xb[23]~24_combout\);

-- Location: LABCELL_X67_Y2_N48
\A1|ShiftLeft0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~23_combout\ = ( linput(21) & ( linput(23) & ( (!\A1|Add2~1_sumout\) # ((!\A1|Add2~5_sumout\ & ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22)))) ) ) ) # ( !linput(21) & ( linput(23) & ( (!\A1|Add2~5_sumout\ & (((!\A1|Add2~1_sumout\) # 
-- (linput(20))))) # (\A1|Add2~5_sumout\ & (linput(22) & ((\A1|Add2~1_sumout\)))) ) ) ) # ( linput(21) & ( !linput(23) & ( (!\A1|Add2~5_sumout\ & (((linput(20) & \A1|Add2~1_sumout\)))) # (\A1|Add2~5_sumout\ & (((!\A1|Add2~1_sumout\)) # (linput(22)))) ) ) ) # 
-- ( !linput(21) & ( !linput(23) & ( (\A1|Add2~1_sumout\ & ((!\A1|Add2~5_sumout\ & ((linput(20)))) # (\A1|Add2~5_sumout\ & (linput(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(22),
	datab => ALT_INV_linput(20),
	datac => \A1|ALT_INV_Add2~5_sumout\,
	datad => \A1|ALT_INV_Add2~1_sumout\,
	datae => ALT_INV_linput(21),
	dataf => ALT_INV_linput(23),
	combout => \A1|ShiftLeft0~23_combout\);

-- Location: LABCELL_X67_Y2_N54
\A1|ShiftLeft0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~24_combout\ = ( \A1|Add3~1_combout\ & ( \A1|Add3~2_combout\ & ( \A1|ShiftLeft0~2_combout\ ) ) ) # ( !\A1|Add3~1_combout\ & ( \A1|Add3~2_combout\ & ( \A1|ShiftLeft0~3_combout\ ) ) ) # ( \A1|Add3~1_combout\ & ( !\A1|Add3~2_combout\ & ( 
-- \A1|ShiftLeft0~1_combout\ ) ) ) # ( !\A1|Add3~1_combout\ & ( !\A1|Add3~2_combout\ & ( \A1|ShiftLeft0~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~3_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~1_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~23_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~2_combout\,
	datae => \A1|ALT_INV_Add3~1_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|ShiftLeft0~24_combout\);

-- Location: LABCELL_X68_Y2_N12
\A1|Xb[23]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[23]~26_combout\ = ( \A1|Add3~0_combout\ & ( \A1|ShiftLeft0~24_combout\ & ( ((\A1|Xb[26]~0_combout\ & (!\A1|Add3~1_combout\ & \A1|Xb[23]~24_combout\))) # (\A1|Xb[23]~25_combout\) ) ) ) # ( !\A1|Add3~0_combout\ & ( \A1|ShiftLeft0~24_combout\ & ( 
-- (\A1|Xb[23]~25_combout\) # (\A1|Xb[26]~0_combout\) ) ) ) # ( \A1|Add3~0_combout\ & ( !\A1|ShiftLeft0~24_combout\ & ( ((\A1|Xb[26]~0_combout\ & (!\A1|Add3~1_combout\ & \A1|Xb[23]~24_combout\))) # (\A1|Xb[23]~25_combout\) ) ) ) # ( !\A1|Add3~0_combout\ & ( 
-- !\A1|ShiftLeft0~24_combout\ & ( \A1|Xb[23]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110100111101011111010111110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Xb[26]~0_combout\,
	datab => \A1|ALT_INV_Add3~1_combout\,
	datac => \A1|ALT_INV_Xb[23]~25_combout\,
	datad => \A1|ALT_INV_Xb[23]~24_combout\,
	datae => \A1|ALT_INV_Add3~0_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~24_combout\,
	combout => \A1|Xb[23]~26_combout\);

-- Location: LABCELL_X66_Y3_N54
\A1|Xb[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[26]~27_combout\ = ( !\A1|Add2~21_sumout\ & ( (!\A1|Add2~13_sumout\ & (!\A1|Add2~9_sumout\ & !\A1|Add2~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~13_sumout\,
	datab => \A1|ALT_INV_Add2~9_sumout\,
	datac => \A1|ALT_INV_Add2~17_sumout\,
	dataf => \A1|ALT_INV_Add2~21_sumout\,
	combout => \A1|Xb[26]~27_combout\);

-- Location: MLABCELL_X65_Y2_N12
\A1|ShiftLeft0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~27_combout\ = ( \A1|Xb[20]~9_combout\ & ( \A1|ShiftLeft0~7_combout\ & ( (!\A1|ShiftLeft0~6_combout\ & (!\A1|ShiftRight0~0_combout\ $ ((!\A1|Add2~9_sumout\)))) # (\A1|ShiftLeft0~6_combout\ & ((!\A1|ShiftRight0~0_combout\ $ 
-- (!\A1|Add2~9_sumout\)) # (\A1|Add2~13_sumout\))) ) ) ) # ( !\A1|Xb[20]~9_combout\ & ( \A1|ShiftLeft0~7_combout\ & ( (!\A1|ShiftRight0~0_combout\ & (\A1|Add2~13_sumout\ & ((\A1|Add2~9_sumout\) # (\A1|ShiftLeft0~6_combout\)))) # (\A1|ShiftRight0~0_combout\ 
-- & ((!\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\))) # (\A1|Add2~9_sumout\ & (\A1|ShiftLeft0~6_combout\ & \A1|Add2~13_sumout\)))) ) ) ) # ( \A1|Xb[20]~9_combout\ & ( !\A1|ShiftLeft0~7_combout\ & ( (!\A1|ShiftRight0~0_combout\ & ((!\A1|Add2~9_sumout\ & 
-- (\A1|ShiftLeft0~6_combout\ & \A1|Add2~13_sumout\)) # (\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\))))) # (\A1|ShiftRight0~0_combout\ & (\A1|Add2~13_sumout\ & ((!\A1|Add2~9_sumout\) # (\A1|ShiftLeft0~6_combout\)))) ) ) ) # ( !\A1|Xb[20]~9_combout\ & ( 
-- !\A1|ShiftLeft0~7_combout\ & ( (\A1|ShiftLeft0~6_combout\ & (\A1|Add2~13_sumout\ & (!\A1|ShiftRight0~0_combout\ $ (\A1|Add2~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000010100111000101010000001010110101101001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~0_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~6_combout\,
	datac => \A1|ALT_INV_Add2~9_sumout\,
	datad => \A1|ALT_INV_Add2~13_sumout\,
	datae => \A1|ALT_INV_Xb[20]~9_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~7_combout\,
	combout => \A1|ShiftLeft0~27_combout\);

-- Location: LABCELL_X68_Y3_N30
\A1|ShiftLeft0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~25_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(23) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(22) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(21) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(24) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(22),
	datab => ALT_INV_linput(21),
	datac => ALT_INV_linput(24),
	datad => ALT_INV_linput(23),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~25_combout\);

-- Location: LABCELL_X68_Y2_N24
\A1|ShiftLeft0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~26_combout\ = ( \A1|ShiftLeft0~10_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\) # (\A1|ShiftLeft0~9_combout\) ) ) ) # ( !\A1|ShiftLeft0~10_combout\ & ( \A1|Add3~2_combout\ & ( (\A1|ShiftLeft0~9_combout\ & \A1|Add3~1_combout\) 
-- ) ) ) # ( \A1|ShiftLeft0~10_combout\ & ( !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~25_combout\))) # (\A1|Add3~1_combout\ & (\A1|ShiftLeft0~8_combout\)) ) ) ) # ( !\A1|ShiftLeft0~10_combout\ & ( !\A1|Add3~2_combout\ & ( 
-- (!\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~25_combout\))) # (\A1|Add3~1_combout\ & (\A1|ShiftLeft0~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~9_combout\,
	datab => \A1|ALT_INV_Add3~1_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~8_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~25_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~10_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|ShiftLeft0~26_combout\);

-- Location: LABCELL_X68_Y2_N42
\A1|Xb[24]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[24]~28_combout\ = ( \A1|ShiftLeft0~27_combout\ & ( \A1|ShiftLeft0~26_combout\ & ( ((\A1|ShiftRight0~3_combout\ & \A1|Xb[26]~27_combout\)) # (\A1|Xb[26]~0_combout\) ) ) ) # ( !\A1|ShiftLeft0~27_combout\ & ( \A1|ShiftLeft0~26_combout\ & ( 
-- (!\A1|ShiftRight0~3_combout\ & (\A1|Xb[26]~0_combout\ & ((!\A1|Add3~0_combout\)))) # (\A1|ShiftRight0~3_combout\ & (((\A1|Xb[26]~0_combout\ & !\A1|Add3~0_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( \A1|ShiftLeft0~27_combout\ & ( 
-- !\A1|ShiftLeft0~26_combout\ & ( (!\A1|ShiftRight0~3_combout\ & (\A1|Xb[26]~0_combout\ & ((\A1|Add3~0_combout\)))) # (\A1|ShiftRight0~3_combout\ & (((\A1|Xb[26]~0_combout\ & \A1|Add3~0_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( 
-- !\A1|ShiftLeft0~27_combout\ & ( !\A1|ShiftLeft0~26_combout\ & ( (\A1|ShiftRight0~3_combout\ & \A1|Xb[26]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010011011100110111000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~3_combout\,
	datab => \A1|ALT_INV_Xb[26]~0_combout\,
	datac => \A1|ALT_INV_Xb[26]~27_combout\,
	datad => \A1|ALT_INV_Add3~0_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~27_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~26_combout\,
	combout => \A1|Xb[24]~28_combout\);

-- Location: LABCELL_X66_Y2_N30
\A1|ShiftLeft0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~30_combout\ = ( \A1|ShiftLeft0~12_combout\ & ( \A1|ShiftLeft0~11_combout\ & ( (!\A1|ShiftLeft0~16_combout\ & (!\A1|Add2~13_sumout\ $ (((!\A1|ShiftRight0~0_combout\) # (\A1|Add2~9_sumout\))))) # (\A1|ShiftLeft0~16_combout\ & 
-- ((!\A1|Add2~9_sumout\ $ (!\A1|ShiftRight0~0_combout\)) # (\A1|Add2~13_sumout\))) ) ) ) # ( !\A1|ShiftLeft0~12_combout\ & ( \A1|ShiftLeft0~11_combout\ & ( (!\A1|ShiftLeft0~16_combout\ & (\A1|Add2~13_sumout\ & (!\A1|Add2~9_sumout\ $ 
-- (\A1|ShiftRight0~0_combout\)))) # (\A1|ShiftLeft0~16_combout\ & (!\A1|Add2~13_sumout\ $ (((!\A1|Add2~9_sumout\) # (\A1|ShiftRight0~0_combout\))))) ) ) ) # ( \A1|ShiftLeft0~12_combout\ & ( !\A1|ShiftLeft0~11_combout\ & ( (!\A1|Add2~9_sumout\ & 
-- (\A1|ShiftRight0~0_combout\ & ((!\A1|Add2~13_sumout\) # (\A1|ShiftLeft0~16_combout\)))) # (\A1|Add2~9_sumout\ & (!\A1|ShiftRight0~0_combout\ & ((\A1|ShiftLeft0~16_combout\) # (\A1|Add2~13_sumout\)))) ) ) ) # ( !\A1|ShiftLeft0~12_combout\ & ( 
-- !\A1|ShiftLeft0~11_combout\ & ( (\A1|ShiftLeft0~16_combout\ & ((!\A1|Add2~9_sumout\ & (\A1|Add2~13_sumout\ & \A1|ShiftRight0~0_combout\)) # (\A1|Add2~9_sumout\ & (!\A1|Add2~13_sumout\ & !\A1|ShiftRight0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000010000110000101101000100001011000110011100101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~13_sumout\,
	datac => \A1|ALT_INV_ShiftRight0~0_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~16_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~12_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~11_combout\,
	combout => \A1|ShiftLeft0~30_combout\);

-- Location: LABCELL_X66_Y2_N45
\A1|ShiftLeft0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~28_combout\ = ( \A1|Add2~1_sumout\ & ( linput(25) & ( (!\A1|Add2~5_sumout\ & ((linput(22)))) # (\A1|Add2~5_sumout\ & (linput(24))) ) ) ) # ( !\A1|Add2~1_sumout\ & ( linput(25) & ( (!\A1|Add2~5_sumout\) # (linput(23)) ) ) ) # ( 
-- \A1|Add2~1_sumout\ & ( !linput(25) & ( (!\A1|Add2~5_sumout\ & ((linput(22)))) # (\A1|Add2~5_sumout\ & (linput(24))) ) ) ) # ( !\A1|Add2~1_sumout\ & ( !linput(25) & ( (linput(23) & \A1|Add2~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(24),
	datab => ALT_INV_linput(23),
	datac => ALT_INV_linput(22),
	datad => \A1|ALT_INV_Add2~5_sumout\,
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => ALT_INV_linput(25),
	combout => \A1|ShiftLeft0~28_combout\);

-- Location: LABCELL_X66_Y2_N36
\A1|ShiftLeft0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~29_combout\ = ( \A1|ShiftLeft0~13_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~15_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~14_combout\))) ) ) ) # ( !\A1|ShiftLeft0~13_combout\ & ( 
-- \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & (\A1|ShiftLeft0~15_combout\)) # (\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~14_combout\))) ) ) ) # ( \A1|ShiftLeft0~13_combout\ & ( !\A1|Add3~2_combout\ & ( (\A1|ShiftLeft0~28_combout\) # (\A1|Add3~1_combout\) ) 
-- ) ) # ( !\A1|ShiftLeft0~13_combout\ & ( !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & \A1|ShiftLeft0~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add3~1_combout\,
	datab => \A1|ALT_INV_ShiftLeft0~15_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~14_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~28_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~13_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|ShiftLeft0~29_combout\);

-- Location: LABCELL_X66_Y2_N9
\A1|Xb[25]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[25]~29_combout\ = ( \A1|ShiftLeft0~29_combout\ & ( \A1|Add3~0_combout\ & ( (!\A1|ShiftRight0~4_combout\ & (\A1|Xb[26]~0_combout\ & (\A1|ShiftLeft0~30_combout\))) # (\A1|ShiftRight0~4_combout\ & (((\A1|Xb[26]~0_combout\ & 
-- \A1|ShiftLeft0~30_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( !\A1|ShiftLeft0~29_combout\ & ( \A1|Add3~0_combout\ & ( (!\A1|ShiftRight0~4_combout\ & (\A1|Xb[26]~0_combout\ & (\A1|ShiftLeft0~30_combout\))) # (\A1|ShiftRight0~4_combout\ & 
-- (((\A1|Xb[26]~0_combout\ & \A1|ShiftLeft0~30_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( \A1|ShiftLeft0~29_combout\ & ( !\A1|Add3~0_combout\ & ( ((\A1|ShiftRight0~4_combout\ & \A1|Xb[26]~27_combout\)) # (\A1|Xb[26]~0_combout\) ) ) ) # ( 
-- !\A1|ShiftLeft0~29_combout\ & ( !\A1|Add3~0_combout\ & ( (\A1|ShiftRight0~4_combout\ & \A1|Xb[26]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~4_combout\,
	datab => \A1|ALT_INV_Xb[26]~0_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~30_combout\,
	datad => \A1|ALT_INV_Xb[26]~27_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~29_combout\,
	dataf => \A1|ALT_INV_Add3~0_combout\,
	combout => \A1|Xb[25]~29_combout\);

-- Location: LABCELL_X68_Y2_N21
\A1|ShiftLeft0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~33_combout\ = ( \A1|ShiftRight0~0_combout\ & ( \A1|ShiftLeft0~17_combout\ & ( (!\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\ & (\A1|ShiftLeft0~18_combout\)) # (\A1|Add2~13_sumout\ & ((\A1|ShiftLeft0~22_combout\))))) # (\A1|Add2~9_sumout\ & 
-- (\A1|Add2~13_sumout\)) ) ) ) # ( !\A1|ShiftRight0~0_combout\ & ( \A1|ShiftLeft0~17_combout\ & ( (!\A1|Add2~9_sumout\ & (\A1|Add2~13_sumout\)) # (\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\ & ((\A1|ShiftLeft0~22_combout\))) # (\A1|Add2~13_sumout\ & 
-- (\A1|ShiftLeft0~18_combout\)))) ) ) ) # ( \A1|ShiftRight0~0_combout\ & ( !\A1|ShiftLeft0~17_combout\ & ( (!\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\ & (\A1|ShiftLeft0~18_combout\)) # (\A1|Add2~13_sumout\ & ((\A1|ShiftLeft0~22_combout\))))) ) ) ) # ( 
-- !\A1|ShiftRight0~0_combout\ & ( !\A1|ShiftLeft0~17_combout\ & ( (\A1|Add2~9_sumout\ & ((!\A1|Add2~13_sumout\ & ((\A1|ShiftLeft0~22_combout\))) # (\A1|Add2~13_sumout\ & (\A1|ShiftLeft0~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000010000010101000100011011001110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add2~9_sumout\,
	datab => \A1|ALT_INV_Add2~13_sumout\,
	datac => \A1|ALT_INV_ShiftLeft0~18_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~22_combout\,
	datae => \A1|ALT_INV_ShiftRight0~0_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~17_combout\,
	combout => \A1|ShiftLeft0~33_combout\);

-- Location: LABCELL_X68_Y3_N42
\A1|ShiftLeft0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~31_combout\ = ( \A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(25) ) ) ) # ( !\A1|Add2~1_sumout\ & ( \A1|Add2~5_sumout\ & ( linput(24) ) ) ) # ( \A1|Add2~1_sumout\ & ( !\A1|Add2~5_sumout\ & ( linput(23) ) ) ) # ( !\A1|Add2~1_sumout\ & 
-- ( !\A1|Add2~5_sumout\ & ( linput(26) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_linput(26),
	datab => ALT_INV_linput(25),
	datac => ALT_INV_linput(24),
	datad => ALT_INV_linput(23),
	datae => \A1|ALT_INV_Add2~1_sumout\,
	dataf => \A1|ALT_INV_Add2~5_sumout\,
	combout => \A1|ShiftLeft0~31_combout\);

-- Location: LABCELL_X68_Y2_N6
\A1|ShiftLeft0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|ShiftLeft0~32_combout\ = ( \A1|ShiftLeft0~20_combout\ & ( \A1|Add3~2_combout\ & ( (\A1|ShiftLeft0~21_combout\) # (\A1|Add3~1_combout\) ) ) ) # ( !\A1|ShiftLeft0~20_combout\ & ( \A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & 
-- \A1|ShiftLeft0~21_combout\) ) ) ) # ( \A1|ShiftLeft0~20_combout\ & ( !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~31_combout\))) # (\A1|Add3~1_combout\ & (\A1|ShiftLeft0~19_combout\)) ) ) ) # ( !\A1|ShiftLeft0~20_combout\ & ( 
-- !\A1|Add3~2_combout\ & ( (!\A1|Add3~1_combout\ & ((\A1|ShiftLeft0~31_combout\))) # (\A1|Add3~1_combout\ & (\A1|ShiftLeft0~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftLeft0~19_combout\,
	datab => \A1|ALT_INV_Add3~1_combout\,
	datac => \A1|ALT_INV_ShiftLeft0~21_combout\,
	datad => \A1|ALT_INV_ShiftLeft0~31_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~20_combout\,
	dataf => \A1|ALT_INV_Add3~2_combout\,
	combout => \A1|ShiftLeft0~32_combout\);

-- Location: LABCELL_X68_Y2_N48
\A1|Xb[26]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Xb[26]~30_combout\ = ( \A1|ShiftLeft0~33_combout\ & ( \A1|ShiftLeft0~32_combout\ & ( ((\A1|ShiftRight0~5_combout\ & \A1|Xb[26]~27_combout\)) # (\A1|Xb[26]~0_combout\) ) ) ) # ( !\A1|ShiftLeft0~33_combout\ & ( \A1|ShiftLeft0~32_combout\ & ( 
-- (!\A1|ShiftRight0~5_combout\ & (\A1|Xb[26]~0_combout\ & ((!\A1|Add3~0_combout\)))) # (\A1|ShiftRight0~5_combout\ & (((\A1|Xb[26]~0_combout\ & !\A1|Add3~0_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( \A1|ShiftLeft0~33_combout\ & ( 
-- !\A1|ShiftLeft0~32_combout\ & ( (!\A1|ShiftRight0~5_combout\ & (\A1|Xb[26]~0_combout\ & ((\A1|Add3~0_combout\)))) # (\A1|ShiftRight0~5_combout\ & (((\A1|Xb[26]~0_combout\ & \A1|Add3~0_combout\)) # (\A1|Xb[26]~27_combout\))) ) ) ) # ( 
-- !\A1|ShiftLeft0~33_combout\ & ( !\A1|ShiftLeft0~32_combout\ & ( (\A1|ShiftRight0~5_combout\ & \A1|Xb[26]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010011011100110111000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_ShiftRight0~5_combout\,
	datab => \A1|ALT_INV_Xb[26]~0_combout\,
	datac => \A1|ALT_INV_Xb[26]~27_combout\,
	datad => \A1|ALT_INV_Add3~0_combout\,
	datae => \A1|ALT_INV_ShiftLeft0~33_combout\,
	dataf => \A1|ALT_INV_ShiftLeft0~32_combout\,
	combout => \A1|Xb[26]~30_combout\);

-- Location: M10K_X69_Y2_N0
\A1|romlookup|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0002D0002E0002E0002E0002E0002E0002E0002E0002E0002F0002F0002F0002F0002F0002F0002F00030000300003000030000300003000030000310003100031000310003100031000320003200032000320003200032000320003300033000330003300033000330003400034000340003400034000340003500035000350",
	mem_init1 => "003500035000350003600036000360003600036000370003700037000370003700037000380003800038000380003800039000390003900039000390003A0003A0003A0003A0003A0003B0003B0003B0003B0003B0003C0003C0003C0003C0003C0003D0003D0003D0003D0003E0003E0003E0003E0003E0003F0003F0003F0003F00040000400004000040000410004100041000410004200042000420004200043000430004300043000440004400044000440004500045000450004500046000460004600046000470004700047000480004800048000480004900049000490004A0004A0004A0004B0004B0004B0004B0004C0004C0004C0004D0004D000",
	mem_init0 => "4D0004E0004E0004E0004F0004F0004F0005000050000500005100051000510005200052000530005300053000540005400054000550005500056000560005600057000570005700058000580005900059000590005A0005A0005B0005B0005C0005C0005C0005D0005D0005E0005E0005F0005F00060000600006100061000610006200062000630006300064000640006500065000660006600067000670006800069000690006A0006A0006B0006B0006C0006C0006D0006E0006E0006F0006F0007000071000710007200072000730007400074000750007600076000770007700078000790007A0007A0007B0007C0007C0007D0007E0007F0007F00080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rsqrt_table.mif",
	init_file_layout => "port_a",
	logical_ram_name => "guess:A1|ROM1:romlookup|altsyncram:altsyncram_component|altsyncram_rk24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \A1|romlookup|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X16_Y15_N3
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


