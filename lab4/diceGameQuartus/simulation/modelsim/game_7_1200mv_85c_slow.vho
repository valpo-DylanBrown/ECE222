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

-- DATE "03/21/2019 16:13:30"

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

ENTITY 	game IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rb : IN std_logic;
	win : OUT std_logic;
	lose : OUT std_logic;
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END game;

-- Design Ports Information
-- win	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lose	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rb	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF game IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_rb : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_lose : std_logic;
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock|Out_Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock|Add0~0_combout\ : std_logic;
SIGNAL \clock|Add0~1\ : std_logic;
SIGNAL \clock|Add0~2_combout\ : std_logic;
SIGNAL \clock|Add0~3\ : std_logic;
SIGNAL \clock|Add0~4_combout\ : std_logic;
SIGNAL \clock|Add0~5\ : std_logic;
SIGNAL \clock|Add0~6_combout\ : std_logic;
SIGNAL \clock|Add0~7\ : std_logic;
SIGNAL \clock|Add0~8_combout\ : std_logic;
SIGNAL \clock|Add0~9\ : std_logic;
SIGNAL \clock|Add0~10_combout\ : std_logic;
SIGNAL \clock|Add0~11\ : std_logic;
SIGNAL \clock|Add0~12_combout\ : std_logic;
SIGNAL \clock|Add0~13\ : std_logic;
SIGNAL \clock|Add0~14_combout\ : std_logic;
SIGNAL \clock|Add0~15\ : std_logic;
SIGNAL \clock|Add0~16_combout\ : std_logic;
SIGNAL \clock|Add0~17\ : std_logic;
SIGNAL \clock|Add0~18_combout\ : std_logic;
SIGNAL \clock|Add0~19\ : std_logic;
SIGNAL \clock|Add0~20_combout\ : std_logic;
SIGNAL \clock|Add0~21\ : std_logic;
SIGNAL \clock|Add0~22_combout\ : std_logic;
SIGNAL \clock|Add0~23\ : std_logic;
SIGNAL \clock|Add0~24_combout\ : std_logic;
SIGNAL \clock|Add0~25\ : std_logic;
SIGNAL \clock|Add0~26_combout\ : std_logic;
SIGNAL \clock|Add0~27\ : std_logic;
SIGNAL \clock|Add0~28_combout\ : std_logic;
SIGNAL \clock|Add0~29\ : std_logic;
SIGNAL \clock|Add0~30_combout\ : std_logic;
SIGNAL \clock|Add0~31\ : std_logic;
SIGNAL \clock|Add0~32_combout\ : std_logic;
SIGNAL \clock|Add0~33\ : std_logic;
SIGNAL \clock|Add0~34_combout\ : std_logic;
SIGNAL \clock|Add0~35\ : std_logic;
SIGNAL \clock|Add0~36_combout\ : std_logic;
SIGNAL \clock|Out_Clk~q\ : std_logic;
SIGNAL \clock|Equal0~0_combout\ : std_logic;
SIGNAL \clock|Equal0~1_combout\ : std_logic;
SIGNAL \clock|Equal0~2_combout\ : std_logic;
SIGNAL \clock|Equal0~3_combout\ : std_logic;
SIGNAL \clock|Equal0~4_combout\ : std_logic;
SIGNAL \clock|Equal0~5_combout\ : std_logic;
SIGNAL \clock|Equal0~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock|Out_Clk~clkctrl_outclk\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \lose~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \cntr|count1~0_combout\ : std_logic;
SIGNAL \cntr|Cnt2[1]~0_combout\ : std_logic;
SIGNAL \cntr|Cnt2[0]~1_combout\ : std_logic;
SIGNAL \cntr|Cnt1[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \controller|FC~1_combout\ : std_logic;
SIGNAL \controller|FC~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rb~input_o\ : std_logic;
SIGNAL \controller|FC~0_combout\ : std_logic;
SIGNAL \controller|Equal0~0_combout\ : std_logic;
SIGNAL \controller|FB~1_combout\ : std_logic;
SIGNAL \controller|FC~combout\ : std_logic;
SIGNAL \controller|C~q\ : std_logic;
SIGNAL \controller|Roll~0_combout\ : std_logic;
SIGNAL \cntr|count1~1_combout\ : std_logic;
SIGNAL \cntr|count2~0_combout\ : std_logic;
SIGNAL \cntr|count2~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \controller|Sp~1_combout\ : std_logic;
SIGNAL \controller|Sp~0_combout\ : std_logic;
SIGNAL \controller|Sp~2_combout\ : std_logic;
SIGNAL \controller|FA~0_combout\ : std_logic;
SIGNAL \controller|FA~combout\ : std_logic;
SIGNAL \controller|A~q\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \controller|Equal5~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \controller|Equal5~1_combout\ : std_logic;
SIGNAL \controller|Equal5~2_combout\ : std_logic;
SIGNAL \controller|Equal5~3_combout\ : std_logic;
SIGNAL \controller|FB~0_combout\ : std_logic;
SIGNAL \controller|FB~2_combout\ : std_logic;
SIGNAL \controller|FB~3_combout\ : std_logic;
SIGNAL \controller|B~q\ : std_logic;
SIGNAL \controller|Win~combout\ : std_logic;
SIGNAL \controller|Lose~0_combout\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display2|Mux6~0_combout\ : std_logic;
SIGNAL \display2|Mux5~0_combout\ : std_logic;
SIGNAL \display2|Mux4~0_combout\ : std_logic;
SIGNAL \display2|Mux3~0_combout\ : std_logic;
SIGNAL \display2|Mux2~0_combout\ : std_logic;
SIGNAL \display2|Mux1~0_combout\ : std_logic;
SIGNAL \clock|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \cntr|Cnt2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cntr|Cnt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|Point\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rb <= rb;
win <= ww_win;
lose <= ww_lose;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clock|Out_Clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock|Out_Clk~q\);
\display2|ALT_INV_Mux1~0_combout\ <= NOT \display2|Mux1~0_combout\;
\display1|ALT_INV_Mux1~0_combout\ <= NOT \display1|Mux1~0_combout\;

-- Location: LCCOMB_X1_Y36_N14
\clock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~0_combout\ = \clock|cnt\(0) $ (VCC)
-- \clock|Add0~1\ = CARRY(\clock|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(0),
	datad => VCC,
	combout => \clock|Add0~0_combout\,
	cout => \clock|Add0~1\);

-- Location: LCCOMB_X1_Y36_N16
\clock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~2_combout\ = (\clock|cnt\(1) & (!\clock|Add0~1\)) # (!\clock|cnt\(1) & ((\clock|Add0~1\) # (GND)))
-- \clock|Add0~3\ = CARRY((!\clock|Add0~1\) # (!\clock|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(1),
	datad => VCC,
	cin => \clock|Add0~1\,
	combout => \clock|Add0~2_combout\,
	cout => \clock|Add0~3\);

-- Location: LCCOMB_X1_Y36_N18
\clock|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~4_combout\ = (\clock|cnt\(2) & (\clock|Add0~3\ $ (GND))) # (!\clock|cnt\(2) & (!\clock|Add0~3\ & VCC))
-- \clock|Add0~5\ = CARRY((\clock|cnt\(2) & !\clock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(2),
	datad => VCC,
	cin => \clock|Add0~3\,
	combout => \clock|Add0~4_combout\,
	cout => \clock|Add0~5\);

-- Location: LCCOMB_X1_Y36_N20
\clock|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~6_combout\ = (\clock|cnt\(3) & (!\clock|Add0~5\)) # (!\clock|cnt\(3) & ((\clock|Add0~5\) # (GND)))
-- \clock|Add0~7\ = CARRY((!\clock|Add0~5\) # (!\clock|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(3),
	datad => VCC,
	cin => \clock|Add0~5\,
	combout => \clock|Add0~6_combout\,
	cout => \clock|Add0~7\);

-- Location: LCCOMB_X1_Y36_N22
\clock|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~8_combout\ = (\clock|cnt\(4) & (\clock|Add0~7\ $ (GND))) # (!\clock|cnt\(4) & (!\clock|Add0~7\ & VCC))
-- \clock|Add0~9\ = CARRY((\clock|cnt\(4) & !\clock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(4),
	datad => VCC,
	cin => \clock|Add0~7\,
	combout => \clock|Add0~8_combout\,
	cout => \clock|Add0~9\);

-- Location: LCCOMB_X1_Y36_N24
\clock|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~10_combout\ = (\clock|cnt\(5) & (!\clock|Add0~9\)) # (!\clock|cnt\(5) & ((\clock|Add0~9\) # (GND)))
-- \clock|Add0~11\ = CARRY((!\clock|Add0~9\) # (!\clock|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(5),
	datad => VCC,
	cin => \clock|Add0~9\,
	combout => \clock|Add0~10_combout\,
	cout => \clock|Add0~11\);

-- Location: LCCOMB_X1_Y36_N26
\clock|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~12_combout\ = (\clock|cnt\(6) & (\clock|Add0~11\ $ (GND))) # (!\clock|cnt\(6) & (!\clock|Add0~11\ & VCC))
-- \clock|Add0~13\ = CARRY((\clock|cnt\(6) & !\clock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(6),
	datad => VCC,
	cin => \clock|Add0~11\,
	combout => \clock|Add0~12_combout\,
	cout => \clock|Add0~13\);

-- Location: LCCOMB_X1_Y36_N28
\clock|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~14_combout\ = (\clock|cnt\(7) & (!\clock|Add0~13\)) # (!\clock|cnt\(7) & ((\clock|Add0~13\) # (GND)))
-- \clock|Add0~15\ = CARRY((!\clock|Add0~13\) # (!\clock|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(7),
	datad => VCC,
	cin => \clock|Add0~13\,
	combout => \clock|Add0~14_combout\,
	cout => \clock|Add0~15\);

-- Location: LCCOMB_X1_Y36_N30
\clock|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~16_combout\ = (\clock|cnt\(8) & (\clock|Add0~15\ $ (GND))) # (!\clock|cnt\(8) & (!\clock|Add0~15\ & VCC))
-- \clock|Add0~17\ = CARRY((\clock|cnt\(8) & !\clock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(8),
	datad => VCC,
	cin => \clock|Add0~15\,
	combout => \clock|Add0~16_combout\,
	cout => \clock|Add0~17\);

-- Location: LCCOMB_X1_Y35_N0
\clock|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~18_combout\ = (\clock|cnt\(9) & (!\clock|Add0~17\)) # (!\clock|cnt\(9) & ((\clock|Add0~17\) # (GND)))
-- \clock|Add0~19\ = CARRY((!\clock|Add0~17\) # (!\clock|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(9),
	datad => VCC,
	cin => \clock|Add0~17\,
	combout => \clock|Add0~18_combout\,
	cout => \clock|Add0~19\);

-- Location: LCCOMB_X1_Y35_N2
\clock|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~20_combout\ = (\clock|cnt\(10) & (\clock|Add0~19\ $ (GND))) # (!\clock|cnt\(10) & (!\clock|Add0~19\ & VCC))
-- \clock|Add0~21\ = CARRY((\clock|cnt\(10) & !\clock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(10),
	datad => VCC,
	cin => \clock|Add0~19\,
	combout => \clock|Add0~20_combout\,
	cout => \clock|Add0~21\);

-- Location: LCCOMB_X1_Y35_N4
\clock|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~22_combout\ = (\clock|cnt\(11) & (!\clock|Add0~21\)) # (!\clock|cnt\(11) & ((\clock|Add0~21\) # (GND)))
-- \clock|Add0~23\ = CARRY((!\clock|Add0~21\) # (!\clock|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(11),
	datad => VCC,
	cin => \clock|Add0~21\,
	combout => \clock|Add0~22_combout\,
	cout => \clock|Add0~23\);

-- Location: LCCOMB_X1_Y35_N6
\clock|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~24_combout\ = (\clock|cnt\(12) & (\clock|Add0~23\ $ (GND))) # (!\clock|cnt\(12) & (!\clock|Add0~23\ & VCC))
-- \clock|Add0~25\ = CARRY((\clock|cnt\(12) & !\clock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(12),
	datad => VCC,
	cin => \clock|Add0~23\,
	combout => \clock|Add0~24_combout\,
	cout => \clock|Add0~25\);

-- Location: LCCOMB_X1_Y35_N8
\clock|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~26_combout\ = (\clock|cnt\(13) & (!\clock|Add0~25\)) # (!\clock|cnt\(13) & ((\clock|Add0~25\) # (GND)))
-- \clock|Add0~27\ = CARRY((!\clock|Add0~25\) # (!\clock|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(13),
	datad => VCC,
	cin => \clock|Add0~25\,
	combout => \clock|Add0~26_combout\,
	cout => \clock|Add0~27\);

-- Location: LCCOMB_X1_Y35_N10
\clock|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~28_combout\ = (\clock|cnt\(14) & (\clock|Add0~27\ $ (GND))) # (!\clock|cnt\(14) & (!\clock|Add0~27\ & VCC))
-- \clock|Add0~29\ = CARRY((\clock|cnt\(14) & !\clock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(14),
	datad => VCC,
	cin => \clock|Add0~27\,
	combout => \clock|Add0~28_combout\,
	cout => \clock|Add0~29\);

-- Location: LCCOMB_X1_Y35_N12
\clock|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~30_combout\ = (\clock|cnt\(15) & (!\clock|Add0~29\)) # (!\clock|cnt\(15) & ((\clock|Add0~29\) # (GND)))
-- \clock|Add0~31\ = CARRY((!\clock|Add0~29\) # (!\clock|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock|cnt\(15),
	datad => VCC,
	cin => \clock|Add0~29\,
	combout => \clock|Add0~30_combout\,
	cout => \clock|Add0~31\);

-- Location: LCCOMB_X1_Y35_N14
\clock|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~32_combout\ = (\clock|cnt\(16) & (\clock|Add0~31\ $ (GND))) # (!\clock|cnt\(16) & (!\clock|Add0~31\ & VCC))
-- \clock|Add0~33\ = CARRY((\clock|cnt\(16) & !\clock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(16),
	datad => VCC,
	cin => \clock|Add0~31\,
	combout => \clock|Add0~32_combout\,
	cout => \clock|Add0~33\);

-- Location: LCCOMB_X1_Y35_N16
\clock|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~34_combout\ = (\clock|cnt\(17) & (!\clock|Add0~33\)) # (!\clock|cnt\(17) & ((\clock|Add0~33\) # (GND)))
-- \clock|Add0~35\ = CARRY((!\clock|Add0~33\) # (!\clock|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock|cnt\(17),
	datad => VCC,
	cin => \clock|Add0~33\,
	combout => \clock|Add0~34_combout\,
	cout => \clock|Add0~35\);

-- Location: LCCOMB_X1_Y35_N18
\clock|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Add0~36_combout\ = \clock|Add0~35\ $ (!\clock|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock|cnt\(18),
	cin => \clock|Add0~35\,
	combout => \clock|Add0~36_combout\);

-- Location: FF_X82_Y1_N17
\controller|Point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \controller|Sp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Point\(1));

-- Location: FF_X1_Y36_N3
\clock|Out_Clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|Out_Clk~q\);

-- Location: FF_X1_Y35_N15
\clock|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(16));

-- Location: FF_X1_Y35_N13
\clock|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(15));

-- Location: FF_X1_Y35_N11
\clock|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(14));

-- Location: FF_X1_Y35_N9
\clock|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(13));

-- Location: FF_X1_Y35_N7
\clock|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(12));

-- Location: FF_X1_Y35_N5
\clock|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(11));

-- Location: FF_X1_Y35_N3
\clock|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(10));

-- Location: FF_X1_Y35_N1
\clock|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(9));

-- Location: FF_X1_Y36_N31
\clock|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(8));

-- Location: FF_X1_Y36_N29
\clock|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(7));

-- Location: FF_X1_Y36_N27
\clock|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(6));

-- Location: FF_X1_Y36_N25
\clock|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(5));

-- Location: FF_X1_Y36_N23
\clock|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(4));

-- Location: FF_X1_Y36_N21
\clock|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(3));

-- Location: FF_X1_Y36_N19
\clock|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(2));

-- Location: FF_X1_Y36_N17
\clock|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(1));

-- Location: FF_X1_Y36_N15
\clock|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(0));

-- Location: FF_X1_Y35_N17
\clock|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(17));

-- Location: FF_X1_Y35_N19
\clock|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock|cnt\(18));

-- Location: LCCOMB_X1_Y36_N8
\clock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~0_combout\ = (\clock|Add0~0_combout\ & (\clock|Add0~4_combout\ & (\clock|Add0~2_combout\ & \clock|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~0_combout\,
	datab => \clock|Add0~4_combout\,
	datac => \clock|Add0~2_combout\,
	datad => \clock|Add0~6_combout\,
	combout => \clock|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y36_N6
\clock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~1_combout\ = (\clock|Add0~8_combout\ & \clock|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock|Add0~8_combout\,
	datad => \clock|Add0~10_combout\,
	combout => \clock|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y36_N4
\clock|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~2_combout\ = (\clock|Add0~12_combout\ & (\clock|Add0~14_combout\ & (\clock|Equal0~0_combout\ & \clock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~12_combout\,
	datab => \clock|Add0~14_combout\,
	datac => \clock|Equal0~0_combout\,
	datad => \clock|Equal0~1_combout\,
	combout => \clock|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y36_N12
\clock|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~3_combout\ = (\clock|Add0~16_combout\ & (\clock|Add0~18_combout\ & (\clock|Equal0~2_combout\ & \clock|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~16_combout\,
	datab => \clock|Add0~18_combout\,
	datac => \clock|Equal0~2_combout\,
	datad => \clock|Add0~20_combout\,
	combout => \clock|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y36_N0
\clock|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~4_combout\ = (\clock|Add0~22_combout\ & (\clock|Add0~24_combout\ & (\clock|Add0~26_combout\ & \clock|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~22_combout\,
	datab => \clock|Add0~24_combout\,
	datac => \clock|Add0~26_combout\,
	datad => \clock|Equal0~3_combout\,
	combout => \clock|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y36_N10
\clock|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~5_combout\ = (\clock|Add0~30_combout\ & (\clock|Add0~28_combout\ & \clock|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~30_combout\,
	datac => \clock|Add0~28_combout\,
	datad => \clock|Equal0~4_combout\,
	combout => \clock|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y36_N2
\clock|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock|Equal0~6_combout\ = (\clock|Add0~36_combout\ & (\clock|Add0~32_combout\ & (\clock|Add0~34_combout\ & \clock|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock|Add0~36_combout\,
	datab => \clock|Add0~32_combout\,
	datac => \clock|Add0~34_combout\,
	datad => \clock|Equal0~5_combout\,
	combout => \clock|Equal0~6_combout\);

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

-- Location: CLKCTRL_G2
\clock|Out_Clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock|Out_Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock|Out_Clk~clkctrl_outclk\);

-- Location: IOOBUF_X74_Y73_N23
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|Win~combout\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\lose~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|Lose~0_combout\,
	devoe => ww_devoe,
	o => \lose~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\disp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\disp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\disp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\disp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\disp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\disp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: LCCOMB_X81_Y1_N4
\cntr|count1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|count1~0_combout\ = (\cntr|Cnt1\(2) & ((!\cntr|Cnt1\(1)))) # (!\cntr|Cnt1\(2) & (!\cntr|Cnt1\(0) & \cntr|Cnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \cntr|count1~0_combout\);

-- Location: LCCOMB_X81_Y1_N14
\cntr|Cnt2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|Cnt2[1]~0_combout\ = (\cntr|Cnt1\(0) & (\cntr|Cnt1\(1) & (\cntr|Cnt1\(2) & \controller|Roll~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datab => \cntr|Cnt1\(1),
	datac => \cntr|Cnt1\(2),
	datad => \controller|Roll~0_combout\,
	combout => \cntr|Cnt2[1]~0_combout\);

-- Location: LCCOMB_X82_Y1_N2
\cntr|Cnt2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|Cnt2[0]~1_combout\ = \cntr|Cnt2\(0) $ (\cntr|Cnt2[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntr|Cnt2\(0),
	datad => \cntr|Cnt2[1]~0_combout\,
	combout => \cntr|Cnt2[0]~1_combout\);

-- Location: FF_X82_Y1_N3
\cntr|Cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|Cnt2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt2\(0));

-- Location: LCCOMB_X81_Y1_N24
\cntr|Cnt1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|Cnt1[0]~0_combout\ = !\cntr|Cnt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntr|Cnt1\(0),
	combout => \cntr|Cnt1[0]~0_combout\);

-- Location: FF_X81_Y1_N25
\cntr|Cnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|Cnt1[0]~0_combout\,
	ena => \controller|Roll~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt1\(0));

-- Location: LCCOMB_X82_Y1_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\cntr|Cnt2\(1) & ((\cntr|Cnt1\(1)) # ((!\cntr|Cnt2\(0) & !\cntr|Cnt1\(0))))) # (!\cntr|Cnt2\(1) & (!\cntr|Cnt2\(0) & (\cntr|Cnt1\(1) & !\cntr|Cnt1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(1),
	datab => \cntr|Cnt2\(0),
	datac => \cntr|Cnt1\(1),
	datad => \cntr|Cnt1\(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X82_Y1_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \cntr|Cnt2\(2) $ (\cntr|Cnt1\(2) $ (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(2),
	datac => \cntr|Cnt1\(2),
	datad => \Add0~0_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X82_Y1_N6
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\cntr|Cnt2\(2) & ((\cntr|Cnt1\(2)) # (\Add0~0_combout\))) # (!\cntr|Cnt2\(2) & (\cntr|Cnt1\(2) & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(2),
	datac => \cntr|Cnt1\(2),
	datad => \Add0~0_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X83_Y1_N18
\controller|FC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FC~1_combout\ = (\Add0~4_combout\ & (\Add0~3_combout\ & (!\Add0~2_combout\ & \Add0~5_combout\))) # (!\Add0~4_combout\ & (((\Add0~2_combout\ & !\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~5_combout\,
	combout => \controller|FC~1_combout\);

-- Location: LCCOMB_X83_Y1_N16
\controller|FC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FC~2_combout\ = (!\controller|A~q\ & (\controller|C~q\ & (!\controller|B~q\ & \controller|FC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|A~q\,
	datab => \controller|C~q\,
	datac => \controller|B~q\,
	datad => \controller|FC~1_combout\,
	combout => \controller|FC~2_combout\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\rb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rb,
	o => \rb~input_o\);

-- Location: LCCOMB_X83_Y1_N28
\controller|FC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FC~0_combout\ = (\controller|B~q\ & (\reset~input_o\ & ((\controller|C~q\)))) # (!\controller|B~q\ & (((!\rb~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|B~q\,
	datab => \reset~input_o\,
	datac => \rb~input_o\,
	datad => \controller|C~q\,
	combout => \controller|FC~0_combout\);

-- Location: LCCOMB_X83_Y1_N0
\controller|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Equal0~0_combout\ = (!\Add0~3_combout\ & (\Add0~2_combout\ & (!\Add0~5_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~5_combout\,
	datad => \Add0~4_combout\,
	combout => \controller|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y1_N6
\controller|FB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FB~1_combout\ = (\controller|A~q\ & (\controller|C~q\ & (\rb~input_o\ & \controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|A~q\,
	datab => \controller|C~q\,
	datac => \rb~input_o\,
	datad => \controller|Equal0~0_combout\,
	combout => \controller|FB~1_combout\);

-- Location: LCCOMB_X83_Y1_N20
\controller|FC\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FC~combout\ = (\controller|FC~2_combout\) # ((\controller|FC~0_combout\) # ((!\controller|Equal5~3_combout\ & \controller|FB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Equal5~3_combout\,
	datab => \controller|FC~2_combout\,
	datac => \controller|FC~0_combout\,
	datad => \controller|FB~1_combout\,
	combout => \controller|FC~combout\);

-- Location: FF_X83_Y1_N21
\controller|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \controller|FC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|C~q\);

-- Location: LCCOMB_X83_Y1_N26
\controller|Roll~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Roll~0_combout\ = (!\rb~input_o\ & (!\controller|B~q\ & \controller|C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rb~input_o\,
	datac => \controller|B~q\,
	datad => \controller|C~q\,
	combout => \controller|Roll~0_combout\);

-- Location: FF_X81_Y1_N5
\cntr|Cnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|count1~0_combout\,
	ena => \controller|Roll~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt1\(2));

-- Location: LCCOMB_X81_Y1_N6
\cntr|count1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|count1~1_combout\ = (\cntr|Cnt1\(0) & (!\cntr|Cnt1\(2) & \cntr|Cnt1\(1))) # (!\cntr|Cnt1\(0) & ((!\cntr|Cnt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datab => \cntr|Cnt1\(2),
	datac => \cntr|Cnt1\(1),
	combout => \cntr|count1~1_combout\);

-- Location: FF_X81_Y1_N7
\cntr|Cnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|count1~1_combout\,
	ena => \controller|Roll~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt1\(1));

-- Location: LCCOMB_X81_Y1_N2
\cntr|count2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|count2~0_combout\ = (\cntr|Cnt2\(2) & ((!\cntr|Cnt2\(1)))) # (!\cntr|Cnt2\(2) & (!\cntr|Cnt2\(0) & \cntr|Cnt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datac => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \cntr|count2~0_combout\);

-- Location: FF_X81_Y1_N3
\cntr|Cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|count2~0_combout\,
	ena => \cntr|Cnt2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt2\(2));

-- Location: LCCOMB_X81_Y1_N16
\cntr|count2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntr|count2~1_combout\ = (\cntr|Cnt2\(0) & (\cntr|Cnt2\(1) & !\cntr|Cnt2\(2))) # (!\cntr|Cnt2\(0) & (!\cntr|Cnt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datac => \cntr|Cnt2\(1),
	datad => \cntr|Cnt2\(2),
	combout => \cntr|count2~1_combout\);

-- Location: FF_X81_Y1_N17
\cntr|Cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \cntr|count2~1_combout\,
	ena => \cntr|Cnt2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr|Cnt2\(1));

-- Location: LCCOMB_X82_Y1_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \cntr|Cnt1\(1) $ (\cntr|Cnt2\(1) $ (((!\cntr|Cnt2\(0) & !\cntr|Cnt1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datab => \cntr|Cnt1\(1),
	datac => \cntr|Cnt2\(1),
	datad => \cntr|Cnt1\(0),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X82_Y1_N24
\controller|Sp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Sp~1_combout\ = (\Add0~3_combout\ & ((\Add0~2_combout\ & ((\Add0~4_combout\) # (\Add0~5_combout\))) # (!\Add0~2_combout\ & ((!\Add0~5_combout\) # (!\Add0~4_combout\))))) # (!\Add0~3_combout\ & (((\Add0~4_combout\ & \Add0~5_combout\)) # 
-- (!\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~5_combout\,
	combout => \controller|Sp~1_combout\);

-- Location: LCCOMB_X82_Y1_N30
\controller|Sp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Sp~0_combout\ = (\controller|C~q\ & (\rb~input_o\ & (!\controller|A~q\ & !\controller|B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|C~q\,
	datab => \rb~input_o\,
	datac => \controller|A~q\,
	datad => \controller|B~q\,
	combout => \controller|Sp~0_combout\);

-- Location: LCCOMB_X82_Y1_N18
\controller|Sp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Sp~2_combout\ = (\controller|Sp~0_combout\ & \controller|Sp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Sp~0_combout\,
	datad => \controller|Sp~1_combout\,
	combout => \controller|Sp~2_combout\);

-- Location: LCCOMB_X83_Y1_N24
\controller|FA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FA~0_combout\ = (\controller|Sp~2_combout\) # ((!\controller|Equal5~3_combout\ & (!\controller|Equal0~0_combout\ & \controller|A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Equal5~3_combout\,
	datab => \controller|Equal0~0_combout\,
	datac => \controller|A~q\,
	datad => \controller|Sp~2_combout\,
	combout => \controller|FA~0_combout\);

-- Location: LCCOMB_X83_Y1_N10
\controller|FA\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FA~combout\ = (\controller|FA~0_combout\) # ((\controller|A~q\ & ((!\controller|C~q\) # (!\rb~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rb~input_o\,
	datab => \controller|C~q\,
	datac => \controller|A~q\,
	datad => \controller|FA~0_combout\,
	combout => \controller|FA~combout\);

-- Location: FF_X83_Y1_N11
\controller|A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \controller|FA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|A~q\);

-- Location: FF_X82_Y1_N15
\controller|Point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \controller|Sp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Point\(2));

-- Location: LCCOMB_X82_Y1_N10
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \cntr|Cnt2\(0) $ (!\cntr|Cnt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr|Cnt2\(0),
	datad => \cntr|Cnt1\(0),
	combout => \Add0~3_combout\);

-- Location: FF_X82_Y1_N5
\controller|Point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	asdata => \Add0~3_combout\,
	sload => VCC,
	ena => \controller|Sp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Point\(0));

-- Location: LCCOMB_X82_Y1_N4
\controller|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Equal5~0_combout\ = \cntr|Cnt2\(0) $ (\controller|Point\(0) $ (!\cntr|Cnt1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr|Cnt2\(0),
	datac => \controller|Point\(0),
	datad => \cntr|Cnt1\(0),
	combout => \controller|Equal5~0_combout\);

-- Location: LCCOMB_X81_Y1_N28
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \cntr|Cnt1\(2) $ (\cntr|Cnt2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt2\(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X82_Y1_N26
\controller|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Equal5~1_combout\ = (!\controller|Equal5~0_combout\ & (\Add0~0_combout\ $ (\controller|Point\(2) $ (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \controller|Point\(2),
	datac => \controller|Equal5~0_combout\,
	datad => \Add0~1_combout\,
	combout => \controller|Equal5~1_combout\);

-- Location: FF_X82_Y1_N7
\controller|Point[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \Add0~5_combout\,
	ena => \controller|Sp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|Point\(3));

-- Location: LCCOMB_X82_Y1_N20
\controller|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Equal5~2_combout\ = \controller|Point\(3) $ (((\cntr|Cnt2\(2) & ((\cntr|Cnt1\(2)) # (\Add0~0_combout\))) # (!\cntr|Cnt2\(2) & (\cntr|Cnt1\(2) & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(2),
	datab => \cntr|Cnt1\(2),
	datac => \controller|Point\(3),
	datad => \Add0~0_combout\,
	combout => \controller|Equal5~2_combout\);

-- Location: LCCOMB_X82_Y1_N22
\controller|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Equal5~3_combout\ = (\controller|Equal5~1_combout\ & (!\controller|Equal5~2_combout\ & (\controller|Point\(1) $ (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Point\(1),
	datab => \Add0~2_combout\,
	datac => \controller|Equal5~1_combout\,
	datad => \controller|Equal5~2_combout\,
	combout => \controller|Equal5~3_combout\);

-- Location: LCCOMB_X82_Y1_N8
\controller|FB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FB~0_combout\ = (\controller|C~q\ & (\rb~input_o\ & (\controller|A~q\ & \controller|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|C~q\,
	datab => \rb~input_o\,
	datac => \controller|A~q\,
	datad => \controller|Equal5~3_combout\,
	combout => \controller|FB~0_combout\);

-- Location: LCCOMB_X82_Y1_N28
\controller|FB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FB~2_combout\ = (\controller|FB~0_combout\) # ((\controller|FB~1_combout\) # ((\reset~input_o\ & \controller|B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \controller|B~q\,
	datac => \controller|FB~0_combout\,
	datad => \controller|FB~1_combout\,
	combout => \controller|FB~2_combout\);

-- Location: LCCOMB_X82_Y1_N0
\controller|FB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|FB~3_combout\ = (\controller|FB~2_combout\) # ((\controller|Sp~0_combout\ & !\controller|Sp~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Sp~0_combout\,
	datac => \controller|Sp~1_combout\,
	datad => \controller|FB~2_combout\,
	combout => \controller|FB~3_combout\);

-- Location: FF_X82_Y1_N1
\controller|B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|Out_Clk~clkctrl_outclk\,
	d => \controller|FB~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|B~q\);

-- Location: LCCOMB_X83_Y1_N22
\controller|Win\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Win~combout\ = (\controller|B~q\ & !\controller|C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|B~q\,
	datad => \controller|C~q\,
	combout => \controller|Win~combout\);

-- Location: LCCOMB_X83_Y1_N12
\controller|Lose~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller|Lose~0_combout\ = (\controller|B~q\ & \controller|C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|B~q\,
	datad => \controller|C~q\,
	combout => \controller|Lose~0_combout\);

-- Location: LCCOMB_X81_Y1_N22
\display1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = (\cntr|Cnt1\(2) & (!\cntr|Cnt1\(0) & \cntr|Cnt1\(1))) # (!\cntr|Cnt1\(2) & ((!\cntr|Cnt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y1_N12
\display1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = (\cntr|Cnt1\(0) & (!\cntr|Cnt1\(2) & \cntr|Cnt1\(1))) # (!\cntr|Cnt1\(0) & ((\cntr|Cnt1\(1)) # (!\cntr|Cnt1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y1_N26
\display1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = ((\cntr|Cnt1\(2) & !\cntr|Cnt1\(1))) # (!\cntr|Cnt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y1_N8
\display1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = (\cntr|Cnt1\(0) & (\cntr|Cnt1\(2) & !\cntr|Cnt1\(1))) # (!\cntr|Cnt1\(0) & (\cntr|Cnt1\(2) $ (!\cntr|Cnt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y1_N10
\display1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = (\cntr|Cnt1\(1) & (\cntr|Cnt1\(0) $ (\cntr|Cnt1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y1_N0
\display1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = ((\cntr|Cnt1\(0) & !\cntr|Cnt1\(1))) # (!\cntr|Cnt1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt1\(0),
	datac => \cntr|Cnt1\(2),
	datad => \cntr|Cnt1\(1),
	combout => \display1|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y1_N28
\display2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux6~0_combout\ = (\cntr|Cnt2\(2) & (!\cntr|Cnt2\(0) & \cntr|Cnt2\(1))) # (!\cntr|Cnt2\(2) & ((!\cntr|Cnt2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr|Cnt2\(0),
	datac => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y1_N30
\display2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux5~0_combout\ = (\cntr|Cnt2\(0) & (!\cntr|Cnt2\(2) & \cntr|Cnt2\(1))) # (!\cntr|Cnt2\(0) & ((\cntr|Cnt2\(1)) # (!\cntr|Cnt2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datab => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y1_N20
\display2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux4~0_combout\ = ((\cntr|Cnt2\(2) & !\cntr|Cnt2\(1))) # (!\cntr|Cnt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datab => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y1_N14
\display2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux3~0_combout\ = (\cntr|Cnt2\(0) & (\cntr|Cnt2\(2) & !\cntr|Cnt2\(1))) # (!\cntr|Cnt2\(0) & (\cntr|Cnt2\(2) $ (!\cntr|Cnt2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr|Cnt2\(0),
	datac => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y1_N4
\display2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux2~0_combout\ = (\cntr|Cnt2\(1) & (\cntr|Cnt2\(0) $ (\cntr|Cnt2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr|Cnt2\(0),
	datac => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y1_N18
\display2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux1~0_combout\ = ((\cntr|Cnt2\(0) & !\cntr|Cnt2\(1))) # (!\cntr|Cnt2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr|Cnt2\(0),
	datab => \cntr|Cnt2\(2),
	datad => \cntr|Cnt2\(1),
	combout => \display2|Mux1~0_combout\);

ww_win <= \win~output_o\;

ww_lose <= \lose~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;
END structure;


