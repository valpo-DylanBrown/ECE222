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

-- DATE "02/21/2019 15:33:13"

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

ENTITY 	MultiplierLCD IS
    PORT (
	LCD_RS : OUT std_logic;
	RST : IN std_logic;
	clk_48MHz : IN std_logic;
	DATA_BUS : INOUT std_logic_vector(7 DOWNTO 0);
	m : IN std_logic_vector(3 DOWNTO 0);
	q : IN std_logic_vector(3 DOWNTO 0);
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic
	);
END MultiplierLCD;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_48MHz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultiplierLCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_clk_48MHz : std_logic;
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL \clk_48MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \inst2|Selector15~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst4|co~0_combout\ : std_logic;
SIGNAL \inst1|inst6|b~combout\ : std_logic;
SIGNAL \inst1|inst9|b~combout\ : std_logic;
SIGNAL \inst1|inst10|b~combout\ : std_logic;
SIGNAL \inst1|inst10|s~0_combout\ : std_logic;
SIGNAL \inst1|inst13|co~0_combout\ : std_logic;
SIGNAL \inst1|inst14|co~0_combout\ : std_logic;
SIGNAL \inst|inst|48~combout\ : std_logic;
SIGNAL \inst|inst|43~1_combout\ : std_logic;
SIGNAL \inst|inst|45~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~5_combout\ : std_logic;
SIGNAL \inst2|Mux4~6_combout\ : std_logic;
SIGNAL \inst2|Mux4~7_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~7_combout\ : std_logic;
SIGNAL \inst2|Mux3~11_combout\ : std_logic;
SIGNAL \inst2|Mux3~12_combout\ : std_logic;
SIGNAL \inst2|Mux3~13_combout\ : std_logic;
SIGNAL \inst2|Mux3~14_combout\ : std_logic;
SIGNAL \inst2|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|state.FUNC_SET~q\ : std_logic;
SIGNAL \inst2|state.RESET2~q\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~2_combout\ : std_logic;
SIGNAL \inst2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|Selector8~1_combout\ : std_logic;
SIGNAL \inst2|Selector9~1_combout\ : std_logic;
SIGNAL \inst2|Selector9~2_combout\ : std_logic;
SIGNAL \inst2|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \inst2|state~34_combout\ : std_logic;
SIGNAL \inst2|next_command.RESET3~q\ : std_logic;
SIGNAL \inst2|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \inst2|state~36_combout\ : std_logic;
SIGNAL \inst2|next_command.RESET2~q\ : std_logic;
SIGNAL \inst2|state~37_combout\ : std_logic;
SIGNAL \inst2|Selector16~0_combout\ : std_logic;
SIGNAL \inst2|Selector20~0_combout\ : std_logic;
SIGNAL \inst2|Selector19~0_combout\ : std_logic;
SIGNAL \inst2|Selector12~0_combout\ : std_logic;
SIGNAL \inst2|Selector18~0_combout\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \clk_48MHz~input_o\ : std_logic;
SIGNAL \clk_48MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[17]~54_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[15]~50_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[15]~51\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[16]~52_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[16]~53\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[17]~56\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[18]~57_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[18]~58\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[19]~59_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[17]~55_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \inst2|CLK_400HZ~q\ : std_logic;
SIGNAL \inst2|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \inst2|state.HOLD~q\ : std_logic;
SIGNAL \inst2|LCD_RS~0_combout\ : std_logic;
SIGNAL \inst2|Selector17~0_combout\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \inst2|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \inst2|state.RESET1~q\ : std_logic;
SIGNAL \inst2|Selector25~0_combout\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \inst2|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \inst2|Selector24~0_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Selector17~1_combout\ : std_logic;
SIGNAL \inst2|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \inst2|state~29_combout\ : std_logic;
SIGNAL \inst2|state.RETURN_HOME~q\ : std_logic;
SIGNAL \inst2|Selector15~1_combout\ : std_logic;
SIGNAL \inst2|next_command.Print_String~q\ : std_logic;
SIGNAL \inst2|state~28_combout\ : std_logic;
SIGNAL \inst2|state.Print_String~q\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \inst2|Selector22~0_combout\ : std_logic;
SIGNAL \inst2|Selector16~1_combout\ : std_logic;
SIGNAL \inst2|next_command.LINE2~q\ : std_logic;
SIGNAL \inst2|state~31_combout\ : std_logic;
SIGNAL \inst2|state.LINE2~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \inst2|LCD_RW_INT~q\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \inst1|inst5|b~combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \inst1|inst5|co~0_combout\ : std_logic;
SIGNAL \inst1|inst6|co~0_combout\ : std_logic;
SIGNAL \inst1|inst2|b~combout\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \inst1|inst8|b~combout\ : std_logic;
SIGNAL \inst1|inst8|co~0_combout\ : std_logic;
SIGNAL \inst1|inst6|s~0_combout\ : std_logic;
SIGNAL \inst1|inst9|co~0_combout\ : std_logic;
SIGNAL \inst1|inst7|b~combout\ : std_logic;
SIGNAL \inst1|inst10|co~0_combout\ : std_logic;
SIGNAL \inst1|inst11|b~combout\ : std_logic;
SIGNAL \inst1|inst11|co~0_combout\ : std_logic;
SIGNAL \inst1|inst15|s~0_combout\ : std_logic;
SIGNAL \inst1|inst9|s~combout\ : std_logic;
SIGNAL \inst1|inst12|co~0_combout\ : std_logic;
SIGNAL \inst1|inst13|b~combout\ : std_logic;
SIGNAL \inst1|inst13|s~combout\ : std_logic;
SIGNAL \inst|inst|41~0_combout\ : std_logic;
SIGNAL \inst|inst|41~1_combout\ : std_logic;
SIGNAL \inst1|inst12|s~0_combout\ : std_logic;
SIGNAL \inst|inst|41~2_combout\ : std_logic;
SIGNAL \inst|inst|45~1_combout\ : std_logic;
SIGNAL \inst1|inst15|co~0_combout\ : std_logic;
SIGNAL \inst|inst|45~2_combout\ : std_logic;
SIGNAL \inst1|inst8|s~0_combout\ : std_logic;
SIGNAL \inst|inst2|82~0_combout\ : std_logic;
SIGNAL \inst|inst|82~0_combout\ : std_logic;
SIGNAL \inst|inst|81~1_combout\ : std_logic;
SIGNAL \inst|inst|81~0_combout\ : std_logic;
SIGNAL \inst|inst|81~2_combout\ : std_logic;
SIGNAL \inst2|Mux5~3_combout\ : std_logic;
SIGNAL \inst2|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \inst2|Selector26~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mux5~5_combout\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \inst1|inst4|s~0_combout\ : std_logic;
SIGNAL \inst1|inst14|b~combout\ : std_logic;
SIGNAL \inst1|inst11|s~2_combout\ : std_logic;
SIGNAL \inst1|inst14|s~combout\ : std_logic;
SIGNAL \inst|inst|43~0_combout\ : std_logic;
SIGNAL \inst|inst|43~2_combout\ : std_logic;
SIGNAL \inst2|Mux4~3_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~4_combout\ : std_logic;
SIGNAL \inst2|Mux4~11_combout\ : std_logic;
SIGNAL \inst2|Mux3~16_combout\ : std_logic;
SIGNAL \inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst|inst2|16~4_combout\ : std_logic;
SIGNAL \inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|Mux4~8_combout\ : std_logic;
SIGNAL \inst2|Mux4~9_combout\ : std_logic;
SIGNAL \inst2|Mux4~10_combout\ : std_logic;
SIGNAL \inst2|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|Mux3~6_combout\ : std_logic;
SIGNAL \inst|inst2|22~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~8_combout\ : std_logic;
SIGNAL \inst2|Mux3~9_combout\ : std_logic;
SIGNAL \inst2|Mux3~10_combout\ : std_logic;
SIGNAL \inst2|Mux3~15_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Selector21~0_combout\ : std_logic;
SIGNAL \inst2|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \inst2|state~32_combout\ : std_logic;
SIGNAL \inst2|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \inst2|Selector13~0_combout\ : std_logic;
SIGNAL \inst2|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \inst2|state~33_combout\ : std_logic;
SIGNAL \inst2|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \inst2|Selector14~0_combout\ : std_logic;
SIGNAL \inst2|next_command.MODE_SET~q\ : std_logic;
SIGNAL \inst2|state~30_combout\ : std_logic;
SIGNAL \inst2|state.MODE_SET~q\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Selector9~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~2_combout\ : std_logic;
SIGNAL \inst2|Selector4~3_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst2|22~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Mux5~6_combout\ : std_logic;
SIGNAL \inst2|Selector6~4_combout\ : std_logic;
SIGNAL \inst2|Mux6~5_combout\ : std_logic;
SIGNAL \inst2|Mux6~4_combout\ : std_logic;
SIGNAL \inst|inst2|16~combout\ : std_logic;
SIGNAL \inst|inst2|22~combout\ : std_logic;
SIGNAL \inst2|Mux6~3_combout\ : std_logic;
SIGNAL \inst2|Mux6~6_combout\ : std_logic;
SIGNAL \inst2|Selector7~6_combout\ : std_logic;
SIGNAL \inst2|state~35_combout\ : std_logic;
SIGNAL \inst2|state.RESET3~q\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~2_combout\ : std_logic;
SIGNAL \inst2|Selector6~3_combout\ : std_logic;
SIGNAL \inst2|Selector6~5_combout\ : std_logic;
SIGNAL \inst2|Selector7~3_combout\ : std_logic;
SIGNAL \inst2|Selector7~4_combout\ : std_logic;
SIGNAL \inst2|Selector7~5_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Selector8~2_combout\ : std_logic;
SIGNAL \inst2|Selector9~3_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|LCD_RS~q\ : std_logic;
SIGNAL \inst2|LCD_E~0_combout\ : std_logic;
SIGNAL \inst2|LCD_E~q\ : std_logic;
SIGNAL \inst2|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \inst2|ALT_INV_state.Print_String~q\ : std_logic;
SIGNAL \inst2|ALT_INV_LCD_RW_INT~q\ : std_logic;
SIGNAL \inst2|ALT_INV_LCD_E~q\ : std_logic;

BEGIN

LCD_RS <= ww_LCD_RS;
ww_RST <= RST;
ww_clk_48MHz <= clk_48MHz;
ww_m <= m;
ww_q <= q;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_48MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_48MHz~input_o\);

\inst2|CLK_400HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|CLK_400HZ~q\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\inst2|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \inst2|DATA_BUS_VALUE\(3);
\inst2|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \inst2|DATA_BUS_VALUE\(4);
\inst2|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \inst2|DATA_BUS_VALUE\(5);
\inst2|ALT_INV_state.Print_String~q\ <= NOT \inst2|state.Print_String~q\;
\inst2|ALT_INV_LCD_RW_INT~q\ <= NOT \inst2|LCD_RW_INT~q\;
\inst2|ALT_INV_LCD_E~q\ <= NOT \inst2|LCD_E~q\;

-- Location: FF_X74_Y30_N27
\inst2|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[7]~34_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(7));

-- Location: FF_X74_Y30_N31
\inst2|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[9]~38_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(9));

-- Location: FF_X74_Y30_N13
\inst2|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X74_Y30_N12
\inst2|CLK_COUNT_400HZ[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[0]~20_combout\ = \inst2|CLK_COUNT_400HZ\(0) $ (VCC)
-- \inst2|CLK_COUNT_400HZ[0]~21\ = CARRY(\inst2|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \inst2|CLK_COUNT_400HZ[0]~20_combout\,
	cout => \inst2|CLK_COUNT_400HZ[0]~21\);

-- Location: LCCOMB_X74_Y30_N26
\inst2|CLK_COUNT_400HZ[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[7]~34_combout\ = (\inst2|CLK_COUNT_400HZ\(7) & (!\inst2|CLK_COUNT_400HZ[6]~33\)) # (!\inst2|CLK_COUNT_400HZ\(7) & ((\inst2|CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[7]~35\ = CARRY((!\inst2|CLK_COUNT_400HZ[6]~33\) # (!\inst2|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[6]~33\,
	combout => \inst2|CLK_COUNT_400HZ[7]~34_combout\,
	cout => \inst2|CLK_COUNT_400HZ[7]~35\);

-- Location: LCCOMB_X74_Y30_N30
\inst2|CLK_COUNT_400HZ[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[9]~38_combout\ = (\inst2|CLK_COUNT_400HZ\(9) & (!\inst2|CLK_COUNT_400HZ[8]~37\)) # (!\inst2|CLK_COUNT_400HZ\(9) & ((\inst2|CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[9]~39\ = CARRY((!\inst2|CLK_COUNT_400HZ[8]~37\) # (!\inst2|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[8]~37\,
	combout => \inst2|CLK_COUNT_400HZ[9]~38_combout\,
	cout => \inst2|CLK_COUNT_400HZ[9]~39\);

-- Location: LCCOMB_X29_Y42_N24
\inst2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|state.MODE_SET~q\) # ((\inst2|state.LINE2~q\) # ((\inst2|next_command.Print_String~q\ & !\inst2|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_command.Print_String~q\,
	datab => \inst2|LCD_RS~0_combout\,
	datac => \inst2|state.MODE_SET~q\,
	datad => \inst2|state.LINE2~q\,
	combout => \inst2|Selector15~0_combout\);

-- Location: LCCOMB_X32_Y42_N22
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|state.LINE2~q\) # ((\inst2|DATA_BUS_VALUE\(6) & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LINE2~q\,
	datab => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|state.HOLD~q\,
	datad => \inst2|DATA_BUS_VALUE\(6),
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y42_N10
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|CHAR_COUNT\(1) & (((\inst2|CHAR_COUNT\(4)) # (!\inst2|CHAR_COUNT\(2))))) # (!\inst2|CHAR_COUNT\(1) & (\inst2|CHAR_COUNT\(4) $ (((\inst2|CHAR_COUNT\(0) & \inst2|CHAR_COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datab => \inst2|CHAR_COUNT\(4),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(2),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y20_N12
\inst1|inst4|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4|co~0_combout\ = (\m[1]~input_o\ & (\q[1]~input_o\ & (\q[0]~input_o\ & \m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \q[1]~input_o\,
	datac => \q[0]~input_o\,
	datad => \m[0]~input_o\,
	combout => \inst1|inst4|co~0_combout\);

-- Location: LCCOMB_X65_Y20_N6
\inst1|inst6|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|b~combout\ = (\q[1]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst1|inst6|b~combout\);

-- Location: LCCOMB_X65_Y20_N30
\inst1|inst9|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9|b~combout\ = (\q[2]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~input_o\,
	datad => \m[1]~input_o\,
	combout => \inst1|inst9|b~combout\);

-- Location: LCCOMB_X66_Y20_N6
\inst1|inst10|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst10|b~combout\ = (\m[2]~input_o\ & \q[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[2]~input_o\,
	datac => \q[2]~input_o\,
	combout => \inst1|inst10|b~combout\);

-- Location: LCCOMB_X66_Y20_N30
\inst1|inst10|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst10|s~0_combout\ = \inst1|inst6|co~0_combout\ $ (\inst1|inst7|b~combout\ $ (((\q[2]~input_o\ & \m[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|co~0_combout\,
	datab => \q[2]~input_o\,
	datac => \m[2]~input_o\,
	datad => \inst1|inst7|b~combout\,
	combout => \inst1|inst10|s~0_combout\);

-- Location: LCCOMB_X66_Y20_N10
\inst1|inst13|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst13|co~0_combout\ = (\inst1|inst12|co~0_combout\ & ((\inst1|inst13|b~combout\) # (\inst1|inst10|s~0_combout\ $ (\inst1|inst9|co~0_combout\)))) # (!\inst1|inst12|co~0_combout\ & (\inst1|inst13|b~combout\ & (\inst1|inst10|s~0_combout\ $ 
-- (\inst1|inst9|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10|s~0_combout\,
	datab => \inst1|inst12|co~0_combout\,
	datac => \inst1|inst9|co~0_combout\,
	datad => \inst1|inst13|b~combout\,
	combout => \inst1|inst13|co~0_combout\);

-- Location: LCCOMB_X66_Y20_N22
\inst1|inst14|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst14|co~0_combout\ = (\inst1|inst13|co~0_combout\ & ((\inst1|inst14|b~combout\) # (\inst1|inst10|co~0_combout\ $ (\inst1|inst11|s~2_combout\)))) # (!\inst1|inst13|co~0_combout\ & (\inst1|inst14|b~combout\ & (\inst1|inst10|co~0_combout\ $ 
-- (\inst1|inst11|s~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst13|co~0_combout\,
	datab => \inst1|inst10|co~0_combout\,
	datac => \inst1|inst14|b~combout\,
	datad => \inst1|inst11|s~2_combout\,
	combout => \inst1|inst14|co~0_combout\);

-- Location: LCCOMB_X42_Y42_N16
\inst|inst|48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|48~combout\ = ((!\inst1|inst15|s~0_combout\ & !\inst1|inst14|s~combout\)) # (!\inst1|inst15|co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst15|co~0_combout\,
	datab => \inst1|inst15|s~0_combout\,
	datac => \inst1|inst14|s~combout\,
	combout => \inst|inst|48~combout\);

-- Location: LCCOMB_X42_Y42_N6
\inst|inst|43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|43~1_combout\ = (\inst1|inst15|co~0_combout\ & (!\inst1|inst14|s~combout\ & \inst1|inst12|s~0_combout\)) # (!\inst1|inst15|co~0_combout\ & (\inst1|inst14|s~combout\ & !\inst1|inst12|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst15|co~0_combout\,
	datac => \inst1|inst14|s~combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|43~1_combout\);

-- Location: LCCOMB_X42_Y42_N12
\inst|inst|45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|45~0_combout\ = \inst1|inst14|s~combout\ $ (((\inst1|inst13|s~combout\ & !\inst1|inst15|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst1|inst13|s~combout\,
	datac => \inst1|inst15|s~0_combout\,
	combout => \inst|inst|45~0_combout\);

-- Location: LCCOMB_X36_Y42_N26
\inst2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~5_combout\ = (\inst2|CHAR_COUNT\(0) & ((\inst2|CHAR_COUNT\(1)))) # (!\inst2|CHAR_COUNT\(0) & (\inst2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(2),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(0),
	combout => \inst2|Mux4~5_combout\);

-- Location: LCCOMB_X36_Y42_N24
\inst2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~6_combout\ = (!\inst2|CHAR_COUNT\(3) & ((\inst2|CHAR_COUNT\(1) & ((!\inst2|CHAR_COUNT\(4)) # (!\inst2|Mux4~5_combout\))) # (!\inst2|CHAR_COUNT\(1) & ((\inst2|Mux4~5_combout\) # (\inst2|CHAR_COUNT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(1),
	datab => \inst2|CHAR_COUNT\(3),
	datac => \inst2|Mux4~5_combout\,
	datad => \inst2|CHAR_COUNT\(4),
	combout => \inst2|Mux4~6_combout\);

-- Location: LCCOMB_X38_Y42_N16
\inst2|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~7_combout\ = (\inst|inst|41~2_combout\ & (!\inst|inst|43~2_combout\ & ((\inst1|inst8|s~0_combout\)))) # (!\inst|inst|41~2_combout\ & (\inst|inst|45~2_combout\ & (\inst|inst|43~2_combout\ $ (!\inst1|inst8|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~2_combout\,
	datab => \inst|inst|41~2_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst2|Mux4~7_combout\);

-- Location: LCCOMB_X34_Y42_N20
\inst2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst1|inst4|s~0_combout\ & (!\inst|inst|41~2_combout\ & ((\inst1|inst8|s~0_combout\) # (!\inst|inst|43~2_combout\)))) # (!\inst1|inst4|s~0_combout\ & (!\inst|inst|43~2_combout\ & (\inst|inst|41~2_combout\ & 
-- \inst1|inst8|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~2_combout\,
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst|inst|41~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X34_Y42_N2
\inst2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~7_combout\ = (!\inst1|inst4|s~0_combout\ & (\inst|inst|43~2_combout\ $ (!\inst1|inst8|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst|inst|43~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst2|Mux3~7_combout\);

-- Location: LCCOMB_X34_Y42_N14
\inst2|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~11_combout\ = (\inst1|inst4|s~0_combout\ & (\inst|inst|45~2_combout\ $ (!\inst|inst|41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|45~2_combout\,
	datac => \inst|inst|41~2_combout\,
	datad => \inst1|inst4|s~0_combout\,
	combout => \inst2|Mux3~11_combout\);

-- Location: LCCOMB_X35_Y42_N4
\inst2|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~12_combout\ = (\inst2|Mux3~11_combout\ & (\inst|inst2|22~0_combout\ & (\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~11_combout\,
	datab => \inst|inst2|22~0_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~12_combout\);

-- Location: LCCOMB_X35_Y42_N8
\inst2|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~13_combout\ = (\inst2|CHAR_COUNT\(4) & (!\inst2|CHAR_COUNT\(2) & ((!\inst2|CHAR_COUNT\(1)) # (!\inst2|CHAR_COUNT\(0))))) # (!\inst2|CHAR_COUNT\(4) & (\inst2|CHAR_COUNT\(1) & (\inst2|CHAR_COUNT\(2) $ (!\inst2|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(4),
	datab => \inst2|CHAR_COUNT\(2),
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|CHAR_COUNT\(1),
	combout => \inst2|Mux3~13_combout\);

-- Location: LCCOMB_X35_Y42_N30
\inst2|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~14_combout\ = (\inst2|Mux3~12_combout\) # ((!\inst2|CHAR_COUNT\(3) & \inst2|Mux3~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(3),
	datac => \inst2|Mux3~12_combout\,
	datad => \inst2|Mux3~13_combout\,
	combout => \inst2|Mux3~14_combout\);

-- Location: FF_X30_Y42_N27
\inst2|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~34_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X30_Y42_N16
\inst2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (!\inst2|state.DISPLAY_CLEAR~q\ & (!\inst2|state.DISPLAY_OFF~q\ & !\inst2|state.DISPLAY_ON~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DISPLAY_CLEAR~q\,
	datac => \inst2|state.DISPLAY_OFF~q\,
	datad => \inst2|state.DISPLAY_ON~q\,
	combout => \inst2|Selector4~1_combout\);

-- Location: FF_X30_Y42_N1
\inst2|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~36_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.FUNC_SET~q\);

-- Location: FF_X30_Y42_N31
\inst2|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~37_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RESET2~q\);

-- Location: LCCOMB_X30_Y42_N8
\inst2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|state.DISPLAY_OFF~q\) # ((\inst2|state.FUNC_SET~q\) # ((\inst2|state.RESET2~q\) # (\inst2|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DISPLAY_OFF~q\,
	datab => \inst2|state.FUNC_SET~q\,
	datac => \inst2|state.RESET2~q\,
	datad => \inst2|state.DISPLAY_ON~q\,
	combout => \inst2|Selector6~1_combout\);

-- Location: LCCOMB_X38_Y42_N14
\inst2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = (\inst|inst|43~2_combout\ & (!\inst1|inst8|s~0_combout\ & ((\inst|inst|45~2_combout\) # (!\inst|inst|41~2_combout\)))) # (!\inst|inst|43~2_combout\ & (\inst|inst|41~2_combout\ & (!\inst|inst|45~2_combout\ & 
-- \inst1|inst8|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~2_combout\,
	datab => \inst|inst|41~2_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y42_N24
\inst2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~2_combout\ = (\inst2|Mux6~1_combout\) # ((\inst|inst2|16~4_combout\) # ((\inst1|inst4|s~0_combout\ & \inst|inst2|22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~1_combout\,
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst|inst2|22~1_combout\,
	datad => \inst|inst2|16~4_combout\,
	combout => \inst2|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y42_N14
\inst2|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~2_combout\ = (\inst2|state.DISPLAY_ON~q\) # ((\inst2|state.MODE_SET~q\) # ((\inst2|DATA_BUS_VALUE\(2) & !\inst2|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DISPLAY_ON~q\,
	datab => \inst2|state.MODE_SET~q\,
	datac => \inst2|DATA_BUS_VALUE\(2),
	datad => \inst2|LCD_RS~0_combout\,
	combout => \inst2|Selector7~2_combout\);

-- Location: LCCOMB_X32_Y42_N8
\inst2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~1_combout\ = (\inst2|state.MODE_SET~q\) # ((\inst2|DATA_BUS_VALUE\(1) & ((\inst2|state.HOLD~q\) # (\inst2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.HOLD~q\,
	datab => \inst2|state.MODE_SET~q\,
	datac => \inst2|state.DROP_LCD_E~q\,
	datad => \inst2|DATA_BUS_VALUE\(1),
	combout => \inst2|Selector8~1_combout\);

-- Location: LCCOMB_X31_Y42_N20
\inst2|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~1_combout\ = (\inst2|state.DISPLAY_CLEAR~q\) # ((\inst2|DATA_BUS_VALUE\(0) & ((\inst2|state.HOLD~q\) # (\inst2|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_BUS_VALUE\(0),
	datab => \inst2|state.HOLD~q\,
	datac => \inst2|state.DISPLAY_CLEAR~q\,
	datad => \inst2|state.DROP_LCD_E~q\,
	combout => \inst2|Selector9~1_combout\);

-- Location: LCCOMB_X32_Y42_N14
\inst2|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~2_combout\ = (\inst2|Selector9~1_combout\) # ((\inst2|state.Print_String~q\ & (\inst2|Mux6~6_combout\ & !\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.Print_String~q\,
	datab => \inst2|Selector9~1_combout\,
	datac => \inst2|Mux6~6_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Selector9~2_combout\);

-- Location: FF_X30_Y42_N13
\inst2|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector20~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X30_Y42_N26
\inst2|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~34_combout\ = (\inst2|next_command.DISPLAY_OFF~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_command.DISPLAY_OFF~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~34_combout\);

-- Location: FF_X30_Y42_N11
\inst2|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector19~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.RESET3~q\);

-- Location: FF_X30_Y42_N5
\inst2|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector12~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X30_Y42_N0
\inst2|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~36_combout\ = (\inst2|next_command.FUNC_SET~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.FUNC_SET~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~36_combout\);

-- Location: FF_X30_Y42_N15
\inst2|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector18~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.RESET2~q\);

-- Location: LCCOMB_X30_Y42_N30
\inst2|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~37_combout\ = (!\inst2|next_command.RESET2~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.RESET2~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~37_combout\);

-- Location: LCCOMB_X29_Y42_N6
\inst2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector16~0_combout\ = (\inst2|next_command.LINE2~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|next_command.LINE2~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector16~0_combout\);

-- Location: LCCOMB_X30_Y42_N12
\inst2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector20~0_combout\ = (\inst2|state.FUNC_SET~q\) # ((\inst2|next_command.DISPLAY_OFF~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.FUNC_SET~q\,
	datac => \inst2|next_command.DISPLAY_OFF~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector20~0_combout\);

-- Location: LCCOMB_X30_Y42_N10
\inst2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector19~0_combout\ = (\inst2|state.RESET2~q\) # ((\inst2|next_command.RESET3~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET2~q\,
	datab => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|next_command.RESET3~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector19~0_combout\);

-- Location: LCCOMB_X30_Y42_N4
\inst2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\inst2|state.RESET3~q\) # ((\inst2|next_command.FUNC_SET~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.RESET3~q\,
	datac => \inst2|next_command.FUNC_SET~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector12~0_combout\);

-- Location: LCCOMB_X30_Y42_N14
\inst2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector18~0_combout\ = (\inst2|state.RESET1~q\ & ((\inst2|next_command.RESET2~q\) # ((!\inst2|state.DROP_LCD_E~q\ & !\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET1~q\,
	datab => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|next_command.RESET2~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector18~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk_48MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_48MHz,
	o => \clk_48MHz~input_o\);

-- Location: CLKCTRL_G4
\clk_48MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_48MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_48MHz~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y47_N2
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_BUS_VALUE\(7),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_BUS_VALUE\(6),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_DATA_BUS_VALUE\(5),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_DATA_BUS_VALUE\(4),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_DATA_BUS_VALUE\(3),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_BUS_VALUE\(2),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_BUS_VALUE\(1),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_BUS_VALUE\(0),
	oe => \inst2|LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LCD_RW_INT~q\,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: LCCOMB_X74_Y30_N14
\inst2|CLK_COUNT_400HZ[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[1]~22_combout\ = (\inst2|CLK_COUNT_400HZ\(1) & (!\inst2|CLK_COUNT_400HZ[0]~21\)) # (!\inst2|CLK_COUNT_400HZ\(1) & ((\inst2|CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[1]~23\ = CARRY((!\inst2|CLK_COUNT_400HZ[0]~21\) # (!\inst2|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[0]~21\,
	combout => \inst2|CLK_COUNT_400HZ[1]~22_combout\,
	cout => \inst2|CLK_COUNT_400HZ[1]~23\);

-- Location: IOIBUF_X115_Y17_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X74_Y30_N6
\inst2|CLK_COUNT_400HZ[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[17]~54_combout\ = (!\inst2|LessThan0~4_combout\) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|CLK_COUNT_400HZ[17]~54_combout\);

-- Location: FF_X74_Y30_N15
\inst2|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X74_Y30_N16
\inst2|CLK_COUNT_400HZ[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[2]~24_combout\ = (\inst2|CLK_COUNT_400HZ\(2) & (\inst2|CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(2) & (!\inst2|CLK_COUNT_400HZ[1]~23\ & VCC))
-- \inst2|CLK_COUNT_400HZ[2]~25\ = CARRY((\inst2|CLK_COUNT_400HZ\(2) & !\inst2|CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[1]~23\,
	combout => \inst2|CLK_COUNT_400HZ[2]~24_combout\,
	cout => \inst2|CLK_COUNT_400HZ[2]~25\);

-- Location: FF_X74_Y30_N17
\inst2|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X74_Y30_N18
\inst2|CLK_COUNT_400HZ[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[3]~26_combout\ = (\inst2|CLK_COUNT_400HZ\(3) & (!\inst2|CLK_COUNT_400HZ[2]~25\)) # (!\inst2|CLK_COUNT_400HZ\(3) & ((\inst2|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[3]~27\ = CARRY((!\inst2|CLK_COUNT_400HZ[2]~25\) # (!\inst2|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[2]~25\,
	combout => \inst2|CLK_COUNT_400HZ[3]~26_combout\,
	cout => \inst2|CLK_COUNT_400HZ[3]~27\);

-- Location: FF_X74_Y30_N19
\inst2|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[3]~26_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X74_Y30_N20
\inst2|CLK_COUNT_400HZ[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[4]~28_combout\ = (\inst2|CLK_COUNT_400HZ\(4) & (\inst2|CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(4) & (!\inst2|CLK_COUNT_400HZ[3]~27\ & VCC))
-- \inst2|CLK_COUNT_400HZ[4]~29\ = CARRY((\inst2|CLK_COUNT_400HZ\(4) & !\inst2|CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[3]~27\,
	combout => \inst2|CLK_COUNT_400HZ[4]~28_combout\,
	cout => \inst2|CLK_COUNT_400HZ[4]~29\);

-- Location: FF_X74_Y30_N21
\inst2|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[4]~28_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X74_Y30_N22
\inst2|CLK_COUNT_400HZ[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[5]~30_combout\ = (\inst2|CLK_COUNT_400HZ\(5) & (!\inst2|CLK_COUNT_400HZ[4]~29\)) # (!\inst2|CLK_COUNT_400HZ\(5) & ((\inst2|CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[5]~31\ = CARRY((!\inst2|CLK_COUNT_400HZ[4]~29\) # (!\inst2|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[4]~29\,
	combout => \inst2|CLK_COUNT_400HZ[5]~30_combout\,
	cout => \inst2|CLK_COUNT_400HZ[5]~31\);

-- Location: LCCOMB_X74_Y30_N24
\inst2|CLK_COUNT_400HZ[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[6]~32_combout\ = (\inst2|CLK_COUNT_400HZ\(6) & (\inst2|CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(6) & (!\inst2|CLK_COUNT_400HZ[5]~31\ & VCC))
-- \inst2|CLK_COUNT_400HZ[6]~33\ = CARRY((\inst2|CLK_COUNT_400HZ\(6) & !\inst2|CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[5]~31\,
	combout => \inst2|CLK_COUNT_400HZ[6]~32_combout\,
	cout => \inst2|CLK_COUNT_400HZ[6]~33\);

-- Location: FF_X74_Y30_N25
\inst2|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[6]~32_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X74_Y30_N28
\inst2|CLK_COUNT_400HZ[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[8]~36_combout\ = (\inst2|CLK_COUNT_400HZ\(8) & (\inst2|CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(8) & (!\inst2|CLK_COUNT_400HZ[7]~35\ & VCC))
-- \inst2|CLK_COUNT_400HZ[8]~37\ = CARRY((\inst2|CLK_COUNT_400HZ\(8) & !\inst2|CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[7]~35\,
	combout => \inst2|CLK_COUNT_400HZ[8]~36_combout\,
	cout => \inst2|CLK_COUNT_400HZ[8]~37\);

-- Location: FF_X74_Y30_N29
\inst2|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[8]~36_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X74_Y29_N0
\inst2|CLK_COUNT_400HZ[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[10]~40_combout\ = (\inst2|CLK_COUNT_400HZ\(10) & (\inst2|CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(10) & (!\inst2|CLK_COUNT_400HZ[9]~39\ & VCC))
-- \inst2|CLK_COUNT_400HZ[10]~41\ = CARRY((\inst2|CLK_COUNT_400HZ\(10) & !\inst2|CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[9]~39\,
	combout => \inst2|CLK_COUNT_400HZ[10]~40_combout\,
	cout => \inst2|CLK_COUNT_400HZ[10]~41\);

-- Location: LCCOMB_X74_Y30_N8
\inst2|CLK_COUNT_400HZ[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[10]~feeder_combout\ = \inst2|CLK_COUNT_400HZ[10]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|CLK_COUNT_400HZ[10]~40_combout\,
	combout => \inst2|CLK_COUNT_400HZ[10]~feeder_combout\);

-- Location: FF_X74_Y30_N9
\inst2|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[10]~feeder_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(10));

-- Location: FF_X74_Y30_N23
\inst2|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[5]~30_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X74_Y30_N4
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|CLK_COUNT_400HZ\(7) & (!\inst2|CLK_COUNT_400HZ\(8) & ((!\inst2|CLK_COUNT_400HZ\(6)) # (!\inst2|CLK_COUNT_400HZ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(7),
	datab => \inst2|CLK_COUNT_400HZ\(8),
	datac => \inst2|CLK_COUNT_400HZ\(5),
	datad => \inst2|CLK_COUNT_400HZ\(6),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X74_Y29_N2
\inst2|CLK_COUNT_400HZ[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[11]~42_combout\ = (\inst2|CLK_COUNT_400HZ\(11) & (!\inst2|CLK_COUNT_400HZ[10]~41\)) # (!\inst2|CLK_COUNT_400HZ\(11) & ((\inst2|CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[11]~43\ = CARRY((!\inst2|CLK_COUNT_400HZ[10]~41\) # (!\inst2|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[10]~41\,
	combout => \inst2|CLK_COUNT_400HZ[11]~42_combout\,
	cout => \inst2|CLK_COUNT_400HZ[11]~43\);

-- Location: FF_X74_Y29_N3
\inst2|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[11]~42_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X74_Y30_N2
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = ((!\inst2|CLK_COUNT_400HZ\(10) & ((\inst2|LessThan0~2_combout\) # (!\inst2|CLK_COUNT_400HZ\(9))))) # (!\inst2|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(9),
	datab => \inst2|CLK_COUNT_400HZ\(10),
	datac => \inst2|LessThan0~2_combout\,
	datad => \inst2|CLK_COUNT_400HZ\(11),
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y29_N4
\inst2|CLK_COUNT_400HZ[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[12]~44_combout\ = (\inst2|CLK_COUNT_400HZ\(12) & (\inst2|CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(12) & (!\inst2|CLK_COUNT_400HZ[11]~43\ & VCC))
-- \inst2|CLK_COUNT_400HZ[12]~45\ = CARRY((\inst2|CLK_COUNT_400HZ\(12) & !\inst2|CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[11]~43\,
	combout => \inst2|CLK_COUNT_400HZ[12]~44_combout\,
	cout => \inst2|CLK_COUNT_400HZ[12]~45\);

-- Location: LCCOMB_X74_Y30_N10
\inst2|CLK_COUNT_400HZ[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[12]~feeder_combout\ = \inst2|CLK_COUNT_400HZ[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|CLK_COUNT_400HZ[12]~44_combout\,
	combout => \inst2|CLK_COUNT_400HZ[12]~feeder_combout\);

-- Location: FF_X74_Y30_N11
\inst2|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[12]~feeder_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X74_Y29_N6
\inst2|CLK_COUNT_400HZ[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[13]~46_combout\ = (\inst2|CLK_COUNT_400HZ\(13) & (!\inst2|CLK_COUNT_400HZ[12]~45\)) # (!\inst2|CLK_COUNT_400HZ\(13) & ((\inst2|CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[13]~47\ = CARRY((!\inst2|CLK_COUNT_400HZ[12]~45\) # (!\inst2|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[12]~45\,
	combout => \inst2|CLK_COUNT_400HZ[13]~46_combout\,
	cout => \inst2|CLK_COUNT_400HZ[13]~47\);

-- Location: FF_X74_Y29_N7
\inst2|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[13]~46_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X74_Y29_N8
\inst2|CLK_COUNT_400HZ[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[14]~48_combout\ = (\inst2|CLK_COUNT_400HZ\(14) & (\inst2|CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(14) & (!\inst2|CLK_COUNT_400HZ[13]~47\ & VCC))
-- \inst2|CLK_COUNT_400HZ[14]~49\ = CARRY((\inst2|CLK_COUNT_400HZ\(14) & !\inst2|CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[13]~47\,
	combout => \inst2|CLK_COUNT_400HZ[14]~48_combout\,
	cout => \inst2|CLK_COUNT_400HZ[14]~49\);

-- Location: LCCOMB_X74_Y29_N10
\inst2|CLK_COUNT_400HZ[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[15]~50_combout\ = (\inst2|CLK_COUNT_400HZ\(15) & (!\inst2|CLK_COUNT_400HZ[14]~49\)) # (!\inst2|CLK_COUNT_400HZ\(15) & ((\inst2|CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[15]~51\ = CARRY((!\inst2|CLK_COUNT_400HZ[14]~49\) # (!\inst2|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[14]~49\,
	combout => \inst2|CLK_COUNT_400HZ[15]~50_combout\,
	cout => \inst2|CLK_COUNT_400HZ[15]~51\);

-- Location: FF_X74_Y29_N11
\inst2|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[15]~50_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X74_Y29_N12
\inst2|CLK_COUNT_400HZ[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[16]~52_combout\ = (\inst2|CLK_COUNT_400HZ\(16) & (\inst2|CLK_COUNT_400HZ[15]~51\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(16) & (!\inst2|CLK_COUNT_400HZ[15]~51\ & VCC))
-- \inst2|CLK_COUNT_400HZ[16]~53\ = CARRY((\inst2|CLK_COUNT_400HZ\(16) & !\inst2|CLK_COUNT_400HZ[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[15]~51\,
	combout => \inst2|CLK_COUNT_400HZ[16]~52_combout\,
	cout => \inst2|CLK_COUNT_400HZ[16]~53\);

-- Location: FF_X74_Y29_N13
\inst2|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[16]~52_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X74_Y29_N14
\inst2|CLK_COUNT_400HZ[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[17]~55_combout\ = (\inst2|CLK_COUNT_400HZ\(17) & (!\inst2|CLK_COUNT_400HZ[16]~53\)) # (!\inst2|CLK_COUNT_400HZ\(17) & ((\inst2|CLK_COUNT_400HZ[16]~53\) # (GND)))
-- \inst2|CLK_COUNT_400HZ[17]~56\ = CARRY((!\inst2|CLK_COUNT_400HZ[16]~53\) # (!\inst2|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[16]~53\,
	combout => \inst2|CLK_COUNT_400HZ[17]~55_combout\,
	cout => \inst2|CLK_COUNT_400HZ[17]~56\);

-- Location: LCCOMB_X74_Y29_N16
\inst2|CLK_COUNT_400HZ[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[18]~57_combout\ = (\inst2|CLK_COUNT_400HZ\(18) & (\inst2|CLK_COUNT_400HZ[17]~56\ $ (GND))) # (!\inst2|CLK_COUNT_400HZ\(18) & (!\inst2|CLK_COUNT_400HZ[17]~56\ & VCC))
-- \inst2|CLK_COUNT_400HZ[18]~58\ = CARRY((\inst2|CLK_COUNT_400HZ\(18) & !\inst2|CLK_COUNT_400HZ[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \inst2|CLK_COUNT_400HZ[17]~56\,
	combout => \inst2|CLK_COUNT_400HZ[18]~57_combout\,
	cout => \inst2|CLK_COUNT_400HZ[18]~58\);

-- Location: FF_X74_Y29_N17
\inst2|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X74_Y29_N18
\inst2|CLK_COUNT_400HZ[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_COUNT_400HZ[19]~59_combout\ = \inst2|CLK_COUNT_400HZ[18]~58\ $ (\inst2|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|CLK_COUNT_400HZ\(19),
	cin => \inst2|CLK_COUNT_400HZ[18]~58\,
	combout => \inst2|CLK_COUNT_400HZ[19]~59_combout\);

-- Location: FF_X74_Y29_N19
\inst2|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(19));

-- Location: FF_X74_Y29_N15
\inst2|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X74_Y29_N24
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (!\inst2|CLK_COUNT_400HZ\(16) & (!\inst2|CLK_COUNT_400HZ\(19) & (!\inst2|CLK_COUNT_400HZ\(17) & !\inst2|CLK_COUNT_400HZ\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(16),
	datab => \inst2|CLK_COUNT_400HZ\(19),
	datac => \inst2|CLK_COUNT_400HZ\(17),
	datad => \inst2|CLK_COUNT_400HZ\(18),
	combout => \inst2|LessThan0~0_combout\);

-- Location: FF_X74_Y29_N9
\inst2|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	d => \inst2|CLK_COUNT_400HZ[14]~48_combout\,
	sclr => \inst2|CLK_COUNT_400HZ[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X74_Y29_N26
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = ((!\inst2|CLK_COUNT_400HZ\(13)) # (!\inst2|CLK_COUNT_400HZ\(14))) # (!\inst2|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(15),
	datac => \inst2|CLK_COUNT_400HZ\(14),
	datad => \inst2|CLK_COUNT_400HZ\(13),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y30_N0
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|LessThan0~0_combout\ & ((\inst2|LessThan0~1_combout\) # ((!\inst2|CLK_COUNT_400HZ\(12) & \inst2|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CLK_COUNT_400HZ\(12),
	datab => \inst2|LessThan0~3_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X73_Y30_N16
\inst2|CLK_400HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CLK_400HZ~0_combout\ = \inst2|LessThan0~4_combout\ $ (!\inst2|CLK_400HZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~4_combout\,
	datad => \inst2|CLK_400HZ~q\,
	combout => \inst2|CLK_400HZ~0_combout\);

-- Location: FF_X73_Y30_N29
\inst2|CLK_400HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_48MHz~inputclkctrl_outclk\,
	asdata => \inst2|CLK_400HZ~0_combout\,
	sclr => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_400HZ~q\);

-- Location: CLKCTRL_G18
\inst2|CLK_400HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|CLK_400HZ~clkctrl_outclk\);

-- Location: FF_X29_Y42_N1
\inst2|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|LCD_RS~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.DROP_LCD_E~q\);

-- Location: FF_X30_Y42_N21
\inst2|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	asdata => \inst2|state.DROP_LCD_E~q\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.HOLD~q\);

-- Location: LCCOMB_X29_Y42_N0
\inst2|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LCD_RS~0_combout\ = (!\inst2|state.DROP_LCD_E~q\ & !\inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.DROP_LCD_E~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|LCD_RS~0_combout\);

-- Location: LCCOMB_X29_Y42_N12
\inst2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector17~0_combout\ = (\inst2|next_command.RETURN_HOME~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.HOLD~q\,
	datac => \inst2|next_command.RETURN_HOME~q\,
	combout => \inst2|Selector17~0_combout\);

-- Location: LCCOMB_X35_Y42_N14
\inst2|CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CHAR_COUNT[0]~5_combout\ = \inst2|CHAR_COUNT\(0) $ (VCC)
-- \inst2|CHAR_COUNT[0]~6\ = CARRY(\inst2|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datad => VCC,
	combout => \inst2|CHAR_COUNT[0]~5_combout\,
	cout => \inst2|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X35_Y42_N16
\inst2|CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CHAR_COUNT[1]~7_combout\ = (\inst2|CHAR_COUNT\(1) & (!\inst2|CHAR_COUNT[0]~6\)) # (!\inst2|CHAR_COUNT\(1) & ((\inst2|CHAR_COUNT[0]~6\) # (GND)))
-- \inst2|CHAR_COUNT[1]~8\ = CARRY((!\inst2|CHAR_COUNT[0]~6\) # (!\inst2|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(1),
	datad => VCC,
	cin => \inst2|CHAR_COUNT[0]~6\,
	combout => \inst2|CHAR_COUNT[1]~7_combout\,
	cout => \inst2|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X32_Y42_N10
\inst2|state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state.RESET1~feeder_combout\);

-- Location: FF_X32_Y42_N11
\inst2|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state.RESET1~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RESET1~q\);

-- Location: LCCOMB_X36_Y42_N20
\inst2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector25~0_combout\ = (\inst2|CHAR_COUNT\(1) & \inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|state.RESET1~q\,
	combout => \inst2|Selector25~0_combout\);

-- Location: FF_X35_Y42_N17
\inst2|CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|CHAR_COUNT[1]~7_combout\,
	asdata => \inst2|Selector25~0_combout\,
	sload => \inst2|ALT_INV_state.Print_String~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CHAR_COUNT\(1));

-- Location: LCCOMB_X35_Y42_N18
\inst2|CHAR_COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CHAR_COUNT[2]~9_combout\ = (\inst2|CHAR_COUNT\(2) & (\inst2|CHAR_COUNT[1]~8\ $ (GND))) # (!\inst2|CHAR_COUNT\(2) & (!\inst2|CHAR_COUNT[1]~8\ & VCC))
-- \inst2|CHAR_COUNT[2]~10\ = CARRY((\inst2|CHAR_COUNT\(2) & !\inst2|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(2),
	datad => VCC,
	cin => \inst2|CHAR_COUNT[1]~8\,
	combout => \inst2|CHAR_COUNT[2]~9_combout\,
	cout => \inst2|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X35_Y42_N20
\inst2|CHAR_COUNT[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CHAR_COUNT[3]~11_combout\ = (\inst2|CHAR_COUNT\(3) & (!\inst2|CHAR_COUNT[2]~10\)) # (!\inst2|CHAR_COUNT\(3) & ((\inst2|CHAR_COUNT[2]~10\) # (GND)))
-- \inst2|CHAR_COUNT[3]~12\ = CARRY((!\inst2|CHAR_COUNT[2]~10\) # (!\inst2|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(3),
	datad => VCC,
	cin => \inst2|CHAR_COUNT[2]~10\,
	combout => \inst2|CHAR_COUNT[3]~11_combout\,
	cout => \inst2|CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X32_Y42_N12
\inst2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector23~0_combout\ = (\inst2|CHAR_COUNT\(3) & \inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CHAR_COUNT\(3),
	datad => \inst2|state.RESET1~q\,
	combout => \inst2|Selector23~0_combout\);

-- Location: FF_X35_Y42_N21
\inst2|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|CHAR_COUNT[3]~11_combout\,
	asdata => \inst2|Selector23~0_combout\,
	sload => \inst2|ALT_INV_state.Print_String~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CHAR_COUNT\(3));

-- Location: LCCOMB_X36_Y42_N14
\inst2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector24~0_combout\ = (\inst2|CHAR_COUNT\(2) & \inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(2),
	datad => \inst2|state.RESET1~q\,
	combout => \inst2|Selector24~0_combout\);

-- Location: FF_X35_Y42_N19
\inst2|CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|CHAR_COUNT[2]~9_combout\,
	asdata => \inst2|Selector24~0_combout\,
	sload => \inst2|ALT_INV_state.Print_String~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CHAR_COUNT\(2));

-- Location: LCCOMB_X36_Y42_N18
\inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (\inst2|CHAR_COUNT\(0) & (\inst2|CHAR_COUNT\(3) & (\inst2|CHAR_COUNT\(1) & \inst2|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datab => \inst2|CHAR_COUNT\(3),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(2),
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y42_N8
\inst2|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector17~1_combout\ = (\inst2|Selector17~0_combout\) # ((\inst2|CHAR_COUNT\(4) & (\inst2|state.Print_String~q\ & \inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(4),
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|Selector17~0_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Selector17~1_combout\);

-- Location: FF_X29_Y42_N9
\inst2|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector17~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X29_Y42_N22
\inst2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~29_combout\ = (\inst2|next_command.RETURN_HOME~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.RETURN_HOME~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~29_combout\);

-- Location: FF_X29_Y42_N23
\inst2|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~29_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RETURN_HOME~q\);

-- Location: LCCOMB_X29_Y42_N30
\inst2|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector15~1_combout\ = (\inst2|Selector15~0_combout\) # ((\inst2|state.RETURN_HOME~q\) # ((\inst2|state.Print_String~q\ & !\inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector15~0_combout\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|state.RETURN_HOME~q\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Selector15~1_combout\);

-- Location: FF_X29_Y42_N31
\inst2|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector15~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.Print_String~q\);

-- Location: LCCOMB_X29_Y42_N2
\inst2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~28_combout\ = (\inst2|next_command.Print_String~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.Print_String~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~28_combout\);

-- Location: FF_X29_Y42_N3
\inst2|state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.Print_String~q\);

-- Location: LCCOMB_X35_Y42_N22
\inst2|CHAR_COUNT[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|CHAR_COUNT[4]~13_combout\ = \inst2|CHAR_COUNT[3]~12\ $ (!\inst2|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|CHAR_COUNT\(4),
	cin => \inst2|CHAR_COUNT[3]~12\,
	combout => \inst2|CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X31_Y42_N6
\inst2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector22~0_combout\ = (\inst2|CHAR_COUNT\(4) & \inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CHAR_COUNT\(4),
	datad => \inst2|state.RESET1~q\,
	combout => \inst2|Selector22~0_combout\);

-- Location: FF_X35_Y42_N23
\inst2|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|CHAR_COUNT[4]~13_combout\,
	asdata => \inst2|Selector22~0_combout\,
	sload => \inst2|ALT_INV_state.Print_String~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CHAR_COUNT\(4));

-- Location: LCCOMB_X29_Y42_N26
\inst2|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector16~1_combout\ = (\inst2|Selector16~0_combout\) # ((\inst2|state.Print_String~q\ & (!\inst2|CHAR_COUNT\(4) & \inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector16~0_combout\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|CHAR_COUNT\(4),
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Selector16~1_combout\);

-- Location: FF_X29_Y42_N27
\inst2|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector16~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.LINE2~q\);

-- Location: LCCOMB_X29_Y42_N10
\inst2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~31_combout\ = (\inst2|next_command.LINE2~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.LINE2~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~31_combout\);

-- Location: FF_X29_Y42_N11
\inst2|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~31_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.LINE2~q\);

-- Location: LCCOMB_X29_Y42_N28
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|state.RETURN_HOME~q\) # ((\inst2|state.LINE2~q\) # ((!\inst2|LCD_RS~0_combout\ & \inst2|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RETURN_HOME~q\,
	datab => \inst2|LCD_RS~0_combout\,
	datac => \inst2|DATA_BUS_VALUE\(7),
	datad => \inst2|state.LINE2~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X29_Y42_N29
\inst2|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector2~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X29_Y42_N4
\inst2|LCD_RW_INT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LCD_RW_INT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|LCD_RW_INT~feeder_combout\);

-- Location: FF_X29_Y42_N5
\inst2|LCD_RW_INT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|LCD_RW_INT~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \inst2|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LCD_RW_INT~q\);

-- Location: LCCOMB_X36_Y42_N28
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|CHAR_COUNT\(0) & (\inst2|CHAR_COUNT\(1) & ((\inst2|CHAR_COUNT\(4)) # (\inst2|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datab => \inst2|CHAR_COUNT\(4),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(2),
	combout => \inst2|Mux0~0_combout\);

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

-- Location: LCCOMB_X65_Y20_N18
\inst1|inst5|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5|b~combout\ = (\q[1]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~input_o\,
	datad => \m[1]~input_o\,
	combout => \inst1|inst5|b~combout\);

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

-- Location: LCCOMB_X65_Y20_N28
\inst1|inst5|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5|co~0_combout\ = (\inst1|inst4|co~0_combout\ & ((\inst1|inst5|b~combout\) # ((\q[0]~input_o\ & \m[2]~input_o\)))) # (!\inst1|inst4|co~0_combout\ & (\inst1|inst5|b~combout\ & (\q[0]~input_o\ & \m[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|co~0_combout\,
	datab => \inst1|inst5|b~combout\,
	datac => \q[0]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst1|inst5|co~0_combout\);

-- Location: LCCOMB_X65_Y20_N24
\inst1|inst6|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|co~0_combout\ = (\inst1|inst6|b~combout\ & ((\inst1|inst5|co~0_combout\) # ((\q[0]~input_o\ & \m[3]~input_o\)))) # (!\inst1|inst6|b~combout\ & (\q[0]~input_o\ & (\m[3]~input_o\ & \inst1|inst5|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|b~combout\,
	datab => \q[0]~input_o\,
	datac => \m[3]~input_o\,
	datad => \inst1|inst5|co~0_combout\,
	combout => \inst1|inst6|co~0_combout\);

-- Location: LCCOMB_X65_Y20_N26
\inst1|inst2|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|b~combout\ = (\q[0]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[0]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst1|inst2|b~combout\);

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

-- Location: LCCOMB_X65_Y20_N0
\inst1|inst8|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8|b~combout\ = (\m[0]~input_o\ & \q[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datad => \q[2]~input_o\,
	combout => \inst1|inst8|b~combout\);

-- Location: LCCOMB_X65_Y20_N20
\inst1|inst8|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8|co~0_combout\ = (\inst1|inst8|b~combout\ & (\inst1|inst4|co~0_combout\ $ (\inst1|inst5|b~combout\ $ (\inst1|inst2|b~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|co~0_combout\,
	datab => \inst1|inst5|b~combout\,
	datac => \inst1|inst2|b~combout\,
	datad => \inst1|inst8|b~combout\,
	combout => \inst1|inst8|co~0_combout\);

-- Location: LCCOMB_X65_Y20_N22
\inst1|inst6|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|s~0_combout\ = (\q[1]~input_o\ & (\m[2]~input_o\ $ (((\q[0]~input_o\ & \m[3]~input_o\))))) # (!\q[1]~input_o\ & (\q[0]~input_o\ & (\m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~input_o\,
	datab => \q[0]~input_o\,
	datac => \m[3]~input_o\,
	datad => \m[2]~input_o\,
	combout => \inst1|inst6|s~0_combout\);

-- Location: LCCOMB_X65_Y20_N16
\inst1|inst9|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9|co~0_combout\ = (\inst1|inst9|b~combout\ & ((\inst1|inst8|co~0_combout\) # (\inst1|inst6|s~0_combout\ $ (\inst1|inst5|co~0_combout\)))) # (!\inst1|inst9|b~combout\ & (\inst1|inst8|co~0_combout\ & (\inst1|inst6|s~0_combout\ $ 
-- (\inst1|inst5|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|b~combout\,
	datab => \inst1|inst8|co~0_combout\,
	datac => \inst1|inst6|s~0_combout\,
	datad => \inst1|inst5|co~0_combout\,
	combout => \inst1|inst9|co~0_combout\);

-- Location: LCCOMB_X66_Y20_N0
\inst1|inst7|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7|b~combout\ = (\q[1]~input_o\ & \m[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst1|inst7|b~combout\);

-- Location: LCCOMB_X66_Y20_N20
\inst1|inst10|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst10|co~0_combout\ = (\inst1|inst10|b~combout\ & ((\inst1|inst9|co~0_combout\) # (\inst1|inst6|co~0_combout\ $ (\inst1|inst7|b~combout\)))) # (!\inst1|inst10|b~combout\ & (\inst1|inst9|co~0_combout\ & (\inst1|inst6|co~0_combout\ $ 
-- (\inst1|inst7|b~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10|b~combout\,
	datab => \inst1|inst6|co~0_combout\,
	datac => \inst1|inst9|co~0_combout\,
	datad => \inst1|inst7|b~combout\,
	combout => \inst1|inst10|co~0_combout\);

-- Location: LCCOMB_X66_Y20_N4
\inst1|inst11|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst11|b~combout\ = (\q[2]~input_o\ & \m[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[2]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst1|inst11|b~combout\);

-- Location: LCCOMB_X66_Y20_N26
\inst1|inst11|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst11|co~0_combout\ = (\inst1|inst10|co~0_combout\ & ((\inst1|inst11|b~combout\) # ((\inst1|inst6|co~0_combout\ & \inst1|inst7|b~combout\)))) # (!\inst1|inst10|co~0_combout\ & (\inst1|inst6|co~0_combout\ & (\inst1|inst11|b~combout\ & 
-- \inst1|inst7|b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|co~0_combout\,
	datab => \inst1|inst10|co~0_combout\,
	datac => \inst1|inst11|b~combout\,
	datad => \inst1|inst7|b~combout\,
	combout => \inst1|inst11|co~0_combout\);

-- Location: LCCOMB_X66_Y20_N12
\inst1|inst15|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst15|s~0_combout\ = \inst1|inst14|co~0_combout\ $ (\inst1|inst11|co~0_combout\ $ (((\q[3]~input_o\ & \m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|co~0_combout\,
	datab => \q[3]~input_o\,
	datac => \inst1|inst11|co~0_combout\,
	datad => \m[3]~input_o\,
	combout => \inst1|inst15|s~0_combout\);

-- Location: LCCOMB_X65_Y20_N2
\inst1|inst9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9|s~combout\ = \inst1|inst9|b~combout\ $ (\inst1|inst8|co~0_combout\ $ (\inst1|inst6|s~0_combout\ $ (\inst1|inst5|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9|b~combout\,
	datab => \inst1|inst8|co~0_combout\,
	datac => \inst1|inst6|s~0_combout\,
	datad => \inst1|inst5|co~0_combout\,
	combout => \inst1|inst9|s~combout\);

-- Location: LCCOMB_X65_Y20_N4
\inst1|inst12|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst12|co~0_combout\ = (\m[0]~input_o\ & (\inst1|inst9|s~combout\ & \q[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \inst1|inst9|s~combout\,
	datad => \q[3]~input_o\,
	combout => \inst1|inst12|co~0_combout\);

-- Location: LCCOMB_X66_Y20_N28
\inst1|inst13|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst13|b~combout\ = (\m[1]~input_o\ & \q[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datad => \q[3]~input_o\,
	combout => \inst1|inst13|b~combout\);

-- Location: LCCOMB_X66_Y20_N2
\inst1|inst13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst13|s~combout\ = \inst1|inst10|s~0_combout\ $ (\inst1|inst12|co~0_combout\ $ (\inst1|inst9|co~0_combout\ $ (\inst1|inst13|b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10|s~0_combout\,
	datab => \inst1|inst12|co~0_combout\,
	datac => \inst1|inst9|co~0_combout\,
	datad => \inst1|inst13|b~combout\,
	combout => \inst1|inst13|s~combout\);

-- Location: LCCOMB_X42_Y42_N14
\inst|inst|41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|41~0_combout\ = (\inst1|inst15|co~0_combout\ & ((\inst1|inst13|s~combout\) # (!\inst1|inst15|s~0_combout\))) # (!\inst1|inst15|co~0_combout\ & (\inst1|inst15|s~0_combout\ $ (\inst1|inst13|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst15|co~0_combout\,
	datac => \inst1|inst15|s~0_combout\,
	datad => \inst1|inst13|s~combout\,
	combout => \inst|inst|41~0_combout\);

-- Location: LCCOMB_X42_Y42_N8
\inst|inst|41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|41~1_combout\ = (\inst1|inst15|co~0_combout\ & (\inst1|inst15|s~0_combout\ & !\inst1|inst13|s~combout\)) # (!\inst1|inst15|co~0_combout\ & (!\inst1|inst15|s~0_combout\ & \inst1|inst13|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst15|co~0_combout\,
	datac => \inst1|inst15|s~0_combout\,
	datad => \inst1|inst13|s~combout\,
	combout => \inst|inst|41~1_combout\);

-- Location: LCCOMB_X65_Y20_N10
\inst1|inst12|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst12|s~0_combout\ = \inst1|inst9|s~combout\ $ (((\m[0]~input_o\ & \q[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \inst1|inst9|s~combout\,
	datad => \q[3]~input_o\,
	combout => \inst1|inst12|s~0_combout\);

-- Location: LCCOMB_X42_Y42_N26
\inst|inst|41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|41~2_combout\ = (\inst|inst|41~0_combout\ & (\inst1|inst14|s~combout\ $ (\inst|inst|41~1_combout\ $ (!\inst1|inst12|s~0_combout\)))) # (!\inst|inst|41~0_combout\ & ((\inst1|inst14|s~combout\ & (\inst|inst|41~1_combout\ & 
-- !\inst1|inst12|s~0_combout\)) # (!\inst1|inst14|s~combout\ & (!\inst|inst|41~1_combout\ & \inst1|inst12|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst|inst|41~0_combout\,
	datac => \inst|inst|41~1_combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|41~2_combout\);

-- Location: LCCOMB_X42_Y42_N2
\inst|inst|45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|45~1_combout\ = (\inst1|inst13|s~combout\ & (!\inst1|inst14|s~combout\ & !\inst1|inst15|s~0_combout\)) # (!\inst1|inst13|s~combout\ & ((\inst1|inst15|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst1|inst13|s~combout\,
	datac => \inst1|inst15|s~0_combout\,
	combout => \inst|inst|45~1_combout\);

-- Location: LCCOMB_X66_Y20_N16
\inst1|inst15|co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst15|co~0_combout\ = (\inst1|inst14|co~0_combout\ & ((\inst1|inst11|co~0_combout\) # ((\q[3]~input_o\ & \m[3]~input_o\)))) # (!\inst1|inst14|co~0_combout\ & (\q[3]~input_o\ & (\inst1|inst11|co~0_combout\ & \m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|co~0_combout\,
	datab => \q[3]~input_o\,
	datac => \inst1|inst11|co~0_combout\,
	datad => \m[3]~input_o\,
	combout => \inst1|inst15|co~0_combout\);

-- Location: LCCOMB_X42_Y42_N4
\inst|inst|45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|45~2_combout\ = (\inst|inst|45~0_combout\ & ((\inst|inst|45~1_combout\ & (\inst1|inst15|co~0_combout\ & \inst1|inst12|s~0_combout\)) # (!\inst|inst|45~1_combout\ & (!\inst1|inst15|co~0_combout\ & !\inst1|inst12|s~0_combout\)))) # 
-- (!\inst|inst|45~0_combout\ & (\inst|inst|45~1_combout\ & (\inst1|inst15|co~0_combout\ $ (\inst1|inst12|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|45~0_combout\,
	datab => \inst|inst|45~1_combout\,
	datac => \inst1|inst15|co~0_combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|45~2_combout\);

-- Location: LCCOMB_X65_Y20_N8
\inst1|inst8|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8|s~0_combout\ = \inst1|inst4|co~0_combout\ $ (\inst1|inst5|b~combout\ $ (\inst1|inst2|b~combout\ $ (\inst1|inst8|b~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|co~0_combout\,
	datab => \inst1|inst5|b~combout\,
	datac => \inst1|inst2|b~combout\,
	datad => \inst1|inst8|b~combout\,
	combout => \inst1|inst8|s~0_combout\);

-- Location: LCCOMB_X38_Y42_N12
\inst|inst2|82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|82~0_combout\ = (\inst|inst|43~2_combout\ & ((\inst|inst|41~2_combout\ & ((\inst1|inst8|s~0_combout\) # (!\inst|inst|45~2_combout\))) # (!\inst|inst|41~2_combout\ & (!\inst|inst|45~2_combout\ & \inst1|inst8|s~0_combout\)))) # 
-- (!\inst|inst|43~2_combout\ & (!\inst|inst|41~2_combout\ & (\inst|inst|45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~2_combout\,
	datab => \inst|inst|41~2_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst|inst2|82~0_combout\);

-- Location: LCCOMB_X42_Y42_N22
\inst|inst|82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|82~0_combout\ = (\inst1|inst14|s~combout\ & (((\inst1|inst15|co~0_combout\ & !\inst1|inst13|s~combout\)) # (!\inst1|inst15|s~0_combout\))) # (!\inst1|inst14|s~combout\ & ((\inst1|inst15|s~0_combout\ & ((\inst1|inst15|co~0_combout\) # 
-- (!\inst1|inst13|s~combout\))) # (!\inst1|inst15|s~0_combout\ & (!\inst1|inst15|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst1|inst15|s~0_combout\,
	datac => \inst1|inst15|co~0_combout\,
	datad => \inst1|inst13|s~combout\,
	combout => \inst|inst|82~0_combout\);

-- Location: LCCOMB_X42_Y42_N20
\inst|inst|81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|81~1_combout\ = (\inst1|inst14|s~combout\ & ((\inst1|inst13|s~combout\ & (\inst1|inst15|s~0_combout\ & !\inst1|inst12|s~0_combout\)) # (!\inst1|inst13|s~combout\ & ((\inst1|inst15|s~0_combout\) # (!\inst1|inst12|s~0_combout\))))) # 
-- (!\inst1|inst14|s~combout\ & ((\inst1|inst13|s~combout\) # ((!\inst1|inst15|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst1|inst13|s~combout\,
	datac => \inst1|inst15|s~0_combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|81~1_combout\);

-- Location: LCCOMB_X42_Y42_N18
\inst|inst|81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|81~0_combout\ = (\inst1|inst14|s~combout\ & ((\inst1|inst13|s~combout\) # ((!\inst1|inst15|s~0_combout\)))) # (!\inst1|inst14|s~combout\ & (!\inst1|inst13|s~combout\ & (\inst1|inst15|s~0_combout\ & !\inst1|inst12|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14|s~combout\,
	datab => \inst1|inst13|s~combout\,
	datac => \inst1|inst15|s~0_combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|81~0_combout\);

-- Location: LCCOMB_X42_Y42_N10
\inst|inst|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|81~2_combout\ = (\inst1|inst15|co~0_combout\ & ((\inst|inst|81~0_combout\))) # (!\inst1|inst15|co~0_combout\ & (\inst|inst|81~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|81~1_combout\,
	datac => \inst1|inst15|co~0_combout\,
	datad => \inst|inst|81~0_combout\,
	combout => \inst|inst|81~2_combout\);

-- Location: LCCOMB_X36_Y42_N2
\inst2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~3_combout\ = (\inst|inst2|82~0_combout\ & (\inst|inst|82~0_combout\ $ (((!\inst|inst|48~combout\ & \inst|inst|81~2_combout\))))) # (!\inst|inst2|82~0_combout\ & ((\inst|inst|48~combout\ & (!\inst|inst|82~0_combout\ & 
-- !\inst|inst|81~2_combout\)) # (!\inst|inst|48~combout\ & (\inst|inst|82~0_combout\ & \inst|inst|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst2|82~0_combout\,
	datac => \inst|inst|82~0_combout\,
	datad => \inst|inst|81~2_combout\,
	combout => \inst2|Mux5~3_combout\);

-- Location: LCCOMB_X36_Y42_N30
\inst2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector26~0_combout\ = (\inst2|CHAR_COUNT\(0) & \inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datad => \inst2|state.RESET1~q\,
	combout => \inst2|Selector26~0_combout\);

-- Location: FF_X35_Y42_N15
\inst2|CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|CHAR_COUNT[0]~5_combout\,
	asdata => \inst2|Selector26~0_combout\,
	sload => \inst2|ALT_INV_state.Print_String~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CHAR_COUNT\(0));

-- Location: LCCOMB_X35_Y42_N10
\inst2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~4_combout\ = (\inst2|CHAR_COUNT\(0) & (!\inst2|CHAR_COUNT\(4) & ((!\inst2|CHAR_COUNT\(1))))) # (!\inst2|CHAR_COUNT\(0) & (\inst2|CHAR_COUNT\(1) & (\inst2|CHAR_COUNT\(4) $ (!\inst2|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(4),
	datab => \inst2|CHAR_COUNT\(2),
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|CHAR_COUNT\(1),
	combout => \inst2|Mux5~4_combout\);

-- Location: LCCOMB_X35_Y42_N28
\inst2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\inst2|CHAR_COUNT\(4)) # ((\inst2|CHAR_COUNT\(2)) # ((\inst2|CHAR_COUNT\(1)) # (!\inst2|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(4),
	datab => \inst2|CHAR_COUNT\(2),
	datac => \inst2|CHAR_COUNT\(3),
	datad => \inst2|CHAR_COUNT\(1),
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y42_N24
\inst2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (!\inst2|Mux3~2_combout\ & !\inst2|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux3~2_combout\,
	datad => \inst2|CHAR_COUNT\(0),
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X32_Y42_N28
\inst2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~5_combout\ = (\inst2|CHAR_COUNT\(3) & (\inst2|Mux5~3_combout\ & ((\inst2|Mux3~3_combout\)))) # (!\inst2|CHAR_COUNT\(3) & ((\inst2|Mux5~4_combout\) # ((\inst2|Mux5~3_combout\ & \inst2|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(3),
	datab => \inst2|Mux5~3_combout\,
	datac => \inst2|Mux5~4_combout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux5~5_combout\);

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

-- Location: LCCOMB_X65_Y20_N14
\inst1|inst4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4|s~0_combout\ = (\m[1]~input_o\ & (\q[0]~input_o\ $ (((\q[1]~input_o\ & \m[0]~input_o\))))) # (!\m[1]~input_o\ & (\q[1]~input_o\ & ((\m[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \q[1]~input_o\,
	datac => \q[0]~input_o\,
	datad => \m[0]~input_o\,
	combout => \inst1|inst4|s~0_combout\);

-- Location: LCCOMB_X66_Y20_N8
\inst1|inst14|b\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst14|b~combout\ = (\q[3]~input_o\ & \m[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[3]~input_o\,
	datac => \m[2]~input_o\,
	combout => \inst1|inst14|b~combout\);

-- Location: LCCOMB_X66_Y20_N24
\inst1|inst11|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst11|s~2_combout\ = (\m[3]~input_o\ & (\q[2]~input_o\ $ (((\q[1]~input_o\ & \inst1|inst6|co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~input_o\,
	datab => \inst1|inst6|co~0_combout\,
	datac => \q[2]~input_o\,
	datad => \m[3]~input_o\,
	combout => \inst1|inst11|s~2_combout\);

-- Location: LCCOMB_X66_Y20_N14
\inst1|inst14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst14|s~combout\ = \inst1|inst13|co~0_combout\ $ (\inst1|inst10|co~0_combout\ $ (\inst1|inst14|b~combout\ $ (\inst1|inst11|s~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst13|co~0_combout\,
	datab => \inst1|inst10|co~0_combout\,
	datac => \inst1|inst14|b~combout\,
	datad => \inst1|inst11|s~2_combout\,
	combout => \inst1|inst14|s~combout\);

-- Location: LCCOMB_X42_Y42_N28
\inst|inst|43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|43~0_combout\ = \inst1|inst15|co~0_combout\ $ (\inst1|inst14|s~combout\ $ (\inst1|inst12|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst15|co~0_combout\,
	datac => \inst1|inst14|s~combout\,
	datad => \inst1|inst12|s~0_combout\,
	combout => \inst|inst|43~0_combout\);

-- Location: LCCOMB_X42_Y42_N24
\inst|inst|43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|43~2_combout\ = (\inst|inst|43~0_combout\ & ((\inst|inst|43~1_combout\ & (\inst1|inst15|s~0_combout\ & !\inst1|inst13|s~combout\)) # (!\inst|inst|43~1_combout\ & (!\inst1|inst15|s~0_combout\ & \inst1|inst13|s~combout\)))) # 
-- (!\inst|inst|43~0_combout\ & (\inst|inst|43~1_combout\ $ (\inst1|inst15|s~0_combout\ $ (\inst1|inst13|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~1_combout\,
	datab => \inst|inst|43~0_combout\,
	datac => \inst1|inst15|s~0_combout\,
	datad => \inst1|inst13|s~combout\,
	combout => \inst|inst|43~2_combout\);

-- Location: LCCOMB_X34_Y42_N26
\inst2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~3_combout\ = (\inst|inst|43~2_combout\) # ((\inst|inst|45~2_combout\ & ((\inst1|inst4|s~0_combout\))) # (!\inst|inst|45~2_combout\ & (\inst|inst|41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~2_combout\,
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst|inst|43~2_combout\,
	combout => \inst2|Mux4~3_combout\);

-- Location: LCCOMB_X35_Y42_N6
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y42_N24
\inst2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~4_combout\ = (\inst2|Mux6~0_combout\ & ((\inst|inst2|22~combout\) # ((\inst1|inst8|s~0_combout\ & !\inst2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|22~combout\,
	datab => \inst1|inst8|s~0_combout\,
	datac => \inst2|Mux4~3_combout\,
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux4~4_combout\);

-- Location: LCCOMB_X35_Y42_N12
\inst2|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~11_combout\ = (\inst|inst|48~combout\ & (!\inst|inst|81~2_combout\ & (!\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst|81~2_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux4~11_combout\);

-- Location: LCCOMB_X35_Y42_N2
\inst2|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~16_combout\ = (!\inst|inst|48~combout\ & (\inst|inst|81~2_combout\ & (!\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst|81~2_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~16_combout\);

-- Location: LCCOMB_X34_Y42_N12
\inst2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~2_combout\ = (\inst|inst|82~0_combout\ & ((\inst2|Mux4~11_combout\) # ((!\inst|inst2|82~0_combout\ & \inst2|Mux3~16_combout\)))) # (!\inst|inst|82~0_combout\ & ((\inst2|Mux3~16_combout\) # ((\inst|inst2|82~0_combout\ & 
-- \inst2|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|82~0_combout\,
	datab => \inst|inst2|82~0_combout\,
	datac => \inst2|Mux4~11_combout\,
	datad => \inst2|Mux3~16_combout\,
	combout => \inst2|Mux4~2_combout\);

-- Location: LCCOMB_X34_Y42_N16
\inst|inst2|16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|16~4_combout\ = (\inst|inst|45~2_combout\ & !\inst|inst|41~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|45~2_combout\,
	datac => \inst|inst|41~2_combout\,
	combout => \inst|inst2|16~4_combout\);

-- Location: LCCOMB_X34_Y42_N28
\inst2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~4_combout\ = (\inst1|inst4|s~0_combout\ & (\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~4_combout\);

-- Location: LCCOMB_X34_Y42_N6
\inst2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~8_combout\ = (!\inst1|inst8|s~0_combout\ & (!\inst1|inst4|s~0_combout\ & (\inst|inst|43~2_combout\ & \inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|s~0_combout\,
	datab => \inst1|inst4|s~0_combout\,
	datac => \inst|inst|43~2_combout\,
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux4~8_combout\);

-- Location: LCCOMB_X34_Y42_N18
\inst2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~9_combout\ = (\inst2|Mux4~7_combout\ & ((\inst2|Mux3~4_combout\) # ((!\inst|inst2|16~4_combout\ & \inst2|Mux4~8_combout\)))) # (!\inst2|Mux4~7_combout\ & (!\inst|inst2|16~4_combout\ & ((\inst2|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~7_combout\,
	datab => \inst|inst2|16~4_combout\,
	datac => \inst2|Mux3~4_combout\,
	datad => \inst2|Mux4~8_combout\,
	combout => \inst2|Mux4~9_combout\);

-- Location: LCCOMB_X33_Y42_N14
\inst2|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~10_combout\ = (\inst2|Mux4~6_combout\) # ((\inst2|Mux4~4_combout\) # ((\inst2|Mux4~2_combout\) # (\inst2|Mux4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~6_combout\,
	datab => \inst2|Mux4~4_combout\,
	datac => \inst2|Mux4~2_combout\,
	datad => \inst2|Mux4~9_combout\,
	combout => \inst2|Mux4~10_combout\);

-- Location: LCCOMB_X35_Y42_N0
\inst2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~5_combout\ = (!\inst2|CHAR_COUNT\(0) & (!\inst2|Mux3~2_combout\ & (\inst|inst|48~combout\ $ (!\inst|inst|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst|81~2_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~5_combout\);

-- Location: LCCOMB_X34_Y42_N10
\inst2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~6_combout\ = (\inst|inst|82~0_combout\ & (\inst|inst2|82~0_combout\ & ((\inst2|Mux3~16_combout\)))) # (!\inst|inst|82~0_combout\ & (!\inst|inst2|82~0_combout\ & (\inst2|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|82~0_combout\,
	datab => \inst|inst2|82~0_combout\,
	datac => \inst2|Mux3~5_combout\,
	datad => \inst2|Mux3~16_combout\,
	combout => \inst2|Mux3~6_combout\);

-- Location: LCCOMB_X34_Y42_N0
\inst|inst2|22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|22~1_combout\ = (!\inst|inst|45~2_combout\ & \inst|inst|41~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|45~2_combout\,
	datac => \inst|inst|41~2_combout\,
	combout => \inst|inst2|22~1_combout\);

-- Location: LCCOMB_X35_Y42_N26
\inst2|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~8_combout\ = (\inst2|Mux3~7_combout\ & (\inst|inst2|22~1_combout\ & (\inst2|CHAR_COUNT\(0) & !\inst2|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~7_combout\,
	datab => \inst|inst2|22~1_combout\,
	datac => \inst2|CHAR_COUNT\(0),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~8_combout\);

-- Location: LCCOMB_X34_Y42_N4
\inst2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~9_combout\ = (\inst1|inst8|s~0_combout\ & (\inst|inst2|16~4_combout\ & (!\inst|inst|43~2_combout\ & \inst2|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|s~0_combout\,
	datab => \inst|inst2|16~4_combout\,
	datac => \inst|inst|43~2_combout\,
	datad => \inst2|Mux3~4_combout\,
	combout => \inst2|Mux3~9_combout\);

-- Location: LCCOMB_X33_Y42_N12
\inst2|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~10_combout\ = (\inst2|Mux3~8_combout\) # ((\inst2|Mux3~9_combout\) # ((\inst|inst2|16~combout\ & \inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|16~combout\,
	datab => \inst2|Mux6~0_combout\,
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux3~9_combout\,
	combout => \inst2|Mux3~10_combout\);

-- Location: LCCOMB_X33_Y42_N10
\inst2|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~15_combout\ = (\inst2|Mux3~14_combout\) # ((\inst2|Mux3~6_combout\) # (\inst2|Mux3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~14_combout\,
	datac => \inst2|Mux3~6_combout\,
	datad => \inst2|Mux3~10_combout\,
	combout => \inst2|Mux3~15_combout\);

-- Location: LCCOMB_X33_Y42_N28
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ((!\inst2|Mux5~2_combout\ & (!\inst2|Mux5~5_combout\ & !\inst2|Mux4~10_combout\))) # (!\inst2|Mux3~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~2_combout\,
	datab => \inst2|Mux5~5_combout\,
	datac => \inst2|Mux4~10_combout\,
	datad => \inst2|Mux3~15_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y42_N0
\inst2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|LessThan1~0_combout\ & ((\inst2|Mux0~0_combout\) # (\inst2|CHAR_COUNT\(3))))) # (!\inst2|Equal0~0_combout\ & ((\inst2|Mux0~0_combout\) # ((\inst2|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mux0~0_combout\,
	datac => \inst2|CHAR_COUNT\(3),
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X36_Y42_N4
\inst2|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst2|Selector3~0_combout\) # ((\inst2|state.Print_String~q\ & !\inst2|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector3~0_combout\,
	datac => \inst2|state.Print_String~q\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: FF_X36_Y42_N5
\inst2|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector3~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X30_Y42_N28
\inst2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector21~0_combout\ = (\inst2|state.DISPLAY_OFF~q\) # ((\inst2|next_command.DISPLAY_CLEAR~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DISPLAY_OFF~q\,
	datab => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|next_command.DISPLAY_CLEAR~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector21~0_combout\);

-- Location: FF_X30_Y42_N29
\inst2|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector21~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X30_Y42_N6
\inst2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~32_combout\ = (\inst2|next_command.DISPLAY_CLEAR~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_command.DISPLAY_CLEAR~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~32_combout\);

-- Location: FF_X30_Y42_N7
\inst2|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~32_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X30_Y42_N22
\inst2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|state.DISPLAY_CLEAR~q\) # ((\inst2|next_command.DISPLAY_ON~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.HOLD~q\,
	datac => \inst2|next_command.DISPLAY_ON~q\,
	datad => \inst2|state.DISPLAY_CLEAR~q\,
	combout => \inst2|Selector13~0_combout\);

-- Location: FF_X30_Y42_N23
\inst2|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector13~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X30_Y42_N24
\inst2|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~33_combout\ = (\inst2|next_command.DISPLAY_ON~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_command.DISPLAY_ON~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~33_combout\);

-- Location: FF_X30_Y42_N25
\inst2|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~33_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X30_Y42_N2
\inst2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector14~0_combout\ = (\inst2|state.DISPLAY_ON~q\) # ((\inst2|next_command.MODE_SET~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.DISPLAY_ON~q\,
	datac => \inst2|next_command.MODE_SET~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector14~0_combout\);

-- Location: FF_X30_Y42_N3
\inst2|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector14~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|next_command.MODE_SET~q\);

-- Location: LCCOMB_X30_Y42_N20
\inst2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~30_combout\ = (\inst2|state.HOLD~q\ & \inst2|next_command.MODE_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.HOLD~q\,
	datad => \inst2|next_command.MODE_SET~q\,
	combout => \inst2|state~30_combout\);

-- Location: FF_X29_Y42_N25
\inst2|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	asdata => \inst2|state~30_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.MODE_SET~q\);

-- Location: LCCOMB_X29_Y42_N20
\inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (!\inst2|state.LINE2~q\ & (!\inst2|state.Print_String~q\ & (!\inst2|state.RETURN_HOME~q\ & !\inst2|state.MODE_SET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LINE2~q\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|state.RETURN_HOME~q\,
	datad => \inst2|state.MODE_SET~q\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X36_Y42_N8
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|CHAR_COUNT\(1)) # ((!\inst2|CHAR_COUNT\(4) & \inst2|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|CHAR_COUNT\(4),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(2),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y42_N22
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|CHAR_COUNT\(0) & ((\inst2|Mux1~0_combout\) # (\inst2|CHAR_COUNT\(3) $ (!\inst2|CHAR_COUNT\(4))))) # (!\inst2|CHAR_COUNT\(0) & ((\inst2|CHAR_COUNT\(4) & (\inst2|CHAR_COUNT\(3))) # (!\inst2|CHAR_COUNT\(4) & 
-- ((\inst2|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datab => \inst2|CHAR_COUNT\(3),
	datac => \inst2|Mux1~0_combout\,
	datad => \inst2|CHAR_COUNT\(4),
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y42_N12
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|Mux1~1_combout\ & ((\inst2|CHAR_COUNT\(3)) # ((\inst2|Mux2~0_combout\ & \inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|CHAR_COUNT\(3),
	datac => \inst2|Mux1~1_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y42_N6
\inst2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|state.Print_String~q\ & \inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.Print_String~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: LCCOMB_X33_Y42_N30
\inst2|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~2_combout\ = (\inst2|Selector4~1_combout\ & (!\inst2|Selector4~0_combout\ & ((!\inst2|LessThan1~0_combout\) # (!\inst2|Selector9~0_combout\)))) # (!\inst2|Selector4~1_combout\ & (((!\inst2|LessThan1~0_combout\) # 
-- (!\inst2|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector4~1_combout\,
	datab => \inst2|Selector4~0_combout\,
	datac => \inst2|Selector9~0_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector4~2_combout\);

-- Location: LCCOMB_X33_Y42_N4
\inst2|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~3_combout\ = (\inst2|Selector4~2_combout\ & ((!\inst2|Mux1~1_combout\) # (!\inst2|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|Selector4~2_combout\,
	datad => \inst2|Mux1~1_combout\,
	combout => \inst2|Selector4~3_combout\);

-- Location: FF_X33_Y42_N5
\inst2|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector4~3_combout\,
	clrn => \RST~input_o\,
	ena => \inst2|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X33_Y42_N2
\inst2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|Selector4~2_combout\ & ((\inst2|Mux2~0_combout\) # ((\inst2|CHAR_COUNT\(3)) # (!\inst2|state.Print_String~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|Selector4~2_combout\,
	datad => \inst2|CHAR_COUNT\(3),
	combout => \inst2|Selector5~0_combout\);

-- Location: FF_X33_Y42_N3
\inst2|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector5~0_combout\,
	clrn => \RST~input_o\,
	ena => \inst2|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X34_Y42_N8
\inst|inst2|22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|22~0_combout\ = (\inst|inst|43~2_combout\ & !\inst1|inst8|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|43~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst|inst2|22~0_combout\);

-- Location: LCCOMB_X34_Y42_N30
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|inst|45~2_combout\ & (!\inst|inst2|22~0_combout\ & (\inst|inst|41~2_combout\ $ (!\inst1|inst4|s~0_combout\)))) # (!\inst|inst|45~2_combout\ & (\inst|inst2|22~0_combout\ & (\inst|inst|41~2_combout\ $ 
-- (!\inst1|inst4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|45~2_combout\,
	datab => \inst|inst2|22~0_combout\,
	datac => \inst|inst|41~2_combout\,
	datad => \inst1|inst4|s~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y42_N26
\inst2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~2_combout\ = (\inst2|Mux6~0_combout\ & ((\inst2|Mux5~0_combout\) # ((\inst2|Mux5~1_combout\ & !\inst|inst|45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~1_combout\,
	datab => \inst2|Mux5~0_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux5~2_combout\);

-- Location: LCCOMB_X32_Y42_N6
\inst2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~6_combout\ = (\inst2|Mux5~2_combout\) # (\inst2|Mux5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux5~2_combout\,
	datad => \inst2|Mux5~5_combout\,
	combout => \inst2|Mux5~6_combout\);

-- Location: LCCOMB_X33_Y42_N20
\inst2|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~4_combout\ = (\inst2|Mux3~15_combout\ & (\inst2|Selector9~0_combout\ & ((\inst2|Mux5~6_combout\) # (\inst2|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~15_combout\,
	datab => \inst2|Mux5~6_combout\,
	datac => \inst2|Selector9~0_combout\,
	datad => \inst2|Mux4~10_combout\,
	combout => \inst2|Selector6~4_combout\);

-- Location: LCCOMB_X36_Y42_N16
\inst2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~5_combout\ = (\inst2|CHAR_COUNT\(4) & (!\inst2|CHAR_COUNT\(2) & ((!\inst2|CHAR_COUNT\(1)) # (!\inst2|CHAR_COUNT\(0))))) # (!\inst2|CHAR_COUNT\(4) & (\inst2|CHAR_COUNT\(2) $ (((!\inst2|CHAR_COUNT\(0) & \inst2|CHAR_COUNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(0),
	datab => \inst2|CHAR_COUNT\(4),
	datac => \inst2|CHAR_COUNT\(1),
	datad => \inst2|CHAR_COUNT\(2),
	combout => \inst2|Mux6~5_combout\);

-- Location: LCCOMB_X32_Y42_N30
\inst2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~4_combout\ = (\m[0]~input_o\ & (\q[0]~input_o\ & (!\inst2|Mux3~2_combout\ & \inst2|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \q[0]~input_o\,
	datac => \inst2|Mux3~2_combout\,
	datad => \inst2|CHAR_COUNT\(0),
	combout => \inst2|Mux6~4_combout\);

-- Location: LCCOMB_X34_Y42_N22
\inst|inst2|16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|16~combout\ = (\inst|inst|45~2_combout\ & (\inst|inst2|22~0_combout\ & (!\inst|inst|41~2_combout\ & !\inst1|inst4|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|45~2_combout\,
	datab => \inst|inst2|22~0_combout\,
	datac => \inst|inst|41~2_combout\,
	datad => \inst1|inst4|s~0_combout\,
	combout => \inst|inst2|16~combout\);

-- Location: LCCOMB_X38_Y42_N6
\inst|inst2|22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|22~combout\ = (\inst|inst|43~2_combout\ & (\inst|inst|41~2_combout\ & (!\inst|inst|45~2_combout\ & !\inst1|inst8|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~2_combout\,
	datab => \inst|inst|41~2_combout\,
	datac => \inst|inst|45~2_combout\,
	datad => \inst1|inst8|s~0_combout\,
	combout => \inst|inst2|22~combout\);

-- Location: LCCOMB_X32_Y42_N16
\inst2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~3_combout\ = (\inst2|Mux6~2_combout\ & (!\inst|inst2|16~combout\ & (!\inst|inst2|22~combout\ & \inst2|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~2_combout\,
	datab => \inst|inst2|16~combout\,
	datac => \inst|inst2|22~combout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux6~3_combout\);

-- Location: LCCOMB_X32_Y42_N4
\inst2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~6_combout\ = (\inst2|Mux6~4_combout\) # ((\inst2|Mux6~3_combout\) # ((!\inst2|CHAR_COUNT\(3) & \inst2|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|CHAR_COUNT\(3),
	datab => \inst2|Mux6~5_combout\,
	datac => \inst2|Mux6~4_combout\,
	datad => \inst2|Mux6~3_combout\,
	combout => \inst2|Mux6~6_combout\);

-- Location: LCCOMB_X33_Y42_N22
\inst2|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~6_combout\ = (!\inst2|Mux5~2_combout\ & (!\inst2|Mux5~5_combout\ & (!\inst2|Mux6~6_combout\ & !\inst2|Mux4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~2_combout\,
	datab => \inst2|Mux5~5_combout\,
	datac => \inst2|Mux6~6_combout\,
	datad => \inst2|Mux4~10_combout\,
	combout => \inst2|Selector7~6_combout\);

-- Location: LCCOMB_X30_Y42_N18
\inst2|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~35_combout\ = (\inst2|next_command.RESET3~q\ & \inst2|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_command.RESET3~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|state~35_combout\);

-- Location: FF_X30_Y42_N19
\inst2|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|state~35_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RESET3~q\);

-- Location: LCCOMB_X32_Y42_N0
\inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = ((!\inst2|DATA_BUS_VALUE\(3) & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\)))) # (!\inst2|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET1~q\,
	datab => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|state.HOLD~q\,
	datad => \inst2|DATA_BUS_VALUE\(3),
	combout => \inst2|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y42_N24
\inst2|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~2_combout\ = (\inst2|Mux3~15_combout\ & (\inst2|state.Print_String~q\ & ((\inst2|LessThan1~0_combout\) # (!\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~15_combout\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector6~2_combout\);

-- Location: LCCOMB_X33_Y42_N18
\inst2|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~3_combout\ = (\inst2|Selector6~1_combout\) # ((\inst2|state.RESET3~q\) # ((\inst2|Selector6~0_combout\) # (\inst2|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector6~1_combout\,
	datab => \inst2|state.RESET3~q\,
	datac => \inst2|Selector6~0_combout\,
	datad => \inst2|Selector6~2_combout\,
	combout => \inst2|Selector6~3_combout\);

-- Location: LCCOMB_X33_Y42_N16
\inst2|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~5_combout\ = (!\inst2|Selector6~3_combout\ & ((\inst2|Mux3~15_combout\ $ (\inst2|Selector7~6_combout\)) # (!\inst2|Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~15_combout\,
	datab => \inst2|Selector6~4_combout\,
	datac => \inst2|Selector7~6_combout\,
	datad => \inst2|Selector6~3_combout\,
	combout => \inst2|Selector6~5_combout\);

-- Location: FF_X33_Y42_N17
\inst2|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector6~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X33_Y42_N6
\inst2|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~3_combout\ = (\inst2|Equal0~0_combout\ & (!\inst2|Mux5~6_combout\ & (!\inst2|Mux6~6_combout\ & !\inst2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mux5~6_combout\,
	datac => \inst2|Mux6~6_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector7~3_combout\);

-- Location: LCCOMB_X33_Y42_N0
\inst2|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~4_combout\ = (\inst2|Mux4~10_combout\ & (\inst2|state.Print_String~q\ & !\inst2|Selector7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux4~10_combout\,
	datac => \inst2|state.Print_String~q\,
	datad => \inst2|Selector7~3_combout\,
	combout => \inst2|Selector7~4_combout\);

-- Location: LCCOMB_X33_Y42_N26
\inst2|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~5_combout\ = (\inst2|Selector7~2_combout\) # ((\inst2|Selector7~4_combout\) # ((\inst2|Selector6~4_combout\ & \inst2|Selector7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~2_combout\,
	datab => \inst2|Selector6~4_combout\,
	datac => \inst2|Selector7~6_combout\,
	datad => \inst2|Selector7~4_combout\,
	combout => \inst2|Selector7~5_combout\);

-- Location: FF_X33_Y42_N27
\inst2|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector7~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X32_Y42_N18
\inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = \inst2|Mux6~6_combout\ $ (((\inst2|Mux5~2_combout\) # (\inst2|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~2_combout\,
	datac => \inst2|Mux6~6_combout\,
	datad => \inst2|Mux5~5_combout\,
	combout => \inst2|Add1~2_combout\);

-- Location: LCCOMB_X32_Y42_N2
\inst2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|Mux5~6_combout\ & (\inst2|state.Print_String~q\ & ((\inst2|LessThan1~0_combout\) # (!\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~6_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|state.Print_String~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: LCCOMB_X32_Y42_N20
\inst2|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~2_combout\ = (\inst2|Selector8~1_combout\) # ((\inst2|Selector8~0_combout\) # ((!\inst2|Add1~2_combout\ & \inst2|Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector8~1_combout\,
	datab => \inst2|Add1~2_combout\,
	datac => \inst2|Selector6~4_combout\,
	datad => \inst2|Selector8~0_combout\,
	combout => \inst2|Selector8~2_combout\);

-- Location: FF_X32_Y42_N21
\inst2|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector8~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X33_Y42_N8
\inst2|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~3_combout\ = (\inst2|Selector9~2_combout\) # ((\inst2|Selector9~0_combout\ & (\inst2|Mux6~6_combout\ $ (!\inst2|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector9~2_combout\,
	datab => \inst2|Mux6~6_combout\,
	datac => \inst2|Selector9~0_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|Selector9~3_combout\);

-- Location: FF_X33_Y42_N9
\inst2|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector9~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X29_Y42_N16
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|state.Print_String~q\) # ((\inst2|LCD_RS~q\ & ((\inst2|state.DROP_LCD_E~q\) # (\inst2|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datab => \inst2|state.Print_String~q\,
	datac => \inst2|LCD_RS~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X29_Y42_N17
\inst2|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LCD_RS~q\);

-- Location: LCCOMB_X29_Y42_N18
\inst2|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LCD_E~0_combout\ = (\inst2|state.HOLD~q\ & ((\inst2|LCD_E~q\))) # (!\inst2|state.HOLD~q\ & (\inst2|state.DROP_LCD_E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.DROP_LCD_E~q\,
	datac => \inst2|LCD_E~q\,
	datad => \inst2|state.HOLD~q\,
	combout => \inst2|LCD_E~0_combout\);

-- Location: FF_X29_Y42_N19
\inst2|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_400HZ~clkctrl_outclk\,
	d => \inst2|LCD_E~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|LCD_E~q\);

-- Location: IOIBUF_X0_Y47_N1
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;
END structure;


