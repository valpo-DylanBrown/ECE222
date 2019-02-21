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

-- DATE "02/21/2019 14:56:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VHDLMultiplier IS
    PORT (
	m : IN std_logic_vector(3 DOWNTO 0);
	q : IN std_logic_vector(3 DOWNTO 0);
	p : OUT std_logic_vector(7 DOWNTO 0)
	);
END VHDLMultiplier;

-- Design Ports Information
-- p[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VHDLMultiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|s~0_combout\ : std_logic;
SIGNAL \inst6|b~combout\ : std_logic;
SIGNAL \p[0]~output_o\ : std_logic;
SIGNAL \p[1]~output_o\ : std_logic;
SIGNAL \p[2]~output_o\ : std_logic;
SIGNAL \p[3]~output_o\ : std_logic;
SIGNAL \p[4]~output_o\ : std_logic;
SIGNAL \p[5]~output_o\ : std_logic;
SIGNAL \p[6]~output_o\ : std_logic;
SIGNAL \p[7]~output_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \inst|b~combout\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \inst4|s~0_combout\ : std_logic;
SIGNAL \inst4|co~0_combout\ : std_logic;
SIGNAL \inst5|b~combout\ : std_logic;
SIGNAL \inst5|s~combout\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \inst8|s~0_combout\ : std_logic;
SIGNAL \inst8|co~0_combout\ : std_logic;
SIGNAL \inst9|b~combout\ : std_logic;
SIGNAL \inst5|co~0_combout\ : std_logic;
SIGNAL \inst9|s~combout\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \inst12|s~0_combout\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \inst7|b~combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \inst10|s~0_combout\ : std_logic;
SIGNAL \inst13|b~combout\ : std_logic;
SIGNAL \inst12|co~0_combout\ : std_logic;
SIGNAL \inst9|co~0_combout\ : std_logic;
SIGNAL \inst13|s~combout\ : std_logic;
SIGNAL \inst11|s~2_combout\ : std_logic;
SIGNAL \inst14|b~combout\ : std_logic;
SIGNAL \inst10|b~combout\ : std_logic;
SIGNAL \inst10|co~0_combout\ : std_logic;
SIGNAL \inst13|co~0_combout\ : std_logic;
SIGNAL \inst14|s~combout\ : std_logic;
SIGNAL \inst11|b~combout\ : std_logic;
SIGNAL \inst6|co~0_combout\ : std_logic;
SIGNAL \inst11|co~0_combout\ : std_logic;
SIGNAL \inst14|co~0_combout\ : std_logic;
SIGNAL \inst15|s~0_combout\ : std_logic;
SIGNAL \inst15|co~0_combout\ : std_logic;

BEGIN

ww_m <= m;
ww_q <= q;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X111_Y13_N16
\inst6|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s~0_combout\ = (\m[2]~input_o\ & (\q[1]~input_o\ $ (((\q[0]~input_o\ & \m[3]~input_o\))))) # (!\m[2]~input_o\ & (((\q[0]~input_o\ & \m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \q[1]~input_o\,
	datac => \q[0]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst6|s~0_combout\);

-- Location: LCCOMB_X111_Y13_N10
\inst6|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b~combout\ = (\q[1]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst6|b~combout\);

-- Location: IOOBUF_X107_Y73_N9
\p[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b~combout\,
	devoe => ww_devoe,
	o => \p[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\p[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s~0_combout\,
	devoe => ww_devoe,
	o => \p[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\p[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|s~0_combout\,
	devoe => ww_devoe,
	o => \p[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\p[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|s~0_combout\,
	devoe => ww_devoe,
	o => \p[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\p[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|s~combout\,
	devoe => ww_devoe,
	o => \p[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\p[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|s~combout\,
	devoe => ww_devoe,
	o => \p[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\p[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|s~0_combout\,
	devoe => ww_devoe,
	o => \p[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\p[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|co~0_combout\,
	devoe => ww_devoe,
	o => \p[7]~output_o\);

-- Location: IOIBUF_X115_Y10_N8
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(0),
	o => \q[0]~input_o\);

-- Location: LCCOMB_X112_Y13_N16
\inst|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b~combout\ = (\m[0]~input_o\ & \q[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m[0]~input_o\,
	datad => \q[0]~input_o\,
	combout => \inst|b~combout\);

-- Location: IOIBUF_X115_Y6_N15
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(1),
	o => \q[1]~input_o\);

-- Location: LCCOMB_X112_Y13_N18
\inst4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s~0_combout\ = (\m[0]~input_o\ & (\q[1]~input_o\ $ (((\m[1]~input_o\ & \q[0]~input_o\))))) # (!\m[0]~input_o\ & (\m[1]~input_o\ & ((\q[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[1]~input_o\,
	datac => \q[1]~input_o\,
	datad => \q[0]~input_o\,
	combout => \inst4|s~0_combout\);

-- Location: LCCOMB_X112_Y13_N28
\inst4|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|co~0_combout\ = (\m[0]~input_o\ & (\m[1]~input_o\ & (\q[1]~input_o\ & \q[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[1]~input_o\,
	datac => \q[1]~input_o\,
	datad => \q[0]~input_o\,
	combout => \inst4|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N14
\inst5|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|b~combout\ = (\q[1]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~input_o\,
	datad => \m[1]~input_o\,
	combout => \inst5|b~combout\);

-- Location: LCCOMB_X112_Y13_N24
\inst5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s~combout\ = \inst4|co~0_combout\ $ (\inst5|b~combout\ $ (((\m[2]~input_o\ & \q[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \inst4|co~0_combout\,
	datac => \inst5|b~combout\,
	datad => \q[0]~input_o\,
	combout => \inst5|s~combout\);

-- Location: IOIBUF_X115_Y5_N15
\q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(2),
	o => \q[2]~input_o\);

-- Location: LCCOMB_X112_Y13_N26
\inst8|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s~0_combout\ = \inst5|s~combout\ $ (((\m[0]~input_o\ & \q[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \inst5|s~combout\,
	datac => \q[2]~input_o\,
	combout => \inst8|s~0_combout\);

-- Location: LCCOMB_X112_Y13_N0
\inst8|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|co~0_combout\ = (\m[0]~input_o\ & (\inst5|s~combout\ & \q[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \inst5|s~combout\,
	datac => \q[2]~input_o\,
	combout => \inst8|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N4
\inst9|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|b~combout\ = (\q[2]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[2]~input_o\,
	datad => \m[1]~input_o\,
	combout => \inst9|b~combout\);

-- Location: LCCOMB_X112_Y13_N6
\inst5|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|co~0_combout\ = (\inst4|co~0_combout\ & ((\inst5|b~combout\) # ((\m[2]~input_o\ & \q[0]~input_o\)))) # (!\inst4|co~0_combout\ & (\m[2]~input_o\ & (\inst5|b~combout\ & \q[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \inst4|co~0_combout\,
	datac => \inst5|b~combout\,
	datad => \q[0]~input_o\,
	combout => \inst5|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N10
\inst9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s~combout\ = \inst6|s~0_combout\ $ (\inst8|co~0_combout\ $ (\inst9|b~combout\ $ (\inst5|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s~0_combout\,
	datab => \inst8|co~0_combout\,
	datac => \inst9|b~combout\,
	datad => \inst5|co~0_combout\,
	combout => \inst9|s~combout\);

-- Location: IOIBUF_X115_Y7_N15
\q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(3),
	o => \q[3]~input_o\);

-- Location: LCCOMB_X112_Y13_N12
\inst12|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s~0_combout\ = \inst9|s~combout\ $ (((\q[3]~input_o\ & \m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s~combout\,
	datab => \q[3]~input_o\,
	datac => \m[0]~input_o\,
	combout => \inst12|s~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: LCCOMB_X111_Y13_N14
\inst7|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|b~combout\ = (\q[1]~input_o\ & \m[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst7|b~combout\);

-- Location: IOIBUF_X115_Y13_N1
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: LCCOMB_X111_Y13_N8
\inst10|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s~0_combout\ = \inst6|co~0_combout\ $ (\inst7|b~combout\ $ (((\q[2]~input_o\ & \m[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|co~0_combout\,
	datab => \q[2]~input_o\,
	datac => \inst7|b~combout\,
	datad => \m[2]~input_o\,
	combout => \inst10|s~0_combout\);

-- Location: LCCOMB_X112_Y13_N8
\inst13|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|b~combout\ = (\q[3]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[3]~input_o\,
	datad => \m[1]~input_o\,
	combout => \inst13|b~combout\);

-- Location: LCCOMB_X112_Y13_N30
\inst12|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|co~0_combout\ = (\inst9|s~combout\ & (\q[3]~input_o\ & \m[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s~combout\,
	datab => \q[3]~input_o\,
	datac => \m[0]~input_o\,
	combout => \inst12|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N2
\inst9|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|co~0_combout\ = (\inst8|co~0_combout\ & ((\inst9|b~combout\) # (\inst6|s~0_combout\ $ (\inst5|co~0_combout\)))) # (!\inst8|co~0_combout\ & (\inst9|b~combout\ & (\inst6|s~0_combout\ $ (\inst5|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s~0_combout\,
	datab => \inst8|co~0_combout\,
	datac => \inst9|b~combout\,
	datad => \inst5|co~0_combout\,
	combout => \inst9|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N20
\inst13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s~combout\ = \inst10|s~0_combout\ $ (\inst13|b~combout\ $ (\inst12|co~0_combout\ $ (\inst9|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s~0_combout\,
	datab => \inst13|b~combout\,
	datac => \inst12|co~0_combout\,
	datad => \inst9|co~0_combout\,
	combout => \inst13|s~combout\);

-- Location: LCCOMB_X111_Y13_N20
\inst11|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s~2_combout\ = (\m[3]~input_o\ & (\q[2]~input_o\ $ (((\inst6|co~0_combout\ & \q[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|co~0_combout\,
	datab => \q[2]~input_o\,
	datac => \q[1]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst11|s~2_combout\);

-- Location: LCCOMB_X111_Y13_N18
\inst14|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|b~combout\ = (\q[3]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[3]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst14|b~combout\);

-- Location: LCCOMB_X111_Y13_N4
\inst10|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|b~combout\ = (\q[2]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[2]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst10|b~combout\);

-- Location: LCCOMB_X111_Y13_N22
\inst10|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|co~0_combout\ = (\inst10|b~combout\ & ((\inst9|co~0_combout\) # (\inst6|co~0_combout\ $ (\inst7|b~combout\)))) # (!\inst10|b~combout\ & (\inst9|co~0_combout\ & (\inst6|co~0_combout\ $ (\inst7|b~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|co~0_combout\,
	datab => \inst10|b~combout\,
	datac => \inst7|b~combout\,
	datad => \inst9|co~0_combout\,
	combout => \inst10|co~0_combout\);

-- Location: LCCOMB_X112_Y13_N22
\inst13|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|co~0_combout\ = (\inst13|b~combout\ & ((\inst12|co~0_combout\) # (\inst10|s~0_combout\ $ (\inst9|co~0_combout\)))) # (!\inst13|b~combout\ & (\inst12|co~0_combout\ & (\inst10|s~0_combout\ $ (\inst9|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s~0_combout\,
	datab => \inst13|b~combout\,
	datac => \inst12|co~0_combout\,
	datad => \inst9|co~0_combout\,
	combout => \inst13|co~0_combout\);

-- Location: LCCOMB_X111_Y13_N24
\inst14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|s~combout\ = \inst11|s~2_combout\ $ (\inst14|b~combout\ $ (\inst10|co~0_combout\ $ (\inst13|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s~2_combout\,
	datab => \inst14|b~combout\,
	datac => \inst10|co~0_combout\,
	datad => \inst13|co~0_combout\,
	combout => \inst14|s~combout\);

-- Location: LCCOMB_X111_Y13_N28
\inst11|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|b~combout\ = (\q[2]~input_o\ & \m[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[2]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst11|b~combout\);

-- Location: LCCOMB_X111_Y13_N12
\inst6|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|co~0_combout\ = (\inst6|b~combout\ & ((\inst5|co~0_combout\) # ((\m[3]~input_o\ & \q[0]~input_o\)))) # (!\inst6|b~combout\ & (\m[3]~input_o\ & (\q[0]~input_o\ & \inst5|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b~combout\,
	datab => \m[3]~input_o\,
	datac => \q[0]~input_o\,
	datad => \inst5|co~0_combout\,
	combout => \inst6|co~0_combout\);

-- Location: LCCOMB_X111_Y13_N6
\inst11|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|co~0_combout\ = (\inst10|co~0_combout\ & ((\inst11|b~combout\) # ((\inst7|b~combout\ & \inst6|co~0_combout\)))) # (!\inst10|co~0_combout\ & (\inst11|b~combout\ & (\inst7|b~combout\ & \inst6|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|co~0_combout\,
	datab => \inst11|b~combout\,
	datac => \inst7|b~combout\,
	datad => \inst6|co~0_combout\,
	combout => \inst11|co~0_combout\);

-- Location: LCCOMB_X111_Y13_N2
\inst14|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|co~0_combout\ = (\inst14|b~combout\ & ((\inst13|co~0_combout\) # (\inst11|s~2_combout\ $ (\inst10|co~0_combout\)))) # (!\inst14|b~combout\ & (\inst13|co~0_combout\ & (\inst11|s~2_combout\ $ (\inst10|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s~2_combout\,
	datab => \inst14|b~combout\,
	datac => \inst10|co~0_combout\,
	datad => \inst13|co~0_combout\,
	combout => \inst14|co~0_combout\);

-- Location: LCCOMB_X111_Y13_N0
\inst15|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|s~0_combout\ = \inst11|co~0_combout\ $ (\inst14|co~0_combout\ $ (((\q[3]~input_o\ & \m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|co~0_combout\,
	datab => \inst14|co~0_combout\,
	datac => \q[3]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst15|s~0_combout\);

-- Location: LCCOMB_X111_Y13_N26
\inst15|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|co~0_combout\ = (\inst11|co~0_combout\ & ((\inst14|co~0_combout\) # ((\q[3]~input_o\ & \m[3]~input_o\)))) # (!\inst11|co~0_combout\ & (\inst14|co~0_combout\ & (\q[3]~input_o\ & \m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|co~0_combout\,
	datab => \inst14|co~0_combout\,
	datac => \q[3]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst15|co~0_combout\);

ww_p(0) <= \p[0]~output_o\;

ww_p(1) <= \p[1]~output_o\;

ww_p(2) <= \p[2]~output_o\;

ww_p(3) <= \p[3]~output_o\;

ww_p(4) <= \p[4]~output_o\;

ww_p(5) <= \p[5]~output_o\;

ww_p(6) <= \p[6]~output_o\;

ww_p(7) <= \p[7]~output_o\;
END structure;


