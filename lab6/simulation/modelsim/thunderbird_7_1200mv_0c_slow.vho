-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/18/2019 14:51:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	thunderbird IS
    PORT (
	clk : IN std_logic;
	turn : IN std_logic_vector(1 DOWNTO 0);
	lights : OUT std_logic_vector(5 DOWNTO 0)
	);
END thunderbird;

-- Design Ports Information
-- lights[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- turn[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- turn[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF thunderbird IS
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
SIGNAL ww_turn : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_lights : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slow|Out_Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slow|Add0~0_combout\ : std_logic;
SIGNAL \slow|Add0~1\ : std_logic;
SIGNAL \slow|Add0~2_combout\ : std_logic;
SIGNAL \slow|Add0~3\ : std_logic;
SIGNAL \slow|Add0~4_combout\ : std_logic;
SIGNAL \slow|Add0~5\ : std_logic;
SIGNAL \slow|Add0~6_combout\ : std_logic;
SIGNAL \slow|Add0~7\ : std_logic;
SIGNAL \slow|Add0~8_combout\ : std_logic;
SIGNAL \slow|Add0~9\ : std_logic;
SIGNAL \slow|Add0~10_combout\ : std_logic;
SIGNAL \slow|Add0~11\ : std_logic;
SIGNAL \slow|Add0~12_combout\ : std_logic;
SIGNAL \slow|Add0~13\ : std_logic;
SIGNAL \slow|Add0~14_combout\ : std_logic;
SIGNAL \slow|Add0~15\ : std_logic;
SIGNAL \slow|Add0~16_combout\ : std_logic;
SIGNAL \slow|Add0~17\ : std_logic;
SIGNAL \slow|Add0~18_combout\ : std_logic;
SIGNAL \slow|Add0~19\ : std_logic;
SIGNAL \slow|Add0~20_combout\ : std_logic;
SIGNAL \slow|Add0~21\ : std_logic;
SIGNAL \slow|Add0~22_combout\ : std_logic;
SIGNAL \slow|Add0~23\ : std_logic;
SIGNAL \slow|Add0~24_combout\ : std_logic;
SIGNAL \slow|Add0~25\ : std_logic;
SIGNAL \slow|Add0~26_combout\ : std_logic;
SIGNAL \slow|Add0~27\ : std_logic;
SIGNAL \slow|Add0~28_combout\ : std_logic;
SIGNAL \slow|Add0~29\ : std_logic;
SIGNAL \slow|Add0~30_combout\ : std_logic;
SIGNAL \slow|Add0~31\ : std_logic;
SIGNAL \slow|Add0~32_combout\ : std_logic;
SIGNAL \slow|Add0~33\ : std_logic;
SIGNAL \slow|Add0~34_combout\ : std_logic;
SIGNAL \slow|Add0~35\ : std_logic;
SIGNAL \slow|Add0~36_combout\ : std_logic;
SIGNAL \slow|Add0~37\ : std_logic;
SIGNAL \slow|Add0~38_combout\ : std_logic;
SIGNAL \slow|Add0~39\ : std_logic;
SIGNAL \slow|Add0~40_combout\ : std_logic;
SIGNAL \slow|Add0~41\ : std_logic;
SIGNAL \slow|Add0~42_combout\ : std_logic;
SIGNAL \slow|Add0~43\ : std_logic;
SIGNAL \slow|Add0~44_combout\ : std_logic;
SIGNAL \slow|Add0~45\ : std_logic;
SIGNAL \slow|Add0~46_combout\ : std_logic;
SIGNAL \slow|Add0~47\ : std_logic;
SIGNAL \slow|Add0~48_combout\ : std_logic;
SIGNAL \slow|Out_Clk~q\ : std_logic;
SIGNAL \cont|FS.S0~1_combout\ : std_logic;
SIGNAL \slow|Equal0~0_combout\ : std_logic;
SIGNAL \slow|Equal0~1_combout\ : std_logic;
SIGNAL \slow|Equal0~2_combout\ : std_logic;
SIGNAL \slow|Equal0~3_combout\ : std_logic;
SIGNAL \slow|Equal0~4_combout\ : std_logic;
SIGNAL \slow|Equal0~5_combout\ : std_logic;
SIGNAL \slow|Equal0~6_combout\ : std_logic;
SIGNAL \slow|Equal0~7_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \slow|Out_Clk~clkctrl_outclk\ : std_logic;
SIGNAL \lights[0]~output_o\ : std_logic;
SIGNAL \lights[1]~output_o\ : std_logic;
SIGNAL \lights[2]~output_o\ : std_logic;
SIGNAL \lights[3]~output_o\ : std_logic;
SIGNAL \lights[4]~output_o\ : std_logic;
SIGNAL \lights[5]~output_o\ : std_logic;
SIGNAL \turn[1]~input_o\ : std_logic;
SIGNAL \turn[0]~input_o\ : std_logic;
SIGNAL \cont|FS~5_combout\ : std_logic;
SIGNAL \cont|PS.SR3~q\ : std_logic;
SIGNAL \cont|FS~6_combout\ : std_logic;
SIGNAL \cont|PS.SL1~q\ : std_logic;
SIGNAL \cont|FS~7_combout\ : std_logic;
SIGNAL \cont|PS.SL2~q\ : std_logic;
SIGNAL \cont|FS.S0~0_combout\ : std_logic;
SIGNAL \cont|FS.S0~2_combout\ : std_logic;
SIGNAL \cont|PS.S0~q\ : std_logic;
SIGNAL \cont|FS.SH~0_combout\ : std_logic;
SIGNAL \cont|PS.SH~q\ : std_logic;
SIGNAL \cont|lights[0]~3_combout\ : std_logic;
SIGNAL \cont|lights[1]~4_combout\ : std_logic;
SIGNAL \cont|FS~10_combout\ : std_logic;
SIGNAL \cont|PS.SR1~q\ : std_logic;
SIGNAL \cont|FS~9_combout\ : std_logic;
SIGNAL \cont|PS.SR2~q\ : std_logic;
SIGNAL \cont|lights[1]~5_combout\ : std_logic;
SIGNAL \cont|lights[1]~6_combout\ : std_logic;
SIGNAL \cont|lights[2]~7_combout\ : std_logic;
SIGNAL \cont|FS~8_combout\ : std_logic;
SIGNAL \cont|PS.SL3~q\ : std_logic;
SIGNAL \cont|lights[3]~8_combout\ : std_logic;
SIGNAL \cont|lights[4]~9_combout\ : std_logic;
SIGNAL \cont|lights[5]~10_combout\ : std_logic;
SIGNAL \slow|cnt\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_turn <= turn;
lights <= ww_lights;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\slow|Out_Clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slow|Out_Clk~q\);

-- Location: LCCOMB_X114_Y35_N8
\slow|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~0_combout\ = \slow|cnt\(0) $ (VCC)
-- \slow|Add0~1\ = CARRY(\slow|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(0),
	datad => VCC,
	combout => \slow|Add0~0_combout\,
	cout => \slow|Add0~1\);

-- Location: LCCOMB_X114_Y35_N10
\slow|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~2_combout\ = (\slow|cnt\(1) & (!\slow|Add0~1\)) # (!\slow|cnt\(1) & ((\slow|Add0~1\) # (GND)))
-- \slow|Add0~3\ = CARRY((!\slow|Add0~1\) # (!\slow|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(1),
	datad => VCC,
	cin => \slow|Add0~1\,
	combout => \slow|Add0~2_combout\,
	cout => \slow|Add0~3\);

-- Location: LCCOMB_X114_Y35_N12
\slow|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~4_combout\ = (\slow|cnt\(2) & (\slow|Add0~3\ $ (GND))) # (!\slow|cnt\(2) & (!\slow|Add0~3\ & VCC))
-- \slow|Add0~5\ = CARRY((\slow|cnt\(2) & !\slow|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(2),
	datad => VCC,
	cin => \slow|Add0~3\,
	combout => \slow|Add0~4_combout\,
	cout => \slow|Add0~5\);

-- Location: LCCOMB_X114_Y35_N14
\slow|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~6_combout\ = (\slow|cnt\(3) & (!\slow|Add0~5\)) # (!\slow|cnt\(3) & ((\slow|Add0~5\) # (GND)))
-- \slow|Add0~7\ = CARRY((!\slow|Add0~5\) # (!\slow|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(3),
	datad => VCC,
	cin => \slow|Add0~5\,
	combout => \slow|Add0~6_combout\,
	cout => \slow|Add0~7\);

-- Location: LCCOMB_X114_Y35_N16
\slow|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~8_combout\ = (\slow|cnt\(4) & (\slow|Add0~7\ $ (GND))) # (!\slow|cnt\(4) & (!\slow|Add0~7\ & VCC))
-- \slow|Add0~9\ = CARRY((\slow|cnt\(4) & !\slow|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(4),
	datad => VCC,
	cin => \slow|Add0~7\,
	combout => \slow|Add0~8_combout\,
	cout => \slow|Add0~9\);

-- Location: LCCOMB_X114_Y35_N18
\slow|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~10_combout\ = (\slow|cnt\(5) & (!\slow|Add0~9\)) # (!\slow|cnt\(5) & ((\slow|Add0~9\) # (GND)))
-- \slow|Add0~11\ = CARRY((!\slow|Add0~9\) # (!\slow|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(5),
	datad => VCC,
	cin => \slow|Add0~9\,
	combout => \slow|Add0~10_combout\,
	cout => \slow|Add0~11\);

-- Location: LCCOMB_X114_Y35_N20
\slow|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~12_combout\ = (\slow|cnt\(6) & (\slow|Add0~11\ $ (GND))) # (!\slow|cnt\(6) & (!\slow|Add0~11\ & VCC))
-- \slow|Add0~13\ = CARRY((\slow|cnt\(6) & !\slow|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(6),
	datad => VCC,
	cin => \slow|Add0~11\,
	combout => \slow|Add0~12_combout\,
	cout => \slow|Add0~13\);

-- Location: LCCOMB_X114_Y35_N22
\slow|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~14_combout\ = (\slow|cnt\(7) & (!\slow|Add0~13\)) # (!\slow|cnt\(7) & ((\slow|Add0~13\) # (GND)))
-- \slow|Add0~15\ = CARRY((!\slow|Add0~13\) # (!\slow|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(7),
	datad => VCC,
	cin => \slow|Add0~13\,
	combout => \slow|Add0~14_combout\,
	cout => \slow|Add0~15\);

-- Location: LCCOMB_X114_Y35_N24
\slow|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~16_combout\ = (\slow|cnt\(8) & (\slow|Add0~15\ $ (GND))) # (!\slow|cnt\(8) & (!\slow|Add0~15\ & VCC))
-- \slow|Add0~17\ = CARRY((\slow|cnt\(8) & !\slow|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(8),
	datad => VCC,
	cin => \slow|Add0~15\,
	combout => \slow|Add0~16_combout\,
	cout => \slow|Add0~17\);

-- Location: LCCOMB_X114_Y35_N26
\slow|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~18_combout\ = (\slow|cnt\(9) & (!\slow|Add0~17\)) # (!\slow|cnt\(9) & ((\slow|Add0~17\) # (GND)))
-- \slow|Add0~19\ = CARRY((!\slow|Add0~17\) # (!\slow|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(9),
	datad => VCC,
	cin => \slow|Add0~17\,
	combout => \slow|Add0~18_combout\,
	cout => \slow|Add0~19\);

-- Location: LCCOMB_X114_Y35_N28
\slow|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~20_combout\ = (\slow|cnt\(10) & (\slow|Add0~19\ $ (GND))) # (!\slow|cnt\(10) & (!\slow|Add0~19\ & VCC))
-- \slow|Add0~21\ = CARRY((\slow|cnt\(10) & !\slow|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(10),
	datad => VCC,
	cin => \slow|Add0~19\,
	combout => \slow|Add0~20_combout\,
	cout => \slow|Add0~21\);

-- Location: LCCOMB_X114_Y35_N30
\slow|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~22_combout\ = (\slow|cnt\(11) & (!\slow|Add0~21\)) # (!\slow|cnt\(11) & ((\slow|Add0~21\) # (GND)))
-- \slow|Add0~23\ = CARRY((!\slow|Add0~21\) # (!\slow|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(11),
	datad => VCC,
	cin => \slow|Add0~21\,
	combout => \slow|Add0~22_combout\,
	cout => \slow|Add0~23\);

-- Location: LCCOMB_X114_Y34_N0
\slow|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~24_combout\ = (\slow|cnt\(12) & (\slow|Add0~23\ $ (GND))) # (!\slow|cnt\(12) & (!\slow|Add0~23\ & VCC))
-- \slow|Add0~25\ = CARRY((\slow|cnt\(12) & !\slow|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(12),
	datad => VCC,
	cin => \slow|Add0~23\,
	combout => \slow|Add0~24_combout\,
	cout => \slow|Add0~25\);

-- Location: LCCOMB_X114_Y34_N2
\slow|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~26_combout\ = (\slow|cnt\(13) & (!\slow|Add0~25\)) # (!\slow|cnt\(13) & ((\slow|Add0~25\) # (GND)))
-- \slow|Add0~27\ = CARRY((!\slow|Add0~25\) # (!\slow|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(13),
	datad => VCC,
	cin => \slow|Add0~25\,
	combout => \slow|Add0~26_combout\,
	cout => \slow|Add0~27\);

-- Location: LCCOMB_X114_Y34_N4
\slow|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~28_combout\ = (\slow|cnt\(14) & (\slow|Add0~27\ $ (GND))) # (!\slow|cnt\(14) & (!\slow|Add0~27\ & VCC))
-- \slow|Add0~29\ = CARRY((\slow|cnt\(14) & !\slow|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(14),
	datad => VCC,
	cin => \slow|Add0~27\,
	combout => \slow|Add0~28_combout\,
	cout => \slow|Add0~29\);

-- Location: LCCOMB_X114_Y34_N6
\slow|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~30_combout\ = (\slow|cnt\(15) & (!\slow|Add0~29\)) # (!\slow|cnt\(15) & ((\slow|Add0~29\) # (GND)))
-- \slow|Add0~31\ = CARRY((!\slow|Add0~29\) # (!\slow|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(15),
	datad => VCC,
	cin => \slow|Add0~29\,
	combout => \slow|Add0~30_combout\,
	cout => \slow|Add0~31\);

-- Location: LCCOMB_X114_Y34_N8
\slow|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~32_combout\ = (\slow|cnt\(16) & (\slow|Add0~31\ $ (GND))) # (!\slow|cnt\(16) & (!\slow|Add0~31\ & VCC))
-- \slow|Add0~33\ = CARRY((\slow|cnt\(16) & !\slow|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(16),
	datad => VCC,
	cin => \slow|Add0~31\,
	combout => \slow|Add0~32_combout\,
	cout => \slow|Add0~33\);

-- Location: LCCOMB_X114_Y34_N10
\slow|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~34_combout\ = (\slow|cnt\(17) & (!\slow|Add0~33\)) # (!\slow|cnt\(17) & ((\slow|Add0~33\) # (GND)))
-- \slow|Add0~35\ = CARRY((!\slow|Add0~33\) # (!\slow|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(17),
	datad => VCC,
	cin => \slow|Add0~33\,
	combout => \slow|Add0~34_combout\,
	cout => \slow|Add0~35\);

-- Location: LCCOMB_X114_Y34_N12
\slow|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~36_combout\ = (\slow|cnt\(18) & (\slow|Add0~35\ $ (GND))) # (!\slow|cnt\(18) & (!\slow|Add0~35\ & VCC))
-- \slow|Add0~37\ = CARRY((\slow|cnt\(18) & !\slow|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(18),
	datad => VCC,
	cin => \slow|Add0~35\,
	combout => \slow|Add0~36_combout\,
	cout => \slow|Add0~37\);

-- Location: LCCOMB_X114_Y34_N14
\slow|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~38_combout\ = (\slow|cnt\(19) & (!\slow|Add0~37\)) # (!\slow|cnt\(19) & ((\slow|Add0~37\) # (GND)))
-- \slow|Add0~39\ = CARRY((!\slow|Add0~37\) # (!\slow|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(19),
	datad => VCC,
	cin => \slow|Add0~37\,
	combout => \slow|Add0~38_combout\,
	cout => \slow|Add0~39\);

-- Location: LCCOMB_X114_Y34_N16
\slow|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~40_combout\ = (\slow|cnt\(20) & (\slow|Add0~39\ $ (GND))) # (!\slow|cnt\(20) & (!\slow|Add0~39\ & VCC))
-- \slow|Add0~41\ = CARRY((\slow|cnt\(20) & !\slow|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(20),
	datad => VCC,
	cin => \slow|Add0~39\,
	combout => \slow|Add0~40_combout\,
	cout => \slow|Add0~41\);

-- Location: LCCOMB_X114_Y34_N18
\slow|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~42_combout\ = (\slow|cnt\(21) & (!\slow|Add0~41\)) # (!\slow|cnt\(21) & ((\slow|Add0~41\) # (GND)))
-- \slow|Add0~43\ = CARRY((!\slow|Add0~41\) # (!\slow|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(21),
	datad => VCC,
	cin => \slow|Add0~41\,
	combout => \slow|Add0~42_combout\,
	cout => \slow|Add0~43\);

-- Location: LCCOMB_X114_Y34_N20
\slow|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~44_combout\ = (\slow|cnt\(22) & (\slow|Add0~43\ $ (GND))) # (!\slow|cnt\(22) & (!\slow|Add0~43\ & VCC))
-- \slow|Add0~45\ = CARRY((\slow|cnt\(22) & !\slow|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow|cnt\(22),
	datad => VCC,
	cin => \slow|Add0~43\,
	combout => \slow|Add0~44_combout\,
	cout => \slow|Add0~45\);

-- Location: LCCOMB_X114_Y34_N22
\slow|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~46_combout\ = (\slow|cnt\(23) & (!\slow|Add0~45\)) # (!\slow|cnt\(23) & ((\slow|Add0~45\) # (GND)))
-- \slow|Add0~47\ = CARRY((!\slow|Add0~45\) # (!\slow|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow|cnt\(23),
	datad => VCC,
	cin => \slow|Add0~45\,
	combout => \slow|Add0~46_combout\,
	cout => \slow|Add0~47\);

-- Location: LCCOMB_X114_Y34_N24
\slow|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Add0~48_combout\ = \slow|Add0~47\ $ (!\slow|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \slow|cnt\(24),
	cin => \slow|Add0~47\,
	combout => \slow|Add0~48_combout\);

-- Location: FF_X114_Y35_N3
\slow|Out_Clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|Out_Clk~q\);

-- Location: LCCOMB_X91_Y72_N10
\cont|FS.S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS.S0~1_combout\ = (\turn[1]~input_o\) # ((!\cont|PS.SR1~q\ & !\cont|PS.SR2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[1]~input_o\,
	datac => \cont|PS.SR1~q\,
	datad => \cont|PS.SR2~q\,
	combout => \cont|FS.S0~1_combout\);

-- Location: FF_X114_Y34_N25
\slow|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(24));

-- Location: FF_X114_Y34_N23
\slow|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(23));

-- Location: FF_X114_Y34_N21
\slow|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(22));

-- Location: FF_X114_Y34_N19
\slow|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(21));

-- Location: FF_X114_Y34_N17
\slow|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(20));

-- Location: FF_X114_Y34_N15
\slow|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(19));

-- Location: FF_X114_Y34_N13
\slow|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(18));

-- Location: FF_X114_Y34_N11
\slow|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(17));

-- Location: FF_X114_Y34_N9
\slow|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(16));

-- Location: FF_X114_Y34_N7
\slow|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(15));

-- Location: FF_X114_Y34_N5
\slow|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(14));

-- Location: FF_X114_Y34_N3
\slow|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(13));

-- Location: FF_X114_Y34_N1
\slow|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(12));

-- Location: FF_X114_Y35_N31
\slow|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(11));

-- Location: FF_X114_Y35_N29
\slow|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(10));

-- Location: FF_X114_Y35_N27
\slow|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(9));

-- Location: FF_X114_Y35_N25
\slow|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(8));

-- Location: FF_X114_Y35_N23
\slow|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(7));

-- Location: FF_X114_Y35_N21
\slow|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(6));

-- Location: FF_X114_Y35_N19
\slow|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(5));

-- Location: FF_X114_Y35_N17
\slow|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(4));

-- Location: FF_X114_Y35_N15
\slow|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(3));

-- Location: FF_X114_Y35_N13
\slow|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(2));

-- Location: FF_X114_Y35_N11
\slow|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(1));

-- Location: FF_X114_Y35_N9
\slow|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow|cnt\(0));

-- Location: LCCOMB_X113_Y35_N16
\slow|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~0_combout\ = (\slow|Add0~0_combout\ & (\slow|Add0~2_combout\ & (\slow|Add0~4_combout\ & \slow|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~0_combout\,
	datab => \slow|Add0~2_combout\,
	datac => \slow|Add0~4_combout\,
	datad => \slow|Add0~6_combout\,
	combout => \slow|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y35_N6
\slow|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~1_combout\ = (\slow|Add0~12_combout\ & (\slow|Add0~8_combout\ & (\slow|Add0~10_combout\ & \slow|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~12_combout\,
	datab => \slow|Add0~8_combout\,
	datac => \slow|Add0~10_combout\,
	datad => \slow|Add0~14_combout\,
	combout => \slow|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y35_N0
\slow|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~2_combout\ = (\slow|Add0~18_combout\ & (\slow|Add0~16_combout\ & (\slow|Add0~22_combout\ & \slow|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~18_combout\,
	datab => \slow|Add0~16_combout\,
	datac => \slow|Add0~22_combout\,
	datad => \slow|Add0~20_combout\,
	combout => \slow|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y35_N4
\slow|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~3_combout\ = (\slow|Equal0~0_combout\ & (\slow|Equal0~2_combout\ & (\slow|Equal0~1_combout\ & \slow|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Equal0~0_combout\,
	datab => \slow|Equal0~2_combout\,
	datac => \slow|Equal0~1_combout\,
	datad => \slow|Add0~32_combout\,
	combout => \slow|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y34_N30
\slow|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~4_combout\ = (\slow|Add0~26_combout\ & (\slow|Add0~24_combout\ & (\slow|Add0~28_combout\ & \slow|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~26_combout\,
	datab => \slow|Add0~24_combout\,
	datac => \slow|Add0~28_combout\,
	datad => \slow|Add0~30_combout\,
	combout => \slow|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y34_N28
\slow|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~5_combout\ = (\slow|Add0~36_combout\ & (\slow|Add0~34_combout\ & (\slow|Equal0~4_combout\ & \slow|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~36_combout\,
	datab => \slow|Add0~34_combout\,
	datac => \slow|Equal0~4_combout\,
	datad => \slow|Add0~38_combout\,
	combout => \slow|Equal0~5_combout\);

-- Location: LCCOMB_X114_Y35_N6
\slow|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~6_combout\ = (\slow|Add0~42_combout\ & (\slow|Add0~40_combout\ & (\slow|Equal0~3_combout\ & \slow|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~42_combout\,
	datab => \slow|Add0~40_combout\,
	datac => \slow|Equal0~3_combout\,
	datad => \slow|Equal0~5_combout\,
	combout => \slow|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y35_N2
\slow|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow|Equal0~7_combout\ = (\slow|Add0~46_combout\ & (\slow|Add0~44_combout\ & (\slow|Add0~48_combout\ & \slow|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow|Add0~46_combout\,
	datab => \slow|Add0~44_combout\,
	datac => \slow|Add0~48_combout\,
	datad => \slow|Equal0~6_combout\,
	combout => \slow|Equal0~7_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: CLKCTRL_G8
\slow|Out_Clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slow|Out_Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slow|Out_Clk~clkctrl_outclk\);

-- Location: IOOBUF_X69_Y73_N16
\lights[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[0]~3_combout\,
	devoe => ww_devoe,
	o => \lights[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\lights[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[1]~6_combout\,
	devoe => ww_devoe,
	o => \lights[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\lights[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[2]~7_combout\,
	devoe => ww_devoe,
	o => \lights[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\lights[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[3]~8_combout\,
	devoe => ww_devoe,
	o => \lights[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\lights[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[4]~9_combout\,
	devoe => ww_devoe,
	o => \lights[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\lights[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|lights[5]~10_combout\,
	devoe => ww_devoe,
	o => \lights[5]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\turn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_turn(1),
	o => \turn[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\turn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_turn(0),
	o => \turn[0]~input_o\);

-- Location: LCCOMB_X91_Y72_N14
\cont|FS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~5_combout\ = (\cont|PS.SR2~q\ & (!\turn[1]~input_o\ & \turn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|PS.SR2~q\,
	datac => \turn[1]~input_o\,
	datad => \turn[0]~input_o\,
	combout => \cont|FS~5_combout\);

-- Location: FF_X91_Y72_N15
\cont|PS.SR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SR3~q\);

-- Location: LCCOMB_X91_Y72_N6
\cont|FS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~6_combout\ = (!\turn[0]~input_o\ & (!\cont|PS.S0~q\ & \turn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[0]~input_o\,
	datac => \cont|PS.S0~q\,
	datad => \turn[1]~input_o\,
	combout => \cont|FS~6_combout\);

-- Location: FF_X91_Y72_N7
\cont|PS.SL1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SL1~q\);

-- Location: LCCOMB_X91_Y72_N4
\cont|FS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~7_combout\ = (\turn[1]~input_o\ & (\cont|PS.SL1~q\ & !\turn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[1]~input_o\,
	datac => \cont|PS.SL1~q\,
	datad => \turn[0]~input_o\,
	combout => \cont|FS~7_combout\);

-- Location: FF_X91_Y72_N5
\cont|PS.SL2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SL2~q\);

-- Location: LCCOMB_X91_Y72_N20
\cont|FS.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS.S0~0_combout\ = ((!\cont|PS.SL2~q\ & (\cont|PS.S0~q\ & !\cont|PS.SL1~q\))) # (!\turn[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[1]~input_o\,
	datab => \cont|PS.SL2~q\,
	datac => \cont|PS.S0~q\,
	datad => \cont|PS.SL1~q\,
	combout => \cont|FS.S0~0_combout\);

-- Location: LCCOMB_X91_Y72_N30
\cont|FS.S0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS.S0~2_combout\ = (\turn[0]~input_o\ & (((!\cont|PS.S0~q\)) # (!\cont|FS.S0~1_combout\))) # (!\turn[0]~input_o\ & (((!\cont|FS.S0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|FS.S0~1_combout\,
	datab => \turn[0]~input_o\,
	datac => \cont|PS.S0~q\,
	datad => \cont|FS.S0~0_combout\,
	combout => \cont|FS.S0~2_combout\);

-- Location: FF_X91_Y72_N31
\cont|PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS.S0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.S0~q\);

-- Location: LCCOMB_X91_Y72_N24
\cont|FS.SH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS.SH~0_combout\ = (\turn[0]~input_o\ & (!\cont|PS.S0~q\ & \turn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[0]~input_o\,
	datac => \cont|PS.S0~q\,
	datad => \turn[1]~input_o\,
	combout => \cont|FS.SH~0_combout\);

-- Location: FF_X91_Y72_N25
\cont|PS.SH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS.SH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SH~q\);

-- Location: LCCOMB_X91_Y72_N28
\cont|lights[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[0]~3_combout\ = (\cont|PS.SR3~q\) # (\cont|PS.SH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|PS.SR3~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[0]~3_combout\);

-- Location: LCCOMB_X92_Y72_N12
\cont|lights[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[1]~4_combout\ = (!\cont|PS.SL3~q\ & (!\cont|PS.SL1~q\ & !\cont|PS.SL2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|PS.SL3~q\,
	datab => \cont|PS.SL1~q\,
	datac => \cont|PS.SL2~q\,
	combout => \cont|lights[1]~4_combout\);

-- Location: LCCOMB_X91_Y72_N8
\cont|FS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~10_combout\ = (\turn[0]~input_o\ & (!\cont|PS.S0~q\ & !\turn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[0]~input_o\,
	datac => \cont|PS.S0~q\,
	datad => \turn[1]~input_o\,
	combout => \cont|FS~10_combout\);

-- Location: FF_X91_Y72_N9
\cont|PS.SR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SR1~q\);

-- Location: LCCOMB_X91_Y72_N12
\cont|FS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~9_combout\ = (!\turn[1]~input_o\ & (\cont|PS.SR1~q\ & \turn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[1]~input_o\,
	datac => \cont|PS.SR1~q\,
	datad => \turn[0]~input_o\,
	combout => \cont|FS~9_combout\);

-- Location: FF_X91_Y72_N13
\cont|PS.SR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SR2~q\);

-- Location: LCCOMB_X91_Y72_N22
\cont|lights[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[1]~5_combout\ = (!\cont|PS.SR3~q\ & !\cont|PS.SR2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|PS.SR3~q\,
	datad => \cont|PS.SR2~q\,
	combout => \cont|lights[1]~5_combout\);

-- Location: LCCOMB_X92_Y72_N2
\cont|lights[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[1]~6_combout\ = (\cont|PS.SH~q\) # ((\cont|lights[1]~4_combout\ & (!\cont|lights[1]~5_combout\ & !\cont|PS.SR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|lights[1]~4_combout\,
	datab => \cont|lights[1]~5_combout\,
	datac => \cont|PS.SR1~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[1]~6_combout\);

-- Location: LCCOMB_X92_Y72_N28
\cont|lights[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[2]~7_combout\ = (\cont|PS.SH~q\) # ((\cont|lights[1]~4_combout\ & ((\cont|PS.SR1~q\) # (!\cont|lights[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|lights[1]~4_combout\,
	datab => \cont|lights[1]~5_combout\,
	datac => \cont|PS.SR1~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[2]~7_combout\);

-- Location: LCCOMB_X91_Y72_N26
\cont|FS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|FS~8_combout\ = (\turn[1]~input_o\ & (\cont|PS.SL2~q\ & !\turn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn[1]~input_o\,
	datac => \cont|PS.SL2~q\,
	datad => \turn[0]~input_o\,
	combout => \cont|FS~8_combout\);

-- Location: FF_X91_Y72_N27
\cont|PS.SL3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow|Out_Clk~clkctrl_outclk\,
	d => \cont|FS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont|PS.SL3~q\);

-- Location: LCCOMB_X92_Y72_N26
\cont|lights[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[3]~8_combout\ = (\cont|PS.SL3~q\) # ((\cont|PS.SL2~q\) # ((\cont|PS.SL1~q\) # (\cont|PS.SH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|PS.SL3~q\,
	datab => \cont|PS.SL2~q\,
	datac => \cont|PS.SL1~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[3]~8_combout\);

-- Location: LCCOMB_X91_Y72_N18
\cont|lights[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[4]~9_combout\ = (\cont|PS.SH~q\) # ((!\cont|PS.SL1~q\ & ((\cont|PS.SL3~q\) # (\cont|PS.SL2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont|PS.SL3~q\,
	datab => \cont|PS.SL2~q\,
	datac => \cont|PS.SL1~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[4]~9_combout\);

-- Location: LCCOMB_X91_Y72_N16
\cont|lights[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont|lights[5]~10_combout\ = (\cont|PS.SL3~q\) # (\cont|PS.SH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont|PS.SL3~q\,
	datad => \cont|PS.SH~q\,
	combout => \cont|lights[5]~10_combout\);

ww_lights(0) <= \lights[0]~output_o\;

ww_lights(1) <= \lights[1]~output_o\;

ww_lights(2) <= \lights[2]~output_o\;

ww_lights(3) <= \lights[3]~output_o\;

ww_lights(4) <= \lights[4]~output_o\;

ww_lights(5) <= \lights[5]~output_o\;
END structure;


