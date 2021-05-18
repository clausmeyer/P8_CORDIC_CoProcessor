-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"

-- DATE "05/18/2021 11:25:58"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cordic_area IS
    PORT (
	i_x : IN std_logic_vector(15 DOWNTO 0);
	i_y : IN std_logic_vector(15 DOWNTO 0);
	o_z : OUT std_logic_vector(15 DOWNTO 0);
	i_enable_cordic : IN std_logic;
	o_done : OUT std_logic;
	clk_in : IN std_logic;
	state_LED : OUT std_logic_vector(3 DOWNTO 0);
	LUT_TEST : OUT std_logic_vector(15 DOWNTO 0)
	);
END cordic_area;

-- Design Ports Information
-- i_x[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[5]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[7]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[8]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[9]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[10]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[11]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[13]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[8]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[9]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[10]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[12]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[14]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y[15]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[8]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[13]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_z[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_done	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_LED[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUT_TEST[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable_cordic	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cordic_area IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_x : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_z : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_enable_cordic : std_logic;
SIGNAL ww_o_done : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_state_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LUT_TEST : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider_x|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_mem_enable_X~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_mem_enable~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_mem_enable_Y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_x[0]~input_o\ : std_logic;
SIGNAL \i_x[1]~input_o\ : std_logic;
SIGNAL \i_x[2]~input_o\ : std_logic;
SIGNAL \i_x[3]~input_o\ : std_logic;
SIGNAL \i_x[4]~input_o\ : std_logic;
SIGNAL \i_x[5]~input_o\ : std_logic;
SIGNAL \i_x[6]~input_o\ : std_logic;
SIGNAL \i_x[7]~input_o\ : std_logic;
SIGNAL \i_x[8]~input_o\ : std_logic;
SIGNAL \i_x[9]~input_o\ : std_logic;
SIGNAL \i_x[10]~input_o\ : std_logic;
SIGNAL \i_x[11]~input_o\ : std_logic;
SIGNAL \i_x[12]~input_o\ : std_logic;
SIGNAL \i_x[13]~input_o\ : std_logic;
SIGNAL \i_x[14]~input_o\ : std_logic;
SIGNAL \i_x[15]~input_o\ : std_logic;
SIGNAL \i_y[0]~input_o\ : std_logic;
SIGNAL \i_y[1]~input_o\ : std_logic;
SIGNAL \i_y[2]~input_o\ : std_logic;
SIGNAL \i_y[3]~input_o\ : std_logic;
SIGNAL \i_y[4]~input_o\ : std_logic;
SIGNAL \i_y[5]~input_o\ : std_logic;
SIGNAL \i_y[6]~input_o\ : std_logic;
SIGNAL \i_y[7]~input_o\ : std_logic;
SIGNAL \i_y[8]~input_o\ : std_logic;
SIGNAL \i_y[9]~input_o\ : std_logic;
SIGNAL \i_y[10]~input_o\ : std_logic;
SIGNAL \i_y[11]~input_o\ : std_logic;
SIGNAL \i_y[12]~input_o\ : std_logic;
SIGNAL \i_y[13]~input_o\ : std_logic;
SIGNAL \i_y[14]~input_o\ : std_logic;
SIGNAL \i_y[15]~input_o\ : std_logic;
SIGNAL \o_z[0]~output_o\ : std_logic;
SIGNAL \o_z[1]~output_o\ : std_logic;
SIGNAL \o_z[2]~output_o\ : std_logic;
SIGNAL \o_z[3]~output_o\ : std_logic;
SIGNAL \o_z[4]~output_o\ : std_logic;
SIGNAL \o_z[5]~output_o\ : std_logic;
SIGNAL \o_z[6]~output_o\ : std_logic;
SIGNAL \o_z[7]~output_o\ : std_logic;
SIGNAL \o_z[8]~output_o\ : std_logic;
SIGNAL \o_z[9]~output_o\ : std_logic;
SIGNAL \o_z[10]~output_o\ : std_logic;
SIGNAL \o_z[11]~output_o\ : std_logic;
SIGNAL \o_z[12]~output_o\ : std_logic;
SIGNAL \o_z[13]~output_o\ : std_logic;
SIGNAL \o_z[14]~output_o\ : std_logic;
SIGNAL \o_z[15]~output_o\ : std_logic;
SIGNAL \o_done~output_o\ : std_logic;
SIGNAL \state_LED[0]~output_o\ : std_logic;
SIGNAL \state_LED[1]~output_o\ : std_logic;
SIGNAL \state_LED[2]~output_o\ : std_logic;
SIGNAL \state_LED[3]~output_o\ : std_logic;
SIGNAL \LUT_TEST[0]~output_o\ : std_logic;
SIGNAL \LUT_TEST[1]~output_o\ : std_logic;
SIGNAL \LUT_TEST[2]~output_o\ : std_logic;
SIGNAL \LUT_TEST[3]~output_o\ : std_logic;
SIGNAL \LUT_TEST[4]~output_o\ : std_logic;
SIGNAL \LUT_TEST[5]~output_o\ : std_logic;
SIGNAL \LUT_TEST[6]~output_o\ : std_logic;
SIGNAL \LUT_TEST[7]~output_o\ : std_logic;
SIGNAL \LUT_TEST[8]~output_o\ : std_logic;
SIGNAL \LUT_TEST[9]~output_o\ : std_logic;
SIGNAL \LUT_TEST[10]~output_o\ : std_logic;
SIGNAL \LUT_TEST[11]~output_o\ : std_logic;
SIGNAL \LUT_TEST[12]~output_o\ : std_logic;
SIGNAL \LUT_TEST[13]~output_o\ : std_logic;
SIGNAL \LUT_TEST[14]~output_o\ : std_logic;
SIGNAL \LUT_TEST[15]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_divider_x|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider_x|count[0]~8_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~1\ : std_logic;
SIGNAL \clock_divider_x|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~3\ : std_logic;
SIGNAL \clock_divider_x|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~5\ : std_logic;
SIGNAL \clock_divider_x|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~7\ : std_logic;
SIGNAL \clock_divider_x|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~9\ : std_logic;
SIGNAL \clock_divider_x|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider_x|count~7_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~11\ : std_logic;
SIGNAL \clock_divider_x|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~13\ : std_logic;
SIGNAL \clock_divider_x|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider_x|count~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~15\ : std_logic;
SIGNAL \clock_divider_x|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider_x|count~5_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~17\ : std_logic;
SIGNAL \clock_divider_x|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~19\ : std_logic;
SIGNAL \clock_divider_x|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider_x|count~4_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~21\ : std_logic;
SIGNAL \clock_divider_x|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~8_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~23\ : std_logic;
SIGNAL \clock_divider_x|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~25\ : std_logic;
SIGNAL \clock_divider_x|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider_x|count~3_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~27\ : std_logic;
SIGNAL \clock_divider_x|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~29\ : std_logic;
SIGNAL \clock_divider_x|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~9_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~31\ : std_logic;
SIGNAL \clock_divider_x|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~33\ : std_logic;
SIGNAL \clock_divider_x|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider_x|count~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~35\ : std_logic;
SIGNAL \clock_divider_x|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider_x|count~1_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~37\ : std_logic;
SIGNAL \clock_divider_x|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~39\ : std_logic;
SIGNAL \clock_divider_x|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~41\ : std_logic;
SIGNAL \clock_divider_x|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider_x|count~0_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~43\ : std_logic;
SIGNAL \clock_divider_x|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~45\ : std_logic;
SIGNAL \clock_divider_x|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~47\ : std_logic;
SIGNAL \clock_divider_x|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~49\ : std_logic;
SIGNAL \clock_divider_x|Add0~50_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~51\ : std_logic;
SIGNAL \clock_divider_x|Add0~52_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~53\ : std_logic;
SIGNAL \clock_divider_x|Add0~54_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~55\ : std_logic;
SIGNAL \clock_divider_x|Add0~56_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~57\ : std_logic;
SIGNAL \clock_divider_x|Add0~58_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~59\ : std_logic;
SIGNAL \clock_divider_x|Add0~60_combout\ : std_logic;
SIGNAL \clock_divider_x|Add0~61\ : std_logic;
SIGNAL \clock_divider_x|Add0~62_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_x|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_x|tmp~0_combout\ : std_logic;
SIGNAL \clock_divider_x|tmp~feeder_combout\ : std_logic;
SIGNAL \clock_divider_x|tmp~q\ : std_logic;
SIGNAL \clock_divider_x|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \state.K5~feeder_combout\ : std_logic;
SIGNAL \state.K5~q\ : std_logic;
SIGNAL \WideOr15~1_combout\ : std_logic;
SIGNAL \i_enable~q\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[0]~4_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \state.done~q\ : std_logic;
SIGNAL \i_enable_cordic~input_o\ : std_logic;
SIGNAL \Debounce_INST|OP1~feeder_combout\ : std_logic;
SIGNAL \Debounce_INST|OP1~q\ : std_logic;
SIGNAL \Debounce_INST|OP2~feeder_combout\ : std_logic;
SIGNAL \Debounce_INST|OP2~q\ : std_logic;
SIGNAL \Debounce_INST|OP3~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \i_reset~q\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[0]~5\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[1]~6_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[1]~7\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[2]~8_combout\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[2]~9\ : std_logic;
SIGNAL \iteration_counter_INST|cnt[3]~10_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.K1~q\ : std_logic;
SIGNAL \state.K2~0_combout\ : std_logic;
SIGNAL \state.K2~q\ : std_logic;
SIGNAL \state.K3~feeder_combout\ : std_logic;
SIGNAL \state.K3~q\ : std_logic;
SIGNAL \state.K4~q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \i_SI_control[0]~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \i_mem_enable_X~feeder_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \i_mem_enable_X~q\ : std_logic;
SIGNAL \i_mem_enable_X~clkctrl_outclk\ : std_logic;
SIGNAL \LUT_COUNTER[0]~32_combout\ : std_logic;
SIGNAL \LUT_COUNTER[0]~33\ : std_logic;
SIGNAL \LUT_COUNTER[1]~34_combout\ : std_logic;
SIGNAL \LUT_COUNTER[1]~35\ : std_logic;
SIGNAL \LUT_COUNTER[2]~36_combout\ : std_logic;
SIGNAL \LUT_COUNTER[2]~37\ : std_logic;
SIGNAL \LUT_COUNTER[3]~38_combout\ : std_logic;
SIGNAL \LUT_COUNTER[3]~39\ : std_logic;
SIGNAL \LUT_COUNTER[4]~40_combout\ : std_logic;
SIGNAL \LUT_COUNTER[4]~41\ : std_logic;
SIGNAL \LUT_COUNTER[5]~42_combout\ : std_logic;
SIGNAL \LUT_COUNTER[5]~43\ : std_logic;
SIGNAL \LUT_COUNTER[6]~44_combout\ : std_logic;
SIGNAL \LUT_COUNTER[6]~45\ : std_logic;
SIGNAL \LUT_COUNTER[7]~46_combout\ : std_logic;
SIGNAL \LUT_COUNTER[7]~47\ : std_logic;
SIGNAL \LUT_COUNTER[8]~48_combout\ : std_logic;
SIGNAL \LUT_COUNTER[8]~49\ : std_logic;
SIGNAL \LUT_COUNTER[9]~50_combout\ : std_logic;
SIGNAL \LUT_COUNTER[9]~51\ : std_logic;
SIGNAL \LUT_COUNTER[10]~52_combout\ : std_logic;
SIGNAL \LUT_COUNTER[10]~53\ : std_logic;
SIGNAL \LUT_COUNTER[11]~54_combout\ : std_logic;
SIGNAL \LUT_COUNTER[11]~55\ : std_logic;
SIGNAL \LUT_COUNTER[12]~56_combout\ : std_logic;
SIGNAL \LUT_COUNTER[12]~57\ : std_logic;
SIGNAL \LUT_COUNTER[13]~58_combout\ : std_logic;
SIGNAL \LUT_COUNTER[13]~59\ : std_logic;
SIGNAL \LUT_COUNTER[14]~60_combout\ : std_logic;
SIGNAL \LUT_COUNTER[14]~61\ : std_logic;
SIGNAL \LUT_COUNTER[15]~62_combout\ : std_logic;
SIGNAL \LUT_COUNTER[15]~63\ : std_logic;
SIGNAL \LUT_COUNTER[16]~64_combout\ : std_logic;
SIGNAL \LUT_COUNTER[16]~65\ : std_logic;
SIGNAL \LUT_COUNTER[17]~66_combout\ : std_logic;
SIGNAL \LUT_COUNTER[17]~67\ : std_logic;
SIGNAL \LUT_COUNTER[18]~68_combout\ : std_logic;
SIGNAL \LUT_COUNTER[18]~69\ : std_logic;
SIGNAL \LUT_COUNTER[19]~70_combout\ : std_logic;
SIGNAL \LUT_COUNTER[19]~71\ : std_logic;
SIGNAL \LUT_COUNTER[20]~72_combout\ : std_logic;
SIGNAL \LUT_COUNTER[20]~73\ : std_logic;
SIGNAL \LUT_COUNTER[21]~74_combout\ : std_logic;
SIGNAL \LUT_COUNTER[21]~75\ : std_logic;
SIGNAL \LUT_COUNTER[22]~76_combout\ : std_logic;
SIGNAL \LUT_COUNTER[22]~77\ : std_logic;
SIGNAL \LUT_COUNTER[23]~78_combout\ : std_logic;
SIGNAL \LUT_COUNTER[23]~79\ : std_logic;
SIGNAL \LUT_COUNTER[24]~80_combout\ : std_logic;
SIGNAL \LUT_COUNTER[24]~81\ : std_logic;
SIGNAL \LUT_COUNTER[25]~82_combout\ : std_logic;
SIGNAL \LUT_COUNTER[25]~83\ : std_logic;
SIGNAL \LUT_COUNTER[26]~84_combout\ : std_logic;
SIGNAL \LUT_COUNTER[26]~85\ : std_logic;
SIGNAL \LUT_COUNTER[27]~86_combout\ : std_logic;
SIGNAL \LUT_COUNTER[27]~87\ : std_logic;
SIGNAL \LUT_COUNTER[28]~88_combout\ : std_logic;
SIGNAL \LUT_COUNTER[28]~89\ : std_logic;
SIGNAL \LUT_COUNTER[29]~90_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LUT_COUNTER[29]~91\ : std_logic;
SIGNAL \LUT_COUNTER[30]~92_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LUT_COUNTER[30]~93\ : std_logic;
SIGNAL \LUT_COUNTER[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LUT_X_INST|o_LUT_X[12]~0_combout\ : std_logic;
SIGNAL \i_mem_enable_Y~feeder_combout\ : std_logic;
SIGNAL \i_mem_enable_Y~q\ : std_logic;
SIGNAL \i_mem_enable_Y~clkctrl_outclk\ : std_logic;
SIGNAL \LUT_Y_INST|o_LUT_Y[12]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \LUT_X_INST|o_LUT_X[11]~feeder_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~25_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~13_combout\ : std_logic;
SIGNAL \i_mem_enable~feeder_combout\ : std_logic;
SIGNAL \i_mem_enable~q\ : std_logic;
SIGNAL \i_mem_enable~clkctrl_outclk\ : std_logic;
SIGNAL \LUT_16_INST|rom~8_combout\ : std_logic;
SIGNAL \i_SI[6]~3_combout\ : std_logic;
SIGNAL \i_SI[6]~4_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~7_combout\ : std_logic;
SIGNAL \i_SI[1]~1_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~33_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~34_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~6_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~18_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~5_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~2_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~32_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~31_combout\ : std_logic;
SIGNAL \i_SI[3]~2_combout\ : std_logic;
SIGNAL \i_SI[1]~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~4_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~3_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~1_cout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[1]~0_combout\ : std_logic;
SIGNAL \i_adder_b[0]~17\ : std_logic;
SIGNAL \i_adder_b[1]~18_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[0]~1\ : std_logic;
SIGNAL \Adder_INST|o_adder[1]~2_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \Selector93~2_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~2_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~3\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[2]~1_combout\ : std_logic;
SIGNAL \i_adder_b[1]~19\ : std_logic;
SIGNAL \i_adder_b[2]~20_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[1]~3\ : std_logic;
SIGNAL \Adder_INST|o_adder[2]~4_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~8_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~0_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \i_SI[2]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~3_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~5\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~6_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[3]~2_combout\ : std_logic;
SIGNAL \i_adder_b[2]~21\ : std_logic;
SIGNAL \i_adder_b[3]~22_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[2]~5\ : std_logic;
SIGNAL \Adder_INST|o_adder[3]~6_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \i_SI[3]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~4_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~7\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~8_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[4]~3_combout\ : std_logic;
SIGNAL \i_adder_b[3]~23\ : std_logic;
SIGNAL \i_adder_b[4]~24_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[3]~7\ : std_logic;
SIGNAL \Adder_INST|o_adder[4]~8_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~10_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~9_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~11_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~9\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[5]~4_combout\ : std_logic;
SIGNAL \i_adder_b[4]~25\ : std_logic;
SIGNAL \i_adder_b[5]~26_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[4]~9\ : std_logic;
SIGNAL \Adder_INST|o_adder[5]~10_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~19_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~11\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[6]~5_combout\ : std_logic;
SIGNAL \i_adder_b[5]~27\ : std_logic;
SIGNAL \i_adder_b[6]~28_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[5]~11\ : std_logic;
SIGNAL \Adder_INST|o_adder[6]~12_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~21_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~23_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~13\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~14_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[7]~6_combout\ : std_logic;
SIGNAL \i_adder_b[6]~29\ : std_logic;
SIGNAL \i_adder_b[7]~30_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[6]~13\ : std_logic;
SIGNAL \Adder_INST|o_adder[7]~14_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~22_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~28_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~15\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~16_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[8]~7_combout\ : std_logic;
SIGNAL \i_adder_b[7]~31\ : std_logic;
SIGNAL \i_adder_b[8]~32_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[7]~15\ : std_logic;
SIGNAL \Adder_INST|o_adder[8]~16_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~6_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~7_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Selector86~3_combout\ : std_logic;
SIGNAL \i_SI[8]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~9_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~17\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~18_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[9]~8_combout\ : std_logic;
SIGNAL \i_adder_b[8]~33\ : std_logic;
SIGNAL \i_adder_b[9]~34_combout\ : std_logic;
SIGNAL \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[8]~17\ : std_logic;
SIGNAL \Adder_INST|o_adder[9]~18_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~5_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~15_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~10_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~19\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~20_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[10]~9_combout\ : std_logic;
SIGNAL \i_adder_b[9]~35\ : std_logic;
SIGNAL \i_adder_b[10]~36_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[9]~19\ : std_logic;
SIGNAL \Adder_INST|o_adder[10]~20_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~14_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~26_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~24_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~27_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~11_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~21\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~22_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[11]~10_combout\ : std_logic;
SIGNAL \i_adder_b[10]~37\ : std_logic;
SIGNAL \i_adder_b[11]~38_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[10]~21\ : std_logic;
SIGNAL \Adder_INST|o_adder[11]~22_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~29_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~30_combout\ : std_logic;
SIGNAL \Selector83~2_combout\ : std_logic;
SIGNAL \i_SI[11]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~12_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~23\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~24_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[12]~11_combout\ : std_logic;
SIGNAL \i_adder_b[11]~39\ : std_logic;
SIGNAL \i_adder_b[12]~40_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[11]~23\ : std_logic;
SIGNAL \Adder_INST|o_adder[12]~24_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \i_bitshift[12]~feeder_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~3_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \i_SI[12]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|rom~13_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~25\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~26_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[13]~12_combout\ : std_logic;
SIGNAL \i_adder_b[12]~41\ : std_logic;
SIGNAL \i_adder_b[13]~42_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[12]~25\ : std_logic;
SIGNAL \Adder_INST|o_adder[13]~26_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \i_bitshift[13]~feeder_combout\ : std_logic;
SIGNAL \bit_shift_INST|ShiftRight0~12_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \i_SI[13]~feeder_combout\ : std_logic;
SIGNAL \LUT_16_INST|o_LUT[13]~feeder_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~27\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~28_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[14]~13_combout\ : std_logic;
SIGNAL \i_adder_b[13]~43\ : std_logic;
SIGNAL \i_adder_b[14]~44_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[13]~27\ : std_logic;
SIGNAL \Adder_INST|o_adder[14]~28_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~29\ : std_logic;
SIGNAL \sign_inverter_INST|Add0~30_combout\ : std_logic;
SIGNAL \sign_inverter_INST|o_SI[15]~14_combout\ : std_logic;
SIGNAL \i_adder_b[14]~45\ : std_logic;
SIGNAL \i_adder_b[15]~46_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[14]~29\ : std_logic;
SIGNAL \Adder_INST|o_adder[15]~30_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_adder_b[0]~16_combout\ : std_logic;
SIGNAL \Adder_INST|o_adder[0]~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \var_done~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state_LED[0]~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_LED[1]~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_LED[2]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_LED[3]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[0]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[1]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[2]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[3]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[4]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[5]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[6]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[8]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[8]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[9]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[9]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[10]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[10]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[12]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[12]~reg0_q\ : std_logic;
SIGNAL \LUT_TEST[13]~reg0feeder_combout\ : std_logic;
SIGNAL \LUT_TEST[13]~reg0_q\ : std_logic;
SIGNAL i_adder_a : std_logic_vector(15 DOWNTO 0);
SIGNAL \LUT_Y_INST|o_LUT_Y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL i_adder_b : std_logic_vector(15 DOWNTO 0);
SIGNAL i_SI : std_logic_vector(15 DOWNTO 0);
SIGNAL r_xn : std_logic_vector(15 DOWNTO 0);
SIGNAL \iteration_counter_INST|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL r_zd : std_logic_vector(15 DOWNTO 0);
SIGNAL LUT_COUNTER : std_logic_vector(31 DOWNTO 0);
SIGNAL r_yn : std_logic_vector(15 DOWNTO 0);
SIGNAL r_zn : std_logic_vector(15 DOWNTO 0);
SIGNAL i_SI_control : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_divider_x|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL i_bitshift : std_logic_vector(15 DOWNTO 0);
SIGNAL \LUT_16_INST|o_LUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LUT_X_INST|o_LUT_X\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state.K1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_x <= i_x;
ww_i_y <= i_y;
o_z <= ww_o_z;
ww_i_enable_cordic <= i_enable_cordic;
o_done <= ww_o_done;
ww_clk_in <= clk_in;
state_LED <= ww_state_LED;
LUT_TEST <= ww_LUT_TEST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\clock_divider_x|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_divider_x|tmp~q\);

\i_mem_enable_X~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_mem_enable_X~q\);

\i_mem_enable~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_mem_enable~q\);

\i_mem_enable_Y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_mem_enable_Y~q\);
\ALT_INV_state.K1~q\ <= NOT \state.K1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N9
\o_z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(0),
	devoe => ww_devoe,
	o => \o_z[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\o_z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(1),
	devoe => ww_devoe,
	o => \o_z[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\o_z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(2),
	devoe => ww_devoe,
	o => \o_z[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\o_z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(3),
	devoe => ww_devoe,
	o => \o_z[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\o_z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(4),
	devoe => ww_devoe,
	o => \o_z[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\o_z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(5),
	devoe => ww_devoe,
	o => \o_z[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\o_z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(6),
	devoe => ww_devoe,
	o => \o_z[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\o_z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(7),
	devoe => ww_devoe,
	o => \o_z[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\o_z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(8),
	devoe => ww_devoe,
	o => \o_z[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\o_z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(9),
	devoe => ww_devoe,
	o => \o_z[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\o_z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(10),
	devoe => ww_devoe,
	o => \o_z[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\o_z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(11),
	devoe => ww_devoe,
	o => \o_z[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(12),
	devoe => ww_devoe,
	o => \o_z[12]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\o_z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(13),
	devoe => ww_devoe,
	o => \o_z[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(14),
	devoe => ww_devoe,
	o => \o_z[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\o_z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_zd(15),
	devoe => ww_devoe,
	o => \o_z[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\o_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \var_done~q\,
	devoe => ww_devoe,
	o => \o_done~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\state_LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\state_LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\state_LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\state_LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_LED[3]~reg0_q\,
	devoe => ww_devoe,
	o => \state_LED[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\LUT_TEST[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\LUT_TEST[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LUT_TEST[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\LUT_TEST[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\LUT_TEST[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\LUT_TEST[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\LUT_TEST[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\LUT_TEST[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[7]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\LUT_TEST[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[8]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\LUT_TEST[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[9]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\LUT_TEST[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[10]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LUT_TEST[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\LUT_TEST[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[12]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\LUT_TEST[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LUT_TEST[13]~reg0_q\,
	devoe => ww_devoe,
	o => \LUT_TEST[13]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\LUT_TEST[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[14]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\LUT_TEST[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LUT_TEST[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G4
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X73_Y60_N0
\clock_divider_x|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~0_combout\ = \clock_divider_x|count\(0) $ (GND)
-- \clock_divider_x|Add0~1\ = CARRY(!\clock_divider_x|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(0),
	datad => VCC,
	combout => \clock_divider_x|Add0~0_combout\,
	cout => \clock_divider_x|Add0~1\);

-- Location: LCCOMB_X74_Y60_N30
\clock_divider_x|count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count[0]~8_combout\ = !\clock_divider_x|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_x|Add0~0_combout\,
	combout => \clock_divider_x|count[0]~8_combout\);

-- Location: FF_X73_Y60_N15
\clock_divider_x|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clock_divider_x|count[0]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(0));

-- Location: LCCOMB_X73_Y60_N2
\clock_divider_x|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~2_combout\ = (\clock_divider_x|count\(1) & (!\clock_divider_x|Add0~1\)) # (!\clock_divider_x|count\(1) & ((\clock_divider_x|Add0~1\) # (GND)))
-- \clock_divider_x|Add0~3\ = CARRY((!\clock_divider_x|Add0~1\) # (!\clock_divider_x|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(1),
	datad => VCC,
	cin => \clock_divider_x|Add0~1\,
	combout => \clock_divider_x|Add0~2_combout\,
	cout => \clock_divider_x|Add0~3\);

-- Location: FF_X73_Y60_N3
\clock_divider_x|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(1));

-- Location: LCCOMB_X73_Y60_N4
\clock_divider_x|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~4_combout\ = (\clock_divider_x|count\(2) & (\clock_divider_x|Add0~3\ $ (GND))) # (!\clock_divider_x|count\(2) & (!\clock_divider_x|Add0~3\ & VCC))
-- \clock_divider_x|Add0~5\ = CARRY((\clock_divider_x|count\(2) & !\clock_divider_x|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(2),
	datad => VCC,
	cin => \clock_divider_x|Add0~3\,
	combout => \clock_divider_x|Add0~4_combout\,
	cout => \clock_divider_x|Add0~5\);

-- Location: FF_X73_Y60_N5
\clock_divider_x|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(2));

-- Location: LCCOMB_X73_Y60_N6
\clock_divider_x|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~6_combout\ = (\clock_divider_x|count\(3) & (!\clock_divider_x|Add0~5\)) # (!\clock_divider_x|count\(3) & ((\clock_divider_x|Add0~5\) # (GND)))
-- \clock_divider_x|Add0~7\ = CARRY((!\clock_divider_x|Add0~5\) # (!\clock_divider_x|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(3),
	datad => VCC,
	cin => \clock_divider_x|Add0~5\,
	combout => \clock_divider_x|Add0~6_combout\,
	cout => \clock_divider_x|Add0~7\);

-- Location: FF_X73_Y60_N7
\clock_divider_x|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(3));

-- Location: LCCOMB_X73_Y60_N8
\clock_divider_x|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~8_combout\ = (\clock_divider_x|count\(4) & (\clock_divider_x|Add0~7\ $ (GND))) # (!\clock_divider_x|count\(4) & (!\clock_divider_x|Add0~7\ & VCC))
-- \clock_divider_x|Add0~9\ = CARRY((\clock_divider_x|count\(4) & !\clock_divider_x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(4),
	datad => VCC,
	cin => \clock_divider_x|Add0~7\,
	combout => \clock_divider_x|Add0~8_combout\,
	cout => \clock_divider_x|Add0~9\);

-- Location: FF_X73_Y60_N9
\clock_divider_x|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(4));

-- Location: LCCOMB_X73_Y60_N10
\clock_divider_x|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~10_combout\ = (\clock_divider_x|count\(5) & (!\clock_divider_x|Add0~9\)) # (!\clock_divider_x|count\(5) & ((\clock_divider_x|Add0~9\) # (GND)))
-- \clock_divider_x|Add0~11\ = CARRY((!\clock_divider_x|Add0~9\) # (!\clock_divider_x|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(5),
	datad => VCC,
	cin => \clock_divider_x|Add0~9\,
	combout => \clock_divider_x|Add0~10_combout\,
	cout => \clock_divider_x|Add0~11\);

-- Location: LCCOMB_X72_Y60_N2
\clock_divider_x|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~7_combout\ = (\clock_divider_x|Add0~10_combout\ & ((!\clock_divider_x|Equal0~9_combout\) # (!\clock_divider_x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~4_combout\,
	datac => \clock_divider_x|Add0~10_combout\,
	datad => \clock_divider_x|Equal0~9_combout\,
	combout => \clock_divider_x|count~7_combout\);

-- Location: FF_X72_Y60_N3
\clock_divider_x|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(5));

-- Location: LCCOMB_X73_Y60_N12
\clock_divider_x|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~12_combout\ = (\clock_divider_x|count\(6) & (\clock_divider_x|Add0~11\ $ (GND))) # (!\clock_divider_x|count\(6) & (!\clock_divider_x|Add0~11\ & VCC))
-- \clock_divider_x|Add0~13\ = CARRY((\clock_divider_x|count\(6) & !\clock_divider_x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(6),
	datad => VCC,
	cin => \clock_divider_x|Add0~11\,
	combout => \clock_divider_x|Add0~12_combout\,
	cout => \clock_divider_x|Add0~13\);

-- Location: FF_X73_Y60_N13
\clock_divider_x|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(6));

-- Location: LCCOMB_X73_Y60_N14
\clock_divider_x|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~14_combout\ = (\clock_divider_x|count\(7) & (!\clock_divider_x|Add0~13\)) # (!\clock_divider_x|count\(7) & ((\clock_divider_x|Add0~13\) # (GND)))
-- \clock_divider_x|Add0~15\ = CARRY((!\clock_divider_x|Add0~13\) # (!\clock_divider_x|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(7),
	datad => VCC,
	cin => \clock_divider_x|Add0~13\,
	combout => \clock_divider_x|Add0~14_combout\,
	cout => \clock_divider_x|Add0~15\);

-- Location: LCCOMB_X72_Y60_N10
\clock_divider_x|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~6_combout\ = (\clock_divider_x|Add0~14_combout\ & ((!\clock_divider_x|Equal0~9_combout\) # (!\clock_divider_x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~4_combout\,
	datac => \clock_divider_x|Add0~14_combout\,
	datad => \clock_divider_x|Equal0~9_combout\,
	combout => \clock_divider_x|count~6_combout\);

-- Location: FF_X72_Y60_N11
\clock_divider_x|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(7));

-- Location: LCCOMB_X73_Y60_N16
\clock_divider_x|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~16_combout\ = (\clock_divider_x|count\(8) & (\clock_divider_x|Add0~15\ $ (GND))) # (!\clock_divider_x|count\(8) & (!\clock_divider_x|Add0~15\ & VCC))
-- \clock_divider_x|Add0~17\ = CARRY((\clock_divider_x|count\(8) & !\clock_divider_x|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(8),
	datad => VCC,
	cin => \clock_divider_x|Add0~15\,
	combout => \clock_divider_x|Add0~16_combout\,
	cout => \clock_divider_x|Add0~17\);

-- Location: LCCOMB_X72_Y60_N16
\clock_divider_x|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~5_combout\ = (\clock_divider_x|Add0~16_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~16_combout\,
	combout => \clock_divider_x|count~5_combout\);

-- Location: FF_X72_Y60_N17
\clock_divider_x|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(8));

-- Location: LCCOMB_X73_Y60_N18
\clock_divider_x|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~18_combout\ = (\clock_divider_x|count\(9) & (!\clock_divider_x|Add0~17\)) # (!\clock_divider_x|count\(9) & ((\clock_divider_x|Add0~17\) # (GND)))
-- \clock_divider_x|Add0~19\ = CARRY((!\clock_divider_x|Add0~17\) # (!\clock_divider_x|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(9),
	datad => VCC,
	cin => \clock_divider_x|Add0~17\,
	combout => \clock_divider_x|Add0~18_combout\,
	cout => \clock_divider_x|Add0~19\);

-- Location: FF_X73_Y60_N19
\clock_divider_x|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(9));

-- Location: LCCOMB_X73_Y60_N20
\clock_divider_x|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~20_combout\ = (\clock_divider_x|count\(10) & (\clock_divider_x|Add0~19\ $ (GND))) # (!\clock_divider_x|count\(10) & (!\clock_divider_x|Add0~19\ & VCC))
-- \clock_divider_x|Add0~21\ = CARRY((\clock_divider_x|count\(10) & !\clock_divider_x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(10),
	datad => VCC,
	cin => \clock_divider_x|Add0~19\,
	combout => \clock_divider_x|Add0~20_combout\,
	cout => \clock_divider_x|Add0~21\);

-- Location: LCCOMB_X72_Y60_N14
\clock_divider_x|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~4_combout\ = (\clock_divider_x|Add0~20_combout\ & ((!\clock_divider_x|Equal0~9_combout\) # (!\clock_divider_x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~4_combout\,
	datac => \clock_divider_x|Add0~20_combout\,
	datad => \clock_divider_x|Equal0~9_combout\,
	combout => \clock_divider_x|count~4_combout\);

-- Location: FF_X72_Y60_N15
\clock_divider_x|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(10));

-- Location: LCCOMB_X73_Y60_N22
\clock_divider_x|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~22_combout\ = (\clock_divider_x|count\(11) & (!\clock_divider_x|Add0~21\)) # (!\clock_divider_x|count\(11) & ((\clock_divider_x|Add0~21\) # (GND)))
-- \clock_divider_x|Add0~23\ = CARRY((!\clock_divider_x|Add0~21\) # (!\clock_divider_x|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(11),
	datad => VCC,
	cin => \clock_divider_x|Add0~21\,
	combout => \clock_divider_x|Add0~22_combout\,
	cout => \clock_divider_x|Add0~23\);

-- Location: FF_X73_Y60_N23
\clock_divider_x|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(11));

-- Location: LCCOMB_X72_Y60_N26
\clock_divider_x|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~6_combout\ = (!\clock_divider_x|count\(11) & (\clock_divider_x|count\(8) & (\clock_divider_x|count\(10) & !\clock_divider_x|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(11),
	datab => \clock_divider_x|count\(8),
	datac => \clock_divider_x|count\(10),
	datad => \clock_divider_x|count\(9),
	combout => \clock_divider_x|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y60_N8
\clock_divider_x|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~7_combout\ = (!\clock_divider_x|count\(6) & (\clock_divider_x|count\(5) & (!\clock_divider_x|count\(4) & \clock_divider_x|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(6),
	datab => \clock_divider_x|count\(5),
	datac => \clock_divider_x|count\(4),
	datad => \clock_divider_x|count\(7),
	combout => \clock_divider_x|Equal0~7_combout\);

-- Location: LCCOMB_X74_Y60_N24
\clock_divider_x|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~8_combout\ = (!\clock_divider_x|count\(1) & (!\clock_divider_x|count\(3) & (!\clock_divider_x|count\(2) & \clock_divider_x|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(1),
	datab => \clock_divider_x|count\(3),
	datac => \clock_divider_x|count\(2),
	datad => \clock_divider_x|count\(0),
	combout => \clock_divider_x|Equal0~8_combout\);

-- Location: LCCOMB_X73_Y60_N24
\clock_divider_x|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~24_combout\ = (\clock_divider_x|count\(12) & (\clock_divider_x|Add0~23\ $ (GND))) # (!\clock_divider_x|count\(12) & (!\clock_divider_x|Add0~23\ & VCC))
-- \clock_divider_x|Add0~25\ = CARRY((\clock_divider_x|count\(12) & !\clock_divider_x|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(12),
	datad => VCC,
	cin => \clock_divider_x|Add0~23\,
	combout => \clock_divider_x|Add0~24_combout\,
	cout => \clock_divider_x|Add0~25\);

-- Location: FF_X73_Y60_N25
\clock_divider_x|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(12));

-- Location: LCCOMB_X73_Y60_N26
\clock_divider_x|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~26_combout\ = (\clock_divider_x|count\(13) & (!\clock_divider_x|Add0~25\)) # (!\clock_divider_x|count\(13) & ((\clock_divider_x|Add0~25\) # (GND)))
-- \clock_divider_x|Add0~27\ = CARRY((!\clock_divider_x|Add0~25\) # (!\clock_divider_x|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(13),
	datad => VCC,
	cin => \clock_divider_x|Add0~25\,
	combout => \clock_divider_x|Add0~26_combout\,
	cout => \clock_divider_x|Add0~27\);

-- Location: LCCOMB_X72_Y60_N0
\clock_divider_x|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~3_combout\ = (\clock_divider_x|Add0~26_combout\ & ((!\clock_divider_x|Equal0~9_combout\) # (!\clock_divider_x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~4_combout\,
	datac => \clock_divider_x|Add0~26_combout\,
	datad => \clock_divider_x|Equal0~9_combout\,
	combout => \clock_divider_x|count~3_combout\);

-- Location: FF_X72_Y60_N1
\clock_divider_x|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(13));

-- Location: LCCOMB_X73_Y60_N28
\clock_divider_x|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~28_combout\ = (\clock_divider_x|count\(14) & (\clock_divider_x|Add0~27\ $ (GND))) # (!\clock_divider_x|count\(14) & (!\clock_divider_x|Add0~27\ & VCC))
-- \clock_divider_x|Add0~29\ = CARRY((\clock_divider_x|count\(14) & !\clock_divider_x|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(14),
	datad => VCC,
	cin => \clock_divider_x|Add0~27\,
	combout => \clock_divider_x|Add0~28_combout\,
	cout => \clock_divider_x|Add0~29\);

-- Location: FF_X73_Y60_N29
\clock_divider_x|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(14));

-- Location: LCCOMB_X73_Y60_N30
\clock_divider_x|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~30_combout\ = (\clock_divider_x|count\(15) & (!\clock_divider_x|Add0~29\)) # (!\clock_divider_x|count\(15) & ((\clock_divider_x|Add0~29\) # (GND)))
-- \clock_divider_x|Add0~31\ = CARRY((!\clock_divider_x|Add0~29\) # (!\clock_divider_x|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(15),
	datad => VCC,
	cin => \clock_divider_x|Add0~29\,
	combout => \clock_divider_x|Add0~30_combout\,
	cout => \clock_divider_x|Add0~31\);

-- Location: FF_X73_Y60_N31
\clock_divider_x|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(15));

-- Location: LCCOMB_X70_Y60_N8
\clock_divider_x|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~5_combout\ = (!\clock_divider_x|count\(15) & (!\clock_divider_x|count\(14) & (!\clock_divider_x|count\(12) & \clock_divider_x|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(15),
	datab => \clock_divider_x|count\(14),
	datac => \clock_divider_x|count\(12),
	datad => \clock_divider_x|count\(13),
	combout => \clock_divider_x|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y60_N18
\clock_divider_x|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~9_combout\ = (\clock_divider_x|Equal0~6_combout\ & (\clock_divider_x|Equal0~7_combout\ & (\clock_divider_x|Equal0~8_combout\ & \clock_divider_x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~6_combout\,
	datab => \clock_divider_x|Equal0~7_combout\,
	datac => \clock_divider_x|Equal0~8_combout\,
	datad => \clock_divider_x|Equal0~5_combout\,
	combout => \clock_divider_x|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y59_N0
\clock_divider_x|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~32_combout\ = (\clock_divider_x|count\(16) & (\clock_divider_x|Add0~31\ $ (GND))) # (!\clock_divider_x|count\(16) & (!\clock_divider_x|Add0~31\ & VCC))
-- \clock_divider_x|Add0~33\ = CARRY((\clock_divider_x|count\(16) & !\clock_divider_x|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(16),
	datad => VCC,
	cin => \clock_divider_x|Add0~31\,
	combout => \clock_divider_x|Add0~32_combout\,
	cout => \clock_divider_x|Add0~33\);

-- Location: FF_X73_Y59_N1
\clock_divider_x|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(16));

-- Location: LCCOMB_X73_Y59_N2
\clock_divider_x|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~34_combout\ = (\clock_divider_x|count\(17) & (!\clock_divider_x|Add0~33\)) # (!\clock_divider_x|count\(17) & ((\clock_divider_x|Add0~33\) # (GND)))
-- \clock_divider_x|Add0~35\ = CARRY((!\clock_divider_x|Add0~33\) # (!\clock_divider_x|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(17),
	datad => VCC,
	cin => \clock_divider_x|Add0~33\,
	combout => \clock_divider_x|Add0~34_combout\,
	cout => \clock_divider_x|Add0~35\);

-- Location: LCCOMB_X72_Y60_N24
\clock_divider_x|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~2_combout\ = (\clock_divider_x|Add0~34_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~34_combout\,
	combout => \clock_divider_x|count~2_combout\);

-- Location: FF_X72_Y60_N25
\clock_divider_x|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(17));

-- Location: LCCOMB_X73_Y59_N4
\clock_divider_x|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~36_combout\ = (\clock_divider_x|count\(18) & (\clock_divider_x|Add0~35\ $ (GND))) # (!\clock_divider_x|count\(18) & (!\clock_divider_x|Add0~35\ & VCC))
-- \clock_divider_x|Add0~37\ = CARRY((\clock_divider_x|count\(18) & !\clock_divider_x|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(18),
	datad => VCC,
	cin => \clock_divider_x|Add0~35\,
	combout => \clock_divider_x|Add0~36_combout\,
	cout => \clock_divider_x|Add0~37\);

-- Location: LCCOMB_X72_Y60_N12
\clock_divider_x|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~1_combout\ = (\clock_divider_x|Add0~36_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~36_combout\,
	combout => \clock_divider_x|count~1_combout\);

-- Location: FF_X72_Y60_N13
\clock_divider_x|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(18));

-- Location: LCCOMB_X73_Y59_N6
\clock_divider_x|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~38_combout\ = (\clock_divider_x|count\(19) & (!\clock_divider_x|Add0~37\)) # (!\clock_divider_x|count\(19) & ((\clock_divider_x|Add0~37\) # (GND)))
-- \clock_divider_x|Add0~39\ = CARRY((!\clock_divider_x|Add0~37\) # (!\clock_divider_x|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(19),
	datad => VCC,
	cin => \clock_divider_x|Add0~37\,
	combout => \clock_divider_x|Add0~38_combout\,
	cout => \clock_divider_x|Add0~39\);

-- Location: FF_X73_Y59_N7
\clock_divider_x|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(19));

-- Location: LCCOMB_X72_Y60_N6
\clock_divider_x|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~3_combout\ = (\clock_divider_x|count\(18) & (\clock_divider_x|count\(17) & (!\clock_divider_x|count\(19) & !\clock_divider_x|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(18),
	datab => \clock_divider_x|count\(17),
	datac => \clock_divider_x|count\(19),
	datad => \clock_divider_x|count\(16),
	combout => \clock_divider_x|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y59_N8
\clock_divider_x|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~40_combout\ = (\clock_divider_x|count\(20) & (\clock_divider_x|Add0~39\ $ (GND))) # (!\clock_divider_x|count\(20) & (!\clock_divider_x|Add0~39\ & VCC))
-- \clock_divider_x|Add0~41\ = CARRY((\clock_divider_x|count\(20) & !\clock_divider_x|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(20),
	datad => VCC,
	cin => \clock_divider_x|Add0~39\,
	combout => \clock_divider_x|Add0~40_combout\,
	cout => \clock_divider_x|Add0~41\);

-- Location: FF_X73_Y59_N9
\clock_divider_x|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(20));

-- Location: LCCOMB_X73_Y59_N10
\clock_divider_x|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~42_combout\ = (\clock_divider_x|count\(21) & (!\clock_divider_x|Add0~41\)) # (!\clock_divider_x|count\(21) & ((\clock_divider_x|Add0~41\) # (GND)))
-- \clock_divider_x|Add0~43\ = CARRY((!\clock_divider_x|Add0~41\) # (!\clock_divider_x|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(21),
	datad => VCC,
	cin => \clock_divider_x|Add0~41\,
	combout => \clock_divider_x|Add0~42_combout\,
	cout => \clock_divider_x|Add0~43\);

-- Location: LCCOMB_X72_Y60_N28
\clock_divider_x|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|count~0_combout\ = (\clock_divider_x|Add0~42_combout\ & ((!\clock_divider_x|Equal0~4_combout\) # (!\clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|Equal0~9_combout\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Add0~42_combout\,
	combout => \clock_divider_x|count~0_combout\);

-- Location: FF_X72_Y60_N29
\clock_divider_x|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(21));

-- Location: LCCOMB_X73_Y59_N12
\clock_divider_x|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~44_combout\ = (\clock_divider_x|count\(22) & (\clock_divider_x|Add0~43\ $ (GND))) # (!\clock_divider_x|count\(22) & (!\clock_divider_x|Add0~43\ & VCC))
-- \clock_divider_x|Add0~45\ = CARRY((\clock_divider_x|count\(22) & !\clock_divider_x|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(22),
	datad => VCC,
	cin => \clock_divider_x|Add0~43\,
	combout => \clock_divider_x|Add0~44_combout\,
	cout => \clock_divider_x|Add0~45\);

-- Location: FF_X73_Y59_N13
\clock_divider_x|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(22));

-- Location: LCCOMB_X73_Y59_N14
\clock_divider_x|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~46_combout\ = (\clock_divider_x|count\(23) & (!\clock_divider_x|Add0~45\)) # (!\clock_divider_x|count\(23) & ((\clock_divider_x|Add0~45\) # (GND)))
-- \clock_divider_x|Add0~47\ = CARRY((!\clock_divider_x|Add0~45\) # (!\clock_divider_x|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(23),
	datad => VCC,
	cin => \clock_divider_x|Add0~45\,
	combout => \clock_divider_x|Add0~46_combout\,
	cout => \clock_divider_x|Add0~47\);

-- Location: FF_X73_Y59_N15
\clock_divider_x|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(23));

-- Location: LCCOMB_X73_Y59_N16
\clock_divider_x|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~48_combout\ = (\clock_divider_x|count\(24) & (\clock_divider_x|Add0~47\ $ (GND))) # (!\clock_divider_x|count\(24) & (!\clock_divider_x|Add0~47\ & VCC))
-- \clock_divider_x|Add0~49\ = CARRY((\clock_divider_x|count\(24) & !\clock_divider_x|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(24),
	datad => VCC,
	cin => \clock_divider_x|Add0~47\,
	combout => \clock_divider_x|Add0~48_combout\,
	cout => \clock_divider_x|Add0~49\);

-- Location: FF_X73_Y59_N17
\clock_divider_x|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(24));

-- Location: LCCOMB_X73_Y59_N18
\clock_divider_x|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~50_combout\ = (\clock_divider_x|count\(25) & (!\clock_divider_x|Add0~49\)) # (!\clock_divider_x|count\(25) & ((\clock_divider_x|Add0~49\) # (GND)))
-- \clock_divider_x|Add0~51\ = CARRY((!\clock_divider_x|Add0~49\) # (!\clock_divider_x|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(25),
	datad => VCC,
	cin => \clock_divider_x|Add0~49\,
	combout => \clock_divider_x|Add0~50_combout\,
	cout => \clock_divider_x|Add0~51\);

-- Location: FF_X73_Y59_N19
\clock_divider_x|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(25));

-- Location: LCCOMB_X73_Y59_N20
\clock_divider_x|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~52_combout\ = (\clock_divider_x|count\(26) & (\clock_divider_x|Add0~51\ $ (GND))) # (!\clock_divider_x|count\(26) & (!\clock_divider_x|Add0~51\ & VCC))
-- \clock_divider_x|Add0~53\ = CARRY((\clock_divider_x|count\(26) & !\clock_divider_x|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(26),
	datad => VCC,
	cin => \clock_divider_x|Add0~51\,
	combout => \clock_divider_x|Add0~52_combout\,
	cout => \clock_divider_x|Add0~53\);

-- Location: FF_X73_Y59_N21
\clock_divider_x|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(26));

-- Location: LCCOMB_X73_Y59_N22
\clock_divider_x|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~54_combout\ = (\clock_divider_x|count\(27) & (!\clock_divider_x|Add0~53\)) # (!\clock_divider_x|count\(27) & ((\clock_divider_x|Add0~53\) # (GND)))
-- \clock_divider_x|Add0~55\ = CARRY((!\clock_divider_x|Add0~53\) # (!\clock_divider_x|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(27),
	datad => VCC,
	cin => \clock_divider_x|Add0~53\,
	combout => \clock_divider_x|Add0~54_combout\,
	cout => \clock_divider_x|Add0~55\);

-- Location: FF_X73_Y59_N23
\clock_divider_x|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(27));

-- Location: LCCOMB_X73_Y59_N24
\clock_divider_x|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~56_combout\ = (\clock_divider_x|count\(28) & (\clock_divider_x|Add0~55\ $ (GND))) # (!\clock_divider_x|count\(28) & (!\clock_divider_x|Add0~55\ & VCC))
-- \clock_divider_x|Add0~57\ = CARRY((\clock_divider_x|count\(28) & !\clock_divider_x|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(28),
	datad => VCC,
	cin => \clock_divider_x|Add0~55\,
	combout => \clock_divider_x|Add0~56_combout\,
	cout => \clock_divider_x|Add0~57\);

-- Location: FF_X73_Y59_N25
\clock_divider_x|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(28));

-- Location: LCCOMB_X73_Y59_N26
\clock_divider_x|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~58_combout\ = (\clock_divider_x|count\(29) & (!\clock_divider_x|Add0~57\)) # (!\clock_divider_x|count\(29) & ((\clock_divider_x|Add0~57\) # (GND)))
-- \clock_divider_x|Add0~59\ = CARRY((!\clock_divider_x|Add0~57\) # (!\clock_divider_x|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(29),
	datad => VCC,
	cin => \clock_divider_x|Add0~57\,
	combout => \clock_divider_x|Add0~58_combout\,
	cout => \clock_divider_x|Add0~59\);

-- Location: FF_X73_Y59_N27
\clock_divider_x|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(29));

-- Location: LCCOMB_X73_Y59_N28
\clock_divider_x|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~60_combout\ = (\clock_divider_x|count\(30) & (\clock_divider_x|Add0~59\ $ (GND))) # (!\clock_divider_x|count\(30) & (!\clock_divider_x|Add0~59\ & VCC))
-- \clock_divider_x|Add0~61\ = CARRY((\clock_divider_x|count\(30) & !\clock_divider_x|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|count\(30),
	datad => VCC,
	cin => \clock_divider_x|Add0~59\,
	combout => \clock_divider_x|Add0~60_combout\,
	cout => \clock_divider_x|Add0~61\);

-- Location: FF_X73_Y59_N29
\clock_divider_x|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(30));

-- Location: LCCOMB_X73_Y59_N30
\clock_divider_x|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Add0~62_combout\ = \clock_divider_x|count\(31) $ (\clock_divider_x|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(31),
	cin => \clock_divider_x|Add0~61\,
	combout => \clock_divider_x|Add0~62_combout\);

-- Location: FF_X73_Y59_N31
\clock_divider_x|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|count\(31));

-- Location: LCCOMB_X72_Y59_N0
\clock_divider_x|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~0_combout\ = (!\clock_divider_x|count\(28) & (!\clock_divider_x|count\(30) & (!\clock_divider_x|count\(31) & !\clock_divider_x|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(28),
	datab => \clock_divider_x|count\(30),
	datac => \clock_divider_x|count\(31),
	datad => \clock_divider_x|count\(29),
	combout => \clock_divider_x|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y60_N22
\clock_divider_x|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~2_combout\ = (\clock_divider_x|count\(21) & (!\clock_divider_x|count\(20) & (!\clock_divider_x|count\(23) & !\clock_divider_x|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(21),
	datab => \clock_divider_x|count\(20),
	datac => \clock_divider_x|count\(23),
	datad => \clock_divider_x|count\(22),
	combout => \clock_divider_x|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y59_N6
\clock_divider_x|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~1_combout\ = (!\clock_divider_x|count\(26) & (!\clock_divider_x|count\(24) & (!\clock_divider_x|count\(27) & !\clock_divider_x|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|count\(26),
	datab => \clock_divider_x|count\(24),
	datac => \clock_divider_x|count\(27),
	datad => \clock_divider_x|count\(25),
	combout => \clock_divider_x|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y60_N4
\clock_divider_x|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|Equal0~4_combout\ = (\clock_divider_x|Equal0~3_combout\ & (\clock_divider_x|Equal0~0_combout\ & (\clock_divider_x|Equal0~2_combout\ & \clock_divider_x|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_x|Equal0~3_combout\,
	datab => \clock_divider_x|Equal0~0_combout\,
	datac => \clock_divider_x|Equal0~2_combout\,
	datad => \clock_divider_x|Equal0~1_combout\,
	combout => \clock_divider_x|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y60_N20
\clock_divider_x|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|tmp~0_combout\ = \clock_divider_x|tmp~q\ $ (((\clock_divider_x|Equal0~4_combout\ & \clock_divider_x|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_x|tmp~q\,
	datac => \clock_divider_x|Equal0~4_combout\,
	datad => \clock_divider_x|Equal0~9_combout\,
	combout => \clock_divider_x|tmp~0_combout\);

-- Location: LCCOMB_X72_Y60_N30
\clock_divider_x|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_divider_x|tmp~feeder_combout\ = \clock_divider_x|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_x|tmp~0_combout\,
	combout => \clock_divider_x|tmp~feeder_combout\);

-- Location: FF_X72_Y60_N31
\clock_divider_x|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_x|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_x|tmp~q\);

-- Location: CLKCTRL_G12
\clock_divider_x|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_divider_x|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_divider_x|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y70_N30
\state.K5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.K5~feeder_combout\ = \state.K4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.K4~q\,
	combout => \state.K5~feeder_combout\);

-- Location: FF_X58_Y70_N31
\state.K5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state.K5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.K5~q\);

-- Location: LCCOMB_X58_Y71_N0
\WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr15~1_combout\ = (\state.K3~q\) # (\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K3~q\,
	datad => \state.K4~q\,
	combout => \WideOr15~1_combout\);

-- Location: FF_X58_Y71_N1
i_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \state.K3~q\,
	sload => VCC,
	ena => \WideOr15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_enable~q\);

-- Location: LCCOMB_X59_Y71_N12
\iteration_counter_INST|cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[0]~4_combout\ = (\iteration_counter_INST|cnt\(0) & (\i_enable~q\ $ (VCC))) # (!\iteration_counter_INST|cnt\(0) & (\i_enable~q\ & VCC))
-- \iteration_counter_INST|cnt[0]~5\ = CARRY((\iteration_counter_INST|cnt\(0) & \i_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \i_enable~q\,
	datad => VCC,
	combout => \iteration_counter_INST|cnt[0]~4_combout\,
	cout => \iteration_counter_INST|cnt[0]~5\);

-- Location: LCCOMB_X58_Y69_N28
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\state.K5~q\ & \Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K5~q\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X58_Y69_N29
\state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.done~q\);

-- Location: IOIBUF_X115_Y40_N8
\i_enable_cordic~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable_cordic,
	o => \i_enable_cordic~input_o\);

-- Location: LCCOMB_X58_Y69_N4
\Debounce_INST|OP1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP1~feeder_combout\ = \i_enable_cordic~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_enable_cordic~input_o\,
	combout => \Debounce_INST|OP1~feeder_combout\);

-- Location: FF_X58_Y69_N5
\Debounce_INST|OP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Debounce_INST|OP1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP1~q\);

-- Location: LCCOMB_X58_Y69_N14
\Debounce_INST|OP2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Debounce_INST|OP2~feeder_combout\ = \Debounce_INST|OP1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debounce_INST|OP1~q\,
	combout => \Debounce_INST|OP2~feeder_combout\);

-- Location: FF_X58_Y69_N15
\Debounce_INST|OP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Debounce_INST|OP2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP2~q\);

-- Location: FF_X58_Y69_N3
\Debounce_INST|OP3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \Debounce_INST|OP2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_INST|OP3~q\);

-- Location: LCCOMB_X58_Y69_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Debounce_INST|OP2~q\ & (\Debounce_INST|OP3~q\ & \Debounce_INST|OP1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_INST|OP2~q\,
	datab => \Debounce_INST|OP3~q\,
	datac => \Debounce_INST|OP1~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X58_Y69_N8
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\state.done~q\) # ((\state.idle~q\ & \Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.done~q\,
	datac => \state.idle~q\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X58_Y69_N9
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X58_Y69_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.idle~q\) # ((\state.done~q\) # ((\state.K1~q\ & \i_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \state.K1~q\,
	datac => \i_reset~q\,
	datad => \state.done~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X58_Y69_N13
i_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_reset~q\);

-- Location: FF_X59_Y71_N13
\iteration_counter_INST|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[0]~4_combout\,
	sclr => \i_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(0));

-- Location: LCCOMB_X59_Y71_N14
\iteration_counter_INST|cnt[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[1]~6_combout\ = (\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt[0]~5\)) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt[0]~5\) # (GND)))
-- \iteration_counter_INST|cnt[1]~7\ = CARRY((!\iteration_counter_INST|cnt[0]~5\) # (!\iteration_counter_INST|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datad => VCC,
	cin => \iteration_counter_INST|cnt[0]~5\,
	combout => \iteration_counter_INST|cnt[1]~6_combout\,
	cout => \iteration_counter_INST|cnt[1]~7\);

-- Location: FF_X59_Y71_N15
\iteration_counter_INST|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[1]~6_combout\,
	sclr => \i_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(1));

-- Location: LCCOMB_X59_Y71_N16
\iteration_counter_INST|cnt[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[2]~8_combout\ = (\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt[1]~7\ $ (GND))) # (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt[1]~7\ & VCC))
-- \iteration_counter_INST|cnt[2]~9\ = CARRY((\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(2),
	datad => VCC,
	cin => \iteration_counter_INST|cnt[1]~7\,
	combout => \iteration_counter_INST|cnt[2]~8_combout\,
	cout => \iteration_counter_INST|cnt[2]~9\);

-- Location: FF_X59_Y71_N17
\iteration_counter_INST|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[2]~8_combout\,
	sclr => \i_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(2));

-- Location: LCCOMB_X59_Y71_N18
\iteration_counter_INST|cnt[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iteration_counter_INST|cnt[3]~10_combout\ = \iteration_counter_INST|cnt[2]~9\ $ (\iteration_counter_INST|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \iteration_counter_INST|cnt\(3),
	cin => \iteration_counter_INST|cnt[2]~9\,
	combout => \iteration_counter_INST|cnt[3]~10_combout\);

-- Location: FF_X59_Y71_N19
\iteration_counter_INST|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \iteration_counter_INST|cnt[3]~10_combout\,
	sclr => \i_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iteration_counter_INST|cnt\(3));

-- Location: LCCOMB_X60_Y71_N20
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(2) & \iteration_counter_INST|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(3),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X58_Y69_N24
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.K5~q\ & (\Selector14~0_combout\ & ((\Selector13~0_combout\) # (!\state.idle~q\)))) # (!\state.K5~q\ & (((\Selector13~0_combout\) # (!\state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datab => \Selector14~0_combout\,
	datac => \state.idle~q\,
	datad => \Selector13~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X58_Y69_N25
\state.K1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.K1~q\);

-- Location: LCCOMB_X58_Y70_N12
\state.K2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.K2~0_combout\ = !\state.K1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	combout => \state.K2~0_combout\);

-- Location: FF_X58_Y70_N13
\state.K2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state.K2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.K2~q\);

-- Location: LCCOMB_X58_Y70_N22
\state.K3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.K3~feeder_combout\ = \state.K2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.K2~q\,
	combout => \state.K3~feeder_combout\);

-- Location: FF_X58_Y70_N23
\state.K3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \state.K3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.K3~q\);

-- Location: FF_X58_Y70_N3
\state.K4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \state.K3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.K4~q\);

-- Location: LCCOMB_X63_Y69_N20
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Adder_INST|o_adder[0]~0_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K5~q\,
	datad => \Adder_INST|o_adder[0]~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X58_Y69_N30
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\state.idle~q\) # (\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datac => \state.K5~q\,
	combout => \WideOr10~0_combout\);

-- Location: FF_X63_Y69_N21
\r_xn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(0));

-- Location: LCCOMB_X59_Y69_N16
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Adder_INST|o_adder[0]~0_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datad => \Adder_INST|o_adder[0]~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X58_Y69_N26
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\state.idle~q\) # (\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datac => \state.K4~q\,
	combout => \WideOr9~0_combout\);

-- Location: FF_X59_Y69_N17
\r_yn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector30~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(0));

-- Location: LCCOMB_X62_Y69_N4
\Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\state.K4~q\ & (r_xn(0))) # (!\state.K4~q\ & ((r_yn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_xn(0),
	datad => r_yn(0),
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X63_Y69_N30
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[0]~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X59_Y71_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & !\iteration_counter_INST|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y69_N18
\Selector62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = (\state.K1~q\ & (\state.idle~q\)) # (!\state.K1~q\ & ((!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datac => \LessThan0~0_combout\,
	datad => \state.K1~q\,
	combout => \Selector62~1_combout\);

-- Location: FF_X63_Y69_N31
\r_zn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(0));

-- Location: LCCOMB_X58_Y70_N28
\WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (\state.K5~q\) # ((\state.K3~q\) # (\state.K4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datac => \state.K3~q\,
	datad => \state.K4~q\,
	combout => \WideOr15~0_combout\);

-- Location: FF_X62_Y69_N5
\i_adder_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector112~0_combout\,
	asdata => r_zn(0),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(0));

-- Location: LCCOMB_X63_Y69_N18
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.K5~q\ & \Adder_INST|o_adder[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K5~q\,
	datac => \Adder_INST|o_adder[15]~30_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X63_Y69_N19
\r_xn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(15));

-- Location: LCCOMB_X60_Y69_N16
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\state.K4~q\ & ((r_xn(15)))) # (!\state.K4~q\ & (r_yn(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => r_xn(15),
	datad => \state.K4~q\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K1~q\,
	datac => \Adder_INST|o_adder[15]~30_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X60_Y69_N7
\r_zn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(15));

-- Location: FF_X60_Y69_N17
\i_adder_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector97~0_combout\,
	asdata => r_zn(15),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(15));

-- Location: LCCOMB_X58_Y72_N24
\i_SI_control[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI_control[0]~0_combout\ = !r_yn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_yn(15),
	combout => \i_SI_control[0]~0_combout\);

-- Location: FF_X58_Y72_N25
\i_SI_control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI_control[0]~0_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI_control(0));

-- Location: LCCOMB_X58_Y70_N16
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\state.K3~q\ & !\state.K2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K3~q\,
	datad => \state.K2~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X60_Y70_N30
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\state.K2~q\ & (r_yn(15))) # (!\state.K2~q\ & ((r_xn(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(15),
	datac => \state.K2~q\,
	datad => r_xn(15),
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X58_Y70_N6
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\state.K2~q\) # (!\state.K1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \state.K2~q\,
	combout => \WideOr12~0_combout\);

-- Location: FF_X59_Y70_N1
\i_bitshift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector63~0_combout\,
	sload => VCC,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(15));

-- Location: LCCOMB_X60_Y71_N8
\WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\state.K2~q\) # ((\state.K4~q\) # (\state.K3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K2~q\,
	datac => \state.K4~q\,
	datad => \state.K3~q\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X60_Y72_N28
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\WideOr1~0_combout\ & (((i_SI(15) & !\WideOr13~0_combout\)))) # (!\WideOr1~0_combout\ & ((i_bitshift(15)) # ((i_SI(15) & !\WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => i_bitshift(15),
	datac => i_SI(15),
	datad => \WideOr13~0_combout\,
	combout => \Selector79~0_combout\);

-- Location: FF_X60_Y72_N29
\i_SI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector79~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(15));

-- Location: LCCOMB_X63_Y69_N4
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.K5~q\ & \Adder_INST|o_adder[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K5~q\,
	datad => \Adder_INST|o_adder[14]~28_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X63_Y69_N5
\r_xn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(14));

-- Location: LCCOMB_X60_Y69_N0
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.K4~q\ & (r_xn(14))) # (!\state.K4~q\ & ((r_yn(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(14),
	datab => r_yn(14),
	datad => \state.K4~q\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X60_Y69_N10
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[14]~28_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X60_Y69_N11
\r_zn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(14));

-- Location: FF_X60_Y69_N1
\i_adder_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector98~0_combout\,
	asdata => r_zn(14),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(14));

-- Location: LCCOMB_X7_Y50_N20
\i_mem_enable_X~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_mem_enable_X~feeder_combout\ = \state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.idle~q\,
	combout => \i_mem_enable_X~feeder_combout\);

-- Location: LCCOMB_X58_Y69_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.idle~q\) # (!\state.K1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datad => \state.K1~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X7_Y50_N21
i_mem_enable_X : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_mem_enable_X~feeder_combout\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_mem_enable_X~q\);

-- Location: CLKCTRL_G0
\i_mem_enable_X~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_mem_enable_X~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_mem_enable_X~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y68_N0
\LUT_COUNTER[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[0]~32_combout\ = LUT_COUNTER(0) $ (VCC)
-- \LUT_COUNTER[0]~33\ = CARRY(LUT_COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(0),
	datad => VCC,
	combout => \LUT_COUNTER[0]~32_combout\,
	cout => \LUT_COUNTER[0]~33\);

-- Location: LCCOMB_X62_Y68_N2
\LUT_COUNTER[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[1]~34_combout\ = (LUT_COUNTER(1) & (!\LUT_COUNTER[0]~33\)) # (!LUT_COUNTER(1) & ((\LUT_COUNTER[0]~33\) # (GND)))
-- \LUT_COUNTER[1]~35\ = CARRY((!\LUT_COUNTER[0]~33\) # (!LUT_COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(1),
	datad => VCC,
	cin => \LUT_COUNTER[0]~33\,
	combout => \LUT_COUNTER[1]~34_combout\,
	cout => \LUT_COUNTER[1]~35\);

-- Location: FF_X62_Y68_N3
\LUT_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[1]~34_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(1));

-- Location: LCCOMB_X62_Y68_N4
\LUT_COUNTER[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[2]~36_combout\ = (LUT_COUNTER(2) & (\LUT_COUNTER[1]~35\ $ (GND))) # (!LUT_COUNTER(2) & (!\LUT_COUNTER[1]~35\ & VCC))
-- \LUT_COUNTER[2]~37\ = CARRY((LUT_COUNTER(2) & !\LUT_COUNTER[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(2),
	datad => VCC,
	cin => \LUT_COUNTER[1]~35\,
	combout => \LUT_COUNTER[2]~36_combout\,
	cout => \LUT_COUNTER[2]~37\);

-- Location: FF_X62_Y68_N5
\LUT_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[2]~36_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(2));

-- Location: LCCOMB_X62_Y68_N6
\LUT_COUNTER[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[3]~38_combout\ = (LUT_COUNTER(3) & (!\LUT_COUNTER[2]~37\)) # (!LUT_COUNTER(3) & ((\LUT_COUNTER[2]~37\) # (GND)))
-- \LUT_COUNTER[3]~39\ = CARRY((!\LUT_COUNTER[2]~37\) # (!LUT_COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(3),
	datad => VCC,
	cin => \LUT_COUNTER[2]~37\,
	combout => \LUT_COUNTER[3]~38_combout\,
	cout => \LUT_COUNTER[3]~39\);

-- Location: FF_X62_Y68_N7
\LUT_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[3]~38_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(3));

-- Location: LCCOMB_X62_Y68_N8
\LUT_COUNTER[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[4]~40_combout\ = (LUT_COUNTER(4) & (\LUT_COUNTER[3]~39\ $ (GND))) # (!LUT_COUNTER(4) & (!\LUT_COUNTER[3]~39\ & VCC))
-- \LUT_COUNTER[4]~41\ = CARRY((LUT_COUNTER(4) & !\LUT_COUNTER[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(4),
	datad => VCC,
	cin => \LUT_COUNTER[3]~39\,
	combout => \LUT_COUNTER[4]~40_combout\,
	cout => \LUT_COUNTER[4]~41\);

-- Location: FF_X62_Y68_N9
\LUT_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[4]~40_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(4));

-- Location: LCCOMB_X62_Y68_N10
\LUT_COUNTER[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[5]~42_combout\ = (LUT_COUNTER(5) & (!\LUT_COUNTER[4]~41\)) # (!LUT_COUNTER(5) & ((\LUT_COUNTER[4]~41\) # (GND)))
-- \LUT_COUNTER[5]~43\ = CARRY((!\LUT_COUNTER[4]~41\) # (!LUT_COUNTER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(5),
	datad => VCC,
	cin => \LUT_COUNTER[4]~41\,
	combout => \LUT_COUNTER[5]~42_combout\,
	cout => \LUT_COUNTER[5]~43\);

-- Location: FF_X62_Y68_N11
\LUT_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[5]~42_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(5));

-- Location: LCCOMB_X62_Y68_N12
\LUT_COUNTER[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[6]~44_combout\ = (LUT_COUNTER(6) & (\LUT_COUNTER[5]~43\ $ (GND))) # (!LUT_COUNTER(6) & (!\LUT_COUNTER[5]~43\ & VCC))
-- \LUT_COUNTER[6]~45\ = CARRY((LUT_COUNTER(6) & !\LUT_COUNTER[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(6),
	datad => VCC,
	cin => \LUT_COUNTER[5]~43\,
	combout => \LUT_COUNTER[6]~44_combout\,
	cout => \LUT_COUNTER[6]~45\);

-- Location: FF_X62_Y68_N13
\LUT_COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[6]~44_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(6));

-- Location: LCCOMB_X62_Y68_N14
\LUT_COUNTER[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[7]~46_combout\ = (LUT_COUNTER(7) & (!\LUT_COUNTER[6]~45\)) # (!LUT_COUNTER(7) & ((\LUT_COUNTER[6]~45\) # (GND)))
-- \LUT_COUNTER[7]~47\ = CARRY((!\LUT_COUNTER[6]~45\) # (!LUT_COUNTER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(7),
	datad => VCC,
	cin => \LUT_COUNTER[6]~45\,
	combout => \LUT_COUNTER[7]~46_combout\,
	cout => \LUT_COUNTER[7]~47\);

-- Location: FF_X62_Y68_N15
\LUT_COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[7]~46_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(7));

-- Location: LCCOMB_X62_Y68_N16
\LUT_COUNTER[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[8]~48_combout\ = (LUT_COUNTER(8) & (\LUT_COUNTER[7]~47\ $ (GND))) # (!LUT_COUNTER(8) & (!\LUT_COUNTER[7]~47\ & VCC))
-- \LUT_COUNTER[8]~49\ = CARRY((LUT_COUNTER(8) & !\LUT_COUNTER[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(8),
	datad => VCC,
	cin => \LUT_COUNTER[7]~47\,
	combout => \LUT_COUNTER[8]~48_combout\,
	cout => \LUT_COUNTER[8]~49\);

-- Location: FF_X62_Y68_N17
\LUT_COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[8]~48_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(8));

-- Location: LCCOMB_X62_Y68_N18
\LUT_COUNTER[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[9]~50_combout\ = (LUT_COUNTER(9) & (!\LUT_COUNTER[8]~49\)) # (!LUT_COUNTER(9) & ((\LUT_COUNTER[8]~49\) # (GND)))
-- \LUT_COUNTER[9]~51\ = CARRY((!\LUT_COUNTER[8]~49\) # (!LUT_COUNTER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(9),
	datad => VCC,
	cin => \LUT_COUNTER[8]~49\,
	combout => \LUT_COUNTER[9]~50_combout\,
	cout => \LUT_COUNTER[9]~51\);

-- Location: FF_X62_Y68_N19
\LUT_COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[9]~50_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(9));

-- Location: LCCOMB_X62_Y68_N20
\LUT_COUNTER[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[10]~52_combout\ = (LUT_COUNTER(10) & (\LUT_COUNTER[9]~51\ $ (GND))) # (!LUT_COUNTER(10) & (!\LUT_COUNTER[9]~51\ & VCC))
-- \LUT_COUNTER[10]~53\ = CARRY((LUT_COUNTER(10) & !\LUT_COUNTER[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(10),
	datad => VCC,
	cin => \LUT_COUNTER[9]~51\,
	combout => \LUT_COUNTER[10]~52_combout\,
	cout => \LUT_COUNTER[10]~53\);

-- Location: FF_X62_Y68_N21
\LUT_COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[10]~52_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(10));

-- Location: LCCOMB_X62_Y68_N22
\LUT_COUNTER[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[11]~54_combout\ = (LUT_COUNTER(11) & (!\LUT_COUNTER[10]~53\)) # (!LUT_COUNTER(11) & ((\LUT_COUNTER[10]~53\) # (GND)))
-- \LUT_COUNTER[11]~55\ = CARRY((!\LUT_COUNTER[10]~53\) # (!LUT_COUNTER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(11),
	datad => VCC,
	cin => \LUT_COUNTER[10]~53\,
	combout => \LUT_COUNTER[11]~54_combout\,
	cout => \LUT_COUNTER[11]~55\);

-- Location: FF_X62_Y68_N23
\LUT_COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[11]~54_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(11));

-- Location: LCCOMB_X62_Y68_N24
\LUT_COUNTER[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[12]~56_combout\ = (LUT_COUNTER(12) & (\LUT_COUNTER[11]~55\ $ (GND))) # (!LUT_COUNTER(12) & (!\LUT_COUNTER[11]~55\ & VCC))
-- \LUT_COUNTER[12]~57\ = CARRY((LUT_COUNTER(12) & !\LUT_COUNTER[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(12),
	datad => VCC,
	cin => \LUT_COUNTER[11]~55\,
	combout => \LUT_COUNTER[12]~56_combout\,
	cout => \LUT_COUNTER[12]~57\);

-- Location: FF_X62_Y68_N25
\LUT_COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[12]~56_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(12));

-- Location: LCCOMB_X62_Y68_N26
\LUT_COUNTER[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[13]~58_combout\ = (LUT_COUNTER(13) & (!\LUT_COUNTER[12]~57\)) # (!LUT_COUNTER(13) & ((\LUT_COUNTER[12]~57\) # (GND)))
-- \LUT_COUNTER[13]~59\ = CARRY((!\LUT_COUNTER[12]~57\) # (!LUT_COUNTER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(13),
	datad => VCC,
	cin => \LUT_COUNTER[12]~57\,
	combout => \LUT_COUNTER[13]~58_combout\,
	cout => \LUT_COUNTER[13]~59\);

-- Location: FF_X62_Y68_N27
\LUT_COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[13]~58_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(13));

-- Location: LCCOMB_X62_Y68_N28
\LUT_COUNTER[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[14]~60_combout\ = (LUT_COUNTER(14) & (\LUT_COUNTER[13]~59\ $ (GND))) # (!LUT_COUNTER(14) & (!\LUT_COUNTER[13]~59\ & VCC))
-- \LUT_COUNTER[14]~61\ = CARRY((LUT_COUNTER(14) & !\LUT_COUNTER[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(14),
	datad => VCC,
	cin => \LUT_COUNTER[13]~59\,
	combout => \LUT_COUNTER[14]~60_combout\,
	cout => \LUT_COUNTER[14]~61\);

-- Location: FF_X62_Y68_N29
\LUT_COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[14]~60_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(14));

-- Location: LCCOMB_X62_Y68_N30
\LUT_COUNTER[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[15]~62_combout\ = (LUT_COUNTER(15) & (!\LUT_COUNTER[14]~61\)) # (!LUT_COUNTER(15) & ((\LUT_COUNTER[14]~61\) # (GND)))
-- \LUT_COUNTER[15]~63\ = CARRY((!\LUT_COUNTER[14]~61\) # (!LUT_COUNTER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(15),
	datad => VCC,
	cin => \LUT_COUNTER[14]~61\,
	combout => \LUT_COUNTER[15]~62_combout\,
	cout => \LUT_COUNTER[15]~63\);

-- Location: FF_X62_Y68_N31
\LUT_COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[15]~62_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(15));

-- Location: LCCOMB_X62_Y67_N0
\LUT_COUNTER[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[16]~64_combout\ = (LUT_COUNTER(16) & (\LUT_COUNTER[15]~63\ $ (GND))) # (!LUT_COUNTER(16) & (!\LUT_COUNTER[15]~63\ & VCC))
-- \LUT_COUNTER[16]~65\ = CARRY((LUT_COUNTER(16) & !\LUT_COUNTER[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(16),
	datad => VCC,
	cin => \LUT_COUNTER[15]~63\,
	combout => \LUT_COUNTER[16]~64_combout\,
	cout => \LUT_COUNTER[16]~65\);

-- Location: FF_X62_Y67_N1
\LUT_COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[16]~64_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(16));

-- Location: LCCOMB_X62_Y67_N2
\LUT_COUNTER[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[17]~66_combout\ = (LUT_COUNTER(17) & (!\LUT_COUNTER[16]~65\)) # (!LUT_COUNTER(17) & ((\LUT_COUNTER[16]~65\) # (GND)))
-- \LUT_COUNTER[17]~67\ = CARRY((!\LUT_COUNTER[16]~65\) # (!LUT_COUNTER(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(17),
	datad => VCC,
	cin => \LUT_COUNTER[16]~65\,
	combout => \LUT_COUNTER[17]~66_combout\,
	cout => \LUT_COUNTER[17]~67\);

-- Location: FF_X62_Y67_N3
\LUT_COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[17]~66_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(17));

-- Location: LCCOMB_X62_Y67_N4
\LUT_COUNTER[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[18]~68_combout\ = (LUT_COUNTER(18) & (\LUT_COUNTER[17]~67\ $ (GND))) # (!LUT_COUNTER(18) & (!\LUT_COUNTER[17]~67\ & VCC))
-- \LUT_COUNTER[18]~69\ = CARRY((LUT_COUNTER(18) & !\LUT_COUNTER[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(18),
	datad => VCC,
	cin => \LUT_COUNTER[17]~67\,
	combout => \LUT_COUNTER[18]~68_combout\,
	cout => \LUT_COUNTER[18]~69\);

-- Location: FF_X62_Y67_N5
\LUT_COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[18]~68_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(18));

-- Location: LCCOMB_X62_Y67_N6
\LUT_COUNTER[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[19]~70_combout\ = (LUT_COUNTER(19) & (!\LUT_COUNTER[18]~69\)) # (!LUT_COUNTER(19) & ((\LUT_COUNTER[18]~69\) # (GND)))
-- \LUT_COUNTER[19]~71\ = CARRY((!\LUT_COUNTER[18]~69\) # (!LUT_COUNTER(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(19),
	datad => VCC,
	cin => \LUT_COUNTER[18]~69\,
	combout => \LUT_COUNTER[19]~70_combout\,
	cout => \LUT_COUNTER[19]~71\);

-- Location: FF_X62_Y67_N7
\LUT_COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[19]~70_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(19));

-- Location: LCCOMB_X62_Y67_N8
\LUT_COUNTER[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[20]~72_combout\ = (LUT_COUNTER(20) & (\LUT_COUNTER[19]~71\ $ (GND))) # (!LUT_COUNTER(20) & (!\LUT_COUNTER[19]~71\ & VCC))
-- \LUT_COUNTER[20]~73\ = CARRY((LUT_COUNTER(20) & !\LUT_COUNTER[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(20),
	datad => VCC,
	cin => \LUT_COUNTER[19]~71\,
	combout => \LUT_COUNTER[20]~72_combout\,
	cout => \LUT_COUNTER[20]~73\);

-- Location: FF_X62_Y67_N9
\LUT_COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[20]~72_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(20));

-- Location: LCCOMB_X62_Y67_N10
\LUT_COUNTER[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[21]~74_combout\ = (LUT_COUNTER(21) & (!\LUT_COUNTER[20]~73\)) # (!LUT_COUNTER(21) & ((\LUT_COUNTER[20]~73\) # (GND)))
-- \LUT_COUNTER[21]~75\ = CARRY((!\LUT_COUNTER[20]~73\) # (!LUT_COUNTER(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(21),
	datad => VCC,
	cin => \LUT_COUNTER[20]~73\,
	combout => \LUT_COUNTER[21]~74_combout\,
	cout => \LUT_COUNTER[21]~75\);

-- Location: FF_X62_Y67_N11
\LUT_COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[21]~74_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(21));

-- Location: LCCOMB_X62_Y67_N12
\LUT_COUNTER[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[22]~76_combout\ = (LUT_COUNTER(22) & (\LUT_COUNTER[21]~75\ $ (GND))) # (!LUT_COUNTER(22) & (!\LUT_COUNTER[21]~75\ & VCC))
-- \LUT_COUNTER[22]~77\ = CARRY((LUT_COUNTER(22) & !\LUT_COUNTER[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(22),
	datad => VCC,
	cin => \LUT_COUNTER[21]~75\,
	combout => \LUT_COUNTER[22]~76_combout\,
	cout => \LUT_COUNTER[22]~77\);

-- Location: FF_X62_Y67_N13
\LUT_COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[22]~76_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(22));

-- Location: LCCOMB_X62_Y67_N14
\LUT_COUNTER[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[23]~78_combout\ = (LUT_COUNTER(23) & (!\LUT_COUNTER[22]~77\)) # (!LUT_COUNTER(23) & ((\LUT_COUNTER[22]~77\) # (GND)))
-- \LUT_COUNTER[23]~79\ = CARRY((!\LUT_COUNTER[22]~77\) # (!LUT_COUNTER(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(23),
	datad => VCC,
	cin => \LUT_COUNTER[22]~77\,
	combout => \LUT_COUNTER[23]~78_combout\,
	cout => \LUT_COUNTER[23]~79\);

-- Location: FF_X62_Y67_N15
\LUT_COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[23]~78_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(23));

-- Location: LCCOMB_X62_Y67_N16
\LUT_COUNTER[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[24]~80_combout\ = (LUT_COUNTER(24) & (\LUT_COUNTER[23]~79\ $ (GND))) # (!LUT_COUNTER(24) & (!\LUT_COUNTER[23]~79\ & VCC))
-- \LUT_COUNTER[24]~81\ = CARRY((LUT_COUNTER(24) & !\LUT_COUNTER[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(24),
	datad => VCC,
	cin => \LUT_COUNTER[23]~79\,
	combout => \LUT_COUNTER[24]~80_combout\,
	cout => \LUT_COUNTER[24]~81\);

-- Location: FF_X62_Y67_N17
\LUT_COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[24]~80_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(24));

-- Location: LCCOMB_X62_Y67_N18
\LUT_COUNTER[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[25]~82_combout\ = (LUT_COUNTER(25) & (!\LUT_COUNTER[24]~81\)) # (!LUT_COUNTER(25) & ((\LUT_COUNTER[24]~81\) # (GND)))
-- \LUT_COUNTER[25]~83\ = CARRY((!\LUT_COUNTER[24]~81\) # (!LUT_COUNTER(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(25),
	datad => VCC,
	cin => \LUT_COUNTER[24]~81\,
	combout => \LUT_COUNTER[25]~82_combout\,
	cout => \LUT_COUNTER[25]~83\);

-- Location: FF_X62_Y67_N19
\LUT_COUNTER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[25]~82_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(25));

-- Location: LCCOMB_X62_Y67_N20
\LUT_COUNTER[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[26]~84_combout\ = (LUT_COUNTER(26) & (\LUT_COUNTER[25]~83\ $ (GND))) # (!LUT_COUNTER(26) & (!\LUT_COUNTER[25]~83\ & VCC))
-- \LUT_COUNTER[26]~85\ = CARRY((LUT_COUNTER(26) & !\LUT_COUNTER[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(26),
	datad => VCC,
	cin => \LUT_COUNTER[25]~83\,
	combout => \LUT_COUNTER[26]~84_combout\,
	cout => \LUT_COUNTER[26]~85\);

-- Location: FF_X62_Y67_N21
\LUT_COUNTER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[26]~84_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(26));

-- Location: LCCOMB_X62_Y67_N22
\LUT_COUNTER[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[27]~86_combout\ = (LUT_COUNTER(27) & (!\LUT_COUNTER[26]~85\)) # (!LUT_COUNTER(27) & ((\LUT_COUNTER[26]~85\) # (GND)))
-- \LUT_COUNTER[27]~87\ = CARRY((!\LUT_COUNTER[26]~85\) # (!LUT_COUNTER(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(27),
	datad => VCC,
	cin => \LUT_COUNTER[26]~85\,
	combout => \LUT_COUNTER[27]~86_combout\,
	cout => \LUT_COUNTER[27]~87\);

-- Location: FF_X62_Y67_N23
\LUT_COUNTER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[27]~86_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(27));

-- Location: LCCOMB_X62_Y67_N24
\LUT_COUNTER[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[28]~88_combout\ = (LUT_COUNTER(28) & (\LUT_COUNTER[27]~87\ $ (GND))) # (!LUT_COUNTER(28) & (!\LUT_COUNTER[27]~87\ & VCC))
-- \LUT_COUNTER[28]~89\ = CARRY((LUT_COUNTER(28) & !\LUT_COUNTER[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(28),
	datad => VCC,
	cin => \LUT_COUNTER[27]~87\,
	combout => \LUT_COUNTER[28]~88_combout\,
	cout => \LUT_COUNTER[28]~89\);

-- Location: FF_X62_Y67_N25
\LUT_COUNTER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[28]~88_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(28));

-- Location: LCCOMB_X62_Y67_N26
\LUT_COUNTER[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[29]~90_combout\ = (LUT_COUNTER(29) & (!\LUT_COUNTER[28]~89\)) # (!LUT_COUNTER(29) & ((\LUT_COUNTER[28]~89\) # (GND)))
-- \LUT_COUNTER[29]~91\ = CARRY((!\LUT_COUNTER[28]~89\) # (!LUT_COUNTER(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(29),
	datad => VCC,
	cin => \LUT_COUNTER[28]~89\,
	combout => \LUT_COUNTER[29]~90_combout\,
	cout => \LUT_COUNTER[29]~91\);

-- Location: FF_X62_Y67_N27
\LUT_COUNTER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[29]~90_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(29));

-- Location: LCCOMB_X61_Y67_N30
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (LUT_COUNTER(27)) # ((LUT_COUNTER(25)) # ((LUT_COUNTER(26)) # (LUT_COUNTER(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(27),
	datab => LUT_COUNTER(25),
	datac => LUT_COUNTER(26),
	datad => LUT_COUNTER(24),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X62_Y67_N28
\LUT_COUNTER[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[30]~92_combout\ = (LUT_COUNTER(30) & (\LUT_COUNTER[29]~91\ $ (GND))) # (!LUT_COUNTER(30) & (!\LUT_COUNTER[29]~91\ & VCC))
-- \LUT_COUNTER[30]~93\ = CARRY((LUT_COUNTER(30) & !\LUT_COUNTER[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_COUNTER(30),
	datad => VCC,
	cin => \LUT_COUNTER[29]~91\,
	combout => \LUT_COUNTER[30]~92_combout\,
	cout => \LUT_COUNTER[30]~93\);

-- Location: FF_X62_Y67_N29
\LUT_COUNTER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[30]~92_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(30));

-- Location: LCCOMB_X61_Y67_N12
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (LUT_COUNTER(29)) # ((LUT_COUNTER(28)) # ((\LessThan1~6_combout\) # (LUT_COUNTER(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(29),
	datab => LUT_COUNTER(28),
	datac => \LessThan1~6_combout\,
	datad => LUT_COUNTER(30),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X61_Y67_N0
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (LUT_COUNTER(23)) # ((LUT_COUNTER(21)) # ((LUT_COUNTER(20)) # (LUT_COUNTER(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(23),
	datab => LUT_COUNTER(21),
	datac => LUT_COUNTER(20),
	datad => LUT_COUNTER(22),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X62_Y67_N30
\LUT_COUNTER[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_COUNTER[31]~94_combout\ = LUT_COUNTER(31) $ (\LUT_COUNTER[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(31),
	cin => \LUT_COUNTER[30]~93\,
	combout => \LUT_COUNTER[31]~94_combout\);

-- Location: FF_X62_Y67_N31
\LUT_COUNTER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[31]~94_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(31));

-- Location: LCCOMB_X61_Y68_N30
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (LUT_COUNTER(10)) # ((LUT_COUNTER(11)) # ((LUT_COUNTER(8)) # (LUT_COUNTER(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(10),
	datab => LUT_COUNTER(11),
	datac => LUT_COUNTER(8),
	datad => LUT_COUNTER(9),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X61_Y67_N28
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (LUT_COUNTER(18)) # ((LUT_COUNTER(19)) # ((LUT_COUNTER(16)) # (LUT_COUNTER(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(18),
	datab => LUT_COUNTER(19),
	datac => LUT_COUNTER(16),
	datad => LUT_COUNTER(17),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X61_Y68_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (LUT_COUNTER(6)) # ((LUT_COUNTER(7)) # ((LUT_COUNTER(4)) # (LUT_COUNTER(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(6),
	datab => LUT_COUNTER(7),
	datac => LUT_COUNTER(4),
	datad => LUT_COUNTER(5),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X61_Y68_N20
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (LUT_COUNTER(15)) # ((LUT_COUNTER(14)) # ((LUT_COUNTER(13)) # (LUT_COUNTER(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_COUNTER(15),
	datab => LUT_COUNTER(14),
	datac => LUT_COUNTER(13),
	datad => LUT_COUNTER(12),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y67_N10
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\) # ((\LessThan1~3_combout\) # ((\LessThan1~0_combout\) # (\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X61_Y67_N22
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!LUT_COUNTER(31) & ((\LessThan1~7_combout\) # ((\LessThan1~5_combout\) # (\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => \LessThan1~5_combout\,
	datac => LUT_COUNTER(31),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~8_combout\);

-- Location: FF_X62_Y68_N1
\LUT_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_COUNTER[0]~32_combout\,
	sclr => \LessThan1~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_COUNTER(0));

-- Location: LCCOMB_X61_Y68_N10
\LUT_X_INST|o_LUT_X[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_X_INST|o_LUT_X[12]~0_combout\ = !LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_X_INST|o_LUT_X[12]~0_combout\);

-- Location: FF_X61_Y68_N11
\LUT_X_INST|o_LUT_X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_X~clkctrl_outclk\,
	d => \LUT_X_INST|o_LUT_X[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_X_INST|o_LUT_X\(12));

-- Location: LCCOMB_X7_Y50_N4
\i_mem_enable_Y~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_mem_enable_Y~feeder_combout\ = \state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.idle~q\,
	combout => \i_mem_enable_Y~feeder_combout\);

-- Location: FF_X7_Y50_N5
i_mem_enable_Y : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_mem_enable_Y~feeder_combout\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_mem_enable_Y~q\);

-- Location: CLKCTRL_G3
\i_mem_enable_Y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_mem_enable_Y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_mem_enable_Y~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y72_N12
\LUT_Y_INST|o_LUT_Y[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_Y_INST|o_LUT_Y[12]~0_combout\ = !LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => LUT_COUNTER(0),
	combout => \LUT_Y_INST|o_LUT_Y[12]~0_combout\);

-- Location: FF_X62_Y72_N13
\LUT_Y_INST|o_LUT_Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_Y~clkctrl_outclk\,
	d => \LUT_Y_INST|o_LUT_Y[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_Y_INST|o_LUT_Y\(12));

-- Location: LCCOMB_X61_Y72_N0
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.K4~q\ & ((\Adder_INST|o_adder[12]~24_combout\))) # (!\state.K4~q\ & (\LUT_Y_INST|o_LUT_Y\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \LUT_Y_INST|o_LUT_Y\(12),
	datad => \Adder_INST|o_adder[12]~24_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X61_Y72_N1
\r_yn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(12));

-- Location: LCCOMB_X60_Y69_N2
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\state.K4~q\ & (r_xn(12))) # (!\state.K4~q\ & ((r_yn(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(12),
	datab => r_yn(12),
	datad => \state.K4~q\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X60_Y69_N30
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[12]~24_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X60_Y69_N31
\r_zn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(12));

-- Location: FF_X60_Y69_N3
\i_adder_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector100~0_combout\,
	asdata => r_zn(12),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(12));

-- Location: LCCOMB_X61_Y68_N24
\LUT_X_INST|o_LUT_X[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_X_INST|o_LUT_X[11]~feeder_combout\ = LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_COUNTER(0),
	combout => \LUT_X_INST|o_LUT_X[11]~feeder_combout\);

-- Location: FF_X61_Y68_N25
\LUT_X_INST|o_LUT_X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_X~clkctrl_outclk\,
	d => \LUT_X_INST|o_LUT_X[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_X_INST|o_LUT_X\(11));

-- Location: LCCOMB_X60_Y70_N14
\bit_shift_INST|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~25_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (i_bitshift(13))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(13),
	datab => i_bitshift(11),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~25_combout\);

-- Location: LCCOMB_X60_Y72_N30
\bit_shift_INST|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~13_combout\ = (\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(1) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(1) & ((\bit_shift_INST|ShiftRight0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => i_bitshift(15),
	datac => \bit_shift_INST|ShiftRight0~12_combout\,
	datad => \iteration_counter_INST|cnt\(2),
	combout => \bit_shift_INST|ShiftRight0~13_combout\);

-- Location: LCCOMB_X56_Y72_N0
\i_mem_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_mem_enable~feeder_combout\ = \state.K3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.K3~q\,
	combout => \i_mem_enable~feeder_combout\);

-- Location: FF_X56_Y72_N1
i_mem_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_mem_enable~feeder_combout\,
	ena => \WideOr15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_mem_enable~q\);

-- Location: CLKCTRL_G11
\i_mem_enable~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_mem_enable~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_mem_enable~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y71_N2
\LUT_16_INST|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~8_combout\ = (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(0)) # (\iteration_counter_INST|cnt\(1) $ (\iteration_counter_INST|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~8_combout\);

-- Location: FF_X58_Y71_N3
\LUT_16_INST|o_LUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(7));

-- Location: LCCOMB_X58_Y71_N10
\i_SI[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[6]~3_combout\ = (\state.K4~q\) # ((\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \state.K4~q\,
	combout => \i_SI[6]~3_combout\);

-- Location: LCCOMB_X58_Y71_N16
\i_SI[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[6]~4_combout\ = (\iteration_counter_INST|cnt\(3)) # (\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(3),
	datad => \state.K4~q\,
	combout => \i_SI[6]~4_combout\);

-- Location: LCCOMB_X58_Y71_N20
\LUT_16_INST|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~7_combout\ = (\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(1) $ (\iteration_counter_INST|cnt\(2))))) # (!\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(1) & 
-- (\iteration_counter_INST|cnt\(2) $ (\iteration_counter_INST|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~7_combout\);

-- Location: FF_X58_Y71_N21
\LUT_16_INST|o_LUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(6));

-- Location: LCCOMB_X60_Y71_N6
\i_SI[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[1]~1_combout\ = (!\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \i_SI[1]~1_combout\);

-- Location: LCCOMB_X60_Y71_N12
\bit_shift_INST|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~33_combout\ = (\iteration_counter_INST|cnt\(0) & (((i_bitshift(15))))) # (!\iteration_counter_INST|cnt\(0) & ((\i_SI[1]~1_combout\ & (i_bitshift(14))) # (!\i_SI[1]~1_combout\ & ((i_bitshift(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => i_bitshift(14),
	datac => \i_SI[1]~1_combout\,
	datad => i_bitshift(15),
	combout => \bit_shift_INST|ShiftRight0~33_combout\);

-- Location: LCCOMB_X62_Y69_N14
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Adder_INST|o_adder[6]~12_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder_INST|o_adder[6]~12_combout\,
	datac => \state.K4~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X62_Y69_N15
\r_yn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(6));

-- Location: LCCOMB_X62_Y69_N30
\Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\state.K4~q\ & ((r_xn(6)))) # (!\state.K4~q\ & (r_yn(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(6),
	datad => r_xn(6),
	combout => \Selector106~0_combout\);

-- Location: LCCOMB_X63_Y69_N10
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[6]~12_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X63_Y69_N11
\r_zn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(6));

-- Location: FF_X62_Y69_N31
\i_adder_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector106~0_combout\,
	asdata => r_zn(6),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(6));

-- Location: LCCOMB_X58_Y71_N30
\bit_shift_INST|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~34_combout\ = (\iteration_counter_INST|cnt\(1) & (((i_bitshift(15))))) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(2) & ((i_bitshift(15)))) # (!\iteration_counter_INST|cnt\(2) & 
-- (\bit_shift_INST|ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST|ShiftRight0~12_combout\,
	datad => i_bitshift(15),
	combout => \bit_shift_INST|ShiftRight0~34_combout\);

-- Location: LCCOMB_X58_Y71_N14
\LUT_16_INST|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~6_combout\ = (\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(2) & ((!\iteration_counter_INST|cnt\(3))))) # (!\iteration_counter_INST|cnt\(1) & (((!\iteration_counter_INST|cnt\(2) & \iteration_counter_INST|cnt\(0))) # 
-- (!\iteration_counter_INST|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~6_combout\);

-- Location: FF_X58_Y71_N15
\LUT_16_INST|o_LUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(5));

-- Location: LCCOMB_X59_Y70_N4
\bit_shift_INST|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~18_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (i_bitshift(8))) # (!\iteration_counter_INST|cnt\(0) & ((i_bitshift(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => i_bitshift(8),
	datac => i_bitshift(7),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~18_combout\);

-- Location: LCCOMB_X58_Y71_N28
\LUT_16_INST|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~5_combout\ = (\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(0) $ (\iteration_counter_INST|cnt\(3))))) # (!\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(3) & 
-- ((\iteration_counter_INST|cnt\(2)) # (!\iteration_counter_INST|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(0),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~5_combout\);

-- Location: FF_X58_Y71_N29
\LUT_16_INST|o_LUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(4));

-- Location: LCCOMB_X60_Y71_N18
\bit_shift_INST|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~2_combout\ = (\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => i_bitshift(15),
	datac => i_bitshift(13),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \bit_shift_INST|ShiftRight0~2_combout\);

-- Location: LCCOMB_X60_Y71_N14
\bit_shift_INST|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~32_combout\ = (\iteration_counter_INST|cnt\(2) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(2) & (((\bit_shift_INST|ShiftRight0~3_combout\) # (\bit_shift_INST|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => i_bitshift(15),
	datac => \bit_shift_INST|ShiftRight0~3_combout\,
	datad => \bit_shift_INST|ShiftRight0~2_combout\,
	combout => \bit_shift_INST|ShiftRight0~32_combout\);

-- Location: LCCOMB_X59_Y70_N10
\bit_shift_INST|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~31_combout\ = (\iteration_counter_INST|cnt\(2) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST|ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(15),
	datab => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST|ShiftRight0~30_combout\,
	combout => \bit_shift_INST|ShiftRight0~31_combout\);

-- Location: LCCOMB_X59_Y70_N0
\i_SI[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[3]~2_combout\ = (\iteration_counter_INST|cnt\(3)) # ((!\iteration_counter_INST|cnt\(2) & \iteration_counter_INST|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \i_SI[3]~2_combout\);

-- Location: LCCOMB_X59_Y69_N10
\i_SI[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[1]~0_combout\ = (\iteration_counter_INST|cnt\(2)) # ((\iteration_counter_INST|cnt\(0) & !\iteration_counter_INST|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(2),
	combout => \i_SI[1]~0_combout\);

-- Location: LCCOMB_X61_Y68_N0
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[1]~2_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datac => \Adder_INST|o_adder[1]~2_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X61_Y68_N1
\r_xn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(1));

-- Location: LCCOMB_X62_Y69_N2
\Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\state.K4~q\ & (r_xn(1))) # (!\state.K4~q\ & ((r_yn(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_xn(1),
	datad => r_yn(1),
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X63_Y69_N0
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[1]~2_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X63_Y69_N1
\r_zn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(1));

-- Location: FF_X62_Y69_N3
\i_adder_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector111~0_combout\,
	asdata => r_zn(1),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(1));

-- Location: LCCOMB_X59_Y69_N30
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state.K2~q\ & (r_yn(0))) # (!\state.K2~q\ & ((r_xn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(0),
	datac => \state.K2~q\,
	datad => r_xn(0),
	combout => \Selector78~0_combout\);

-- Location: FF_X59_Y69_N31
\i_bitshift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(0));

-- Location: LCCOMB_X59_Y69_N12
\Selector94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\i_SI[1]~1_combout\ & (i_bitshift(0) & ((!\i_SI[1]~0_combout\)))) # (!\i_SI[1]~1_combout\ & (((\bit_shift_INST|ShiftRight0~8_combout\) # (\i_SI[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(0),
	datab => \bit_shift_INST|ShiftRight0~8_combout\,
	datac => \i_SI[1]~1_combout\,
	datad => \i_SI[1]~0_combout\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X59_Y69_N28
\Selector94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = (\i_SI[1]~0_combout\ & ((\Selector94~1_combout\ & ((\bit_shift_INST|ShiftRight0~11_combout\))) # (!\Selector94~1_combout\ & (i_bitshift(1))))) # (!\i_SI[1]~0_combout\ & (((\Selector94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[1]~0_combout\,
	datab => i_bitshift(1),
	datac => \bit_shift_INST|ShiftRight0~11_combout\,
	datad => \Selector94~1_combout\,
	combout => \Selector94~2_combout\);

-- Location: LCCOMB_X60_Y71_N16
\bit_shift_INST|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~4_combout\ = (\bit_shift_INST|ShiftRight0~3_combout\) # (\bit_shift_INST|ShiftRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_shift_INST|ShiftRight0~3_combout\,
	datad => \bit_shift_INST|ShiftRight0~2_combout\,
	combout => \bit_shift_INST|ShiftRight0~4_combout\);

-- Location: LCCOMB_X61_Y72_N24
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST|ShiftRight0~4_combout\))) # (!\iteration_counter_INST|cnt\(2) & (\bit_shift_INST|ShiftRight0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \bit_shift_INST|ShiftRight0~7_combout\,
	datac => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST|ShiftRight0~4_combout\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X60_Y72_N4
\Selector94~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~3_combout\ = (\Selector94~0_combout\) # ((!\iteration_counter_INST|cnt\(3) & \Selector94~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \Selector94~2_combout\,
	datad => \Selector94~0_combout\,
	combout => \Selector94~3_combout\);

-- Location: LCCOMB_X59_Y71_N4
\LUT_16_INST|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~1_combout\ = (\iteration_counter_INST|cnt\(0) & (!\iteration_counter_INST|cnt\(3) & ((!\iteration_counter_INST|cnt\(1)) # (!\iteration_counter_INST|cnt\(2))))) # (!\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(1) & 
-- (\iteration_counter_INST|cnt\(2) $ (!\iteration_counter_INST|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~1_combout\);

-- Location: FF_X59_Y71_N5
\LUT_16_INST|o_LUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(0));

-- Location: FF_X60_Y72_N5
\i_SI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector94~3_combout\,
	asdata => \LUT_16_INST|o_LUT\(0),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(0));

-- Location: LCCOMB_X59_Y72_N0
\sign_inverter_INST|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~1_cout\ = CARRY(!i_SI(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(0),
	datad => VCC,
	cout => \sign_inverter_INST|Add0~1_cout\);

-- Location: LCCOMB_X59_Y72_N2
\sign_inverter_INST|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~2_combout\ = (i_SI(1) & ((\sign_inverter_INST|Add0~1_cout\) # (GND))) # (!i_SI(1) & (!\sign_inverter_INST|Add0~1_cout\))
-- \sign_inverter_INST|Add0~3\ = CARRY((i_SI(1)) # (!\sign_inverter_INST|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(1),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~1_cout\,
	combout => \sign_inverter_INST|Add0~2_combout\,
	cout => \sign_inverter_INST|Add0~3\);

-- Location: LCCOMB_X58_Y72_N14
\sign_inverter_INST|o_SI[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[1]~0_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~2_combout\))) # (!i_SI_control(0) & (i_SI(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(1),
	datad => \sign_inverter_INST|Add0~2_combout\,
	combout => \sign_inverter_INST|o_SI[1]~0_combout\);

-- Location: LCCOMB_X57_Y72_N0
\i_adder_b[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[0]~16_combout\ = (\state.K3~q\ & (!\Add0~0_combout\ & VCC)) # (!\state.K3~q\ & (\Add0~0_combout\ $ (GND)))
-- \i_adder_b[0]~17\ = CARRY((!\state.K3~q\ & !\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \i_adder_b[0]~16_combout\,
	cout => \i_adder_b[0]~17\);

-- Location: LCCOMB_X57_Y72_N2
\i_adder_b[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[1]~18_combout\ = (\i_adder_b[0]~17\ & (\state.K3~q\ $ ((\sign_inverter_INST|o_SI[1]~0_combout\)))) # (!\i_adder_b[0]~17\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[1]~0_combout\)) # (GND)))
-- \i_adder_b[1]~19\ = CARRY((\state.K3~q\ $ (\sign_inverter_INST|o_SI[1]~0_combout\)) # (!\i_adder_b[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[1]~0_combout\,
	datad => VCC,
	cin => \i_adder_b[0]~17\,
	combout => \i_adder_b[1]~18_combout\,
	cout => \i_adder_b[1]~19\);

-- Location: FF_X57_Y72_N3
\i_adder_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[1]~18_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(1));

-- Location: LCCOMB_X61_Y69_N0
\Adder_INST|o_adder[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[0]~0_combout\ = (i_adder_a(0) & (i_adder_b(0) $ (VCC))) # (!i_adder_a(0) & (i_adder_b(0) & VCC))
-- \Adder_INST|o_adder[0]~1\ = CARRY((i_adder_a(0) & i_adder_b(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(0),
	datab => i_adder_b(0),
	datad => VCC,
	combout => \Adder_INST|o_adder[0]~0_combout\,
	cout => \Adder_INST|o_adder[0]~1\);

-- Location: LCCOMB_X61_Y69_N2
\Adder_INST|o_adder[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[1]~2_combout\ = (i_adder_a(1) & ((i_adder_b(1) & (\Adder_INST|o_adder[0]~1\ & VCC)) # (!i_adder_b(1) & (!\Adder_INST|o_adder[0]~1\)))) # (!i_adder_a(1) & ((i_adder_b(1) & (!\Adder_INST|o_adder[0]~1\)) # (!i_adder_b(1) & 
-- ((\Adder_INST|o_adder[0]~1\) # (GND)))))
-- \Adder_INST|o_adder[1]~3\ = CARRY((i_adder_a(1) & (!i_adder_b(1) & !\Adder_INST|o_adder[0]~1\)) # (!i_adder_a(1) & ((!\Adder_INST|o_adder[0]~1\) # (!i_adder_b(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(1),
	datab => i_adder_b(1),
	datad => VCC,
	cin => \Adder_INST|o_adder[0]~1\,
	combout => \Adder_INST|o_adder[1]~2_combout\,
	cout => \Adder_INST|o_adder[1]~3\);

-- Location: LCCOMB_X59_Y69_N26
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Adder_INST|o_adder[1]~2_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \Adder_INST|o_adder[1]~2_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X59_Y69_N27
\r_yn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(1));

-- Location: LCCOMB_X59_Y69_N20
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\state.K2~q\ & (r_yn(1))) # (!\state.K2~q\ & ((r_xn(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(1),
	datac => \state.K2~q\,
	datad => r_xn(1),
	combout => \Selector77~0_combout\);

-- Location: FF_X59_Y69_N21
\i_bitshift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(1));

-- Location: LCCOMB_X59_Y69_N24
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\i_SI[1]~0_combout\ & (((!\i_SI[1]~1_combout\)))) # (!\i_SI[1]~0_combout\ & ((\i_SI[1]~1_combout\ & (i_bitshift(1))) # (!\i_SI[1]~1_combout\ & ((\bit_shift_INST|ShiftRight0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[1]~0_combout\,
	datab => i_bitshift(1),
	datac => \i_SI[1]~1_combout\,
	datad => \bit_shift_INST|ShiftRight0~17_combout\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X59_Y69_N14
\Selector93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\Selector93~0_combout\ & (((\bit_shift_INST|ShiftRight0~20_combout\) # (!\i_SI[1]~0_combout\)))) # (!\Selector93~0_combout\ & (i_bitshift(2) & ((\i_SI[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(2),
	datab => \Selector93~0_combout\,
	datac => \bit_shift_INST|ShiftRight0~20_combout\,
	datad => \i_SI[1]~0_combout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X60_Y72_N6
\Selector93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~2_combout\ = (\iteration_counter_INST|cnt\(3) & (\bit_shift_INST|ShiftRight0~16_combout\)) # (!\iteration_counter_INST|cnt\(3) & ((\Selector93~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \bit_shift_INST|ShiftRight0~16_combout\,
	datad => \Selector93~1_combout\,
	combout => \Selector93~2_combout\);

-- Location: LCCOMB_X59_Y71_N30
\LUT_16_INST|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~2_combout\ = (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(2))) # (!\iteration_counter_INST|cnt\(0) & ((!\iteration_counter_INST|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~2_combout\);

-- Location: FF_X59_Y71_N31
\LUT_16_INST|o_LUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(1));

-- Location: FF_X60_Y72_N7
\i_SI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector93~2_combout\,
	asdata => \LUT_16_INST|o_LUT\(1),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(1));

-- Location: LCCOMB_X59_Y72_N4
\sign_inverter_INST|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~4_combout\ = (i_SI(2) & (!\sign_inverter_INST|Add0~3\ & VCC)) # (!i_SI(2) & (\sign_inverter_INST|Add0~3\ $ (GND)))
-- \sign_inverter_INST|Add0~5\ = CARRY((!i_SI(2) & !\sign_inverter_INST|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(2),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~3\,
	combout => \sign_inverter_INST|Add0~4_combout\,
	cout => \sign_inverter_INST|Add0~5\);

-- Location: LCCOMB_X58_Y72_N28
\sign_inverter_INST|o_SI[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[2]~1_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~4_combout\))) # (!i_SI_control(0) & (i_SI(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(2),
	datad => \sign_inverter_INST|Add0~4_combout\,
	combout => \sign_inverter_INST|o_SI[2]~1_combout\);

-- Location: LCCOMB_X57_Y72_N4
\i_adder_b[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[2]~20_combout\ = (\i_adder_b[1]~19\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[2]~1_combout\)))) # (!\i_adder_b[1]~19\ & (\state.K3~q\ $ (\sign_inverter_INST|o_SI[2]~1_combout\ $ (GND))))
-- \i_adder_b[2]~21\ = CARRY((!\i_adder_b[1]~19\ & (\state.K3~q\ $ (!\sign_inverter_INST|o_SI[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[2]~1_combout\,
	datad => VCC,
	cin => \i_adder_b[1]~19\,
	combout => \i_adder_b[2]~20_combout\,
	cout => \i_adder_b[2]~21\);

-- Location: FF_X57_Y72_N5
\i_adder_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[2]~20_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(2));

-- Location: LCCOMB_X63_Y69_N6
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Adder_INST|o_adder[2]~4_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K5~q\,
	datad => \Adder_INST|o_adder[2]~4_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X63_Y69_N7
\r_xn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(2));

-- Location: LCCOMB_X62_Y69_N12
\Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\state.K4~q\ & ((r_xn(2)))) # (!\state.K4~q\ & (r_yn(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(2),
	datad => r_xn(2),
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X63_Y69_N24
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[2]~4_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X63_Y69_N25
\r_zn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(2));

-- Location: FF_X62_Y69_N13
\i_adder_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector110~0_combout\,
	asdata => r_zn(2),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(2));

-- Location: LCCOMB_X61_Y69_N4
\Adder_INST|o_adder[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[2]~4_combout\ = ((i_adder_b(2) $ (i_adder_a(2) $ (!\Adder_INST|o_adder[1]~3\)))) # (GND)
-- \Adder_INST|o_adder[2]~5\ = CARRY((i_adder_b(2) & ((i_adder_a(2)) # (!\Adder_INST|o_adder[1]~3\))) # (!i_adder_b(2) & (i_adder_a(2) & !\Adder_INST|o_adder[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(2),
	datab => i_adder_a(2),
	datad => VCC,
	cin => \Adder_INST|o_adder[1]~3\,
	combout => \Adder_INST|o_adder[2]~4_combout\,
	cout => \Adder_INST|o_adder[2]~5\);

-- Location: LCCOMB_X59_Y69_N4
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Adder_INST|o_adder[2]~4_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \Adder_INST|o_adder[2]~4_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X59_Y69_N5
\r_yn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(2));

-- Location: LCCOMB_X59_Y69_N6
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state.K2~q\ & (r_yn(2))) # (!\state.K2~q\ & ((r_xn(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(2),
	datac => \state.K2~q\,
	datad => r_xn(2),
	combout => \Selector76~0_combout\);

-- Location: FF_X59_Y69_N7
\i_bitshift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(2));

-- Location: LCCOMB_X59_Y69_N0
\bit_shift_INST|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~8_combout\ = (\iteration_counter_INST|cnt\(0) & ((i_bitshift(3)))) # (!\iteration_counter_INST|cnt\(0) & (i_bitshift(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(2),
	datac => i_bitshift(3),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~8_combout\);

-- Location: LCCOMB_X59_Y70_N28
\LUT_16_INST|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~0_combout\ = (!\iteration_counter_INST|cnt\(3) & !\iteration_counter_INST|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \iteration_counter_INST|cnt\(2),
	combout => \LUT_16_INST|rom~0_combout\);

-- Location: LCCOMB_X59_Y70_N20
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\i_SI[3]~2_combout\ & (((!\LUT_16_INST|rom~0_combout\)))) # (!\i_SI[3]~2_combout\ & ((\LUT_16_INST|rom~0_combout\ & (\bit_shift_INST|ShiftRight0~8_combout\)) # (!\LUT_16_INST|rom~0_combout\ & 
-- ((\bit_shift_INST|ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~8_combout\,
	datab => \i_SI[3]~2_combout\,
	datac => \bit_shift_INST|ShiftRight0~23_combout\,
	datad => \LUT_16_INST|rom~0_combout\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X60_Y72_N12
\Selector92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (\Selector92~0_combout\ & (((\bit_shift_INST|ShiftRight0~27_combout\)) # (!\i_SI[3]~2_combout\))) # (!\Selector92~0_combout\ & (\i_SI[3]~2_combout\ & ((\bit_shift_INST|ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector92~0_combout\,
	datab => \i_SI[3]~2_combout\,
	datac => \bit_shift_INST|ShiftRight0~27_combout\,
	datad => \bit_shift_INST|ShiftRight0~10_combout\,
	combout => \Selector92~1_combout\);

-- Location: LCCOMB_X60_Y72_N24
\i_SI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[2]~feeder_combout\ = \Selector92~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector92~1_combout\,
	combout => \i_SI[2]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N0
\LUT_16_INST|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~3_combout\ = (\iteration_counter_INST|cnt\(1) & (((!\iteration_counter_INST|cnt\(2) & !\iteration_counter_INST|cnt\(3))))) # (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & ((!\iteration_counter_INST|cnt\(3)))) # 
-- (!\iteration_counter_INST|cnt\(0) & (\iteration_counter_INST|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~3_combout\);

-- Location: FF_X59_Y71_N1
\LUT_16_INST|o_LUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(2));

-- Location: FF_X60_Y72_N25
\i_SI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[2]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(2),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(2));

-- Location: LCCOMB_X59_Y72_N6
\sign_inverter_INST|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~6_combout\ = (i_SI(3) & ((\sign_inverter_INST|Add0~5\) # (GND))) # (!i_SI(3) & (!\sign_inverter_INST|Add0~5\))
-- \sign_inverter_INST|Add0~7\ = CARRY((i_SI(3)) # (!\sign_inverter_INST|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(3),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~5\,
	combout => \sign_inverter_INST|Add0~6_combout\,
	cout => \sign_inverter_INST|Add0~7\);

-- Location: LCCOMB_X58_Y72_N10
\sign_inverter_INST|o_SI[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[3]~2_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~6_combout\))) # (!i_SI_control(0) & (i_SI(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(3),
	datad => \sign_inverter_INST|Add0~6_combout\,
	combout => \sign_inverter_INST|o_SI[3]~2_combout\);

-- Location: LCCOMB_X57_Y72_N6
\i_adder_b[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[3]~22_combout\ = (\i_adder_b[2]~21\ & (\state.K3~q\ $ ((\sign_inverter_INST|o_SI[3]~2_combout\)))) # (!\i_adder_b[2]~21\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[3]~2_combout\)) # (GND)))
-- \i_adder_b[3]~23\ = CARRY((\state.K3~q\ $ (\sign_inverter_INST|o_SI[3]~2_combout\)) # (!\i_adder_b[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[3]~2_combout\,
	datad => VCC,
	cin => \i_adder_b[2]~21\,
	combout => \i_adder_b[3]~22_combout\,
	cout => \i_adder_b[3]~23\);

-- Location: FF_X57_Y72_N7
\i_adder_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[3]~22_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(3));

-- Location: LCCOMB_X62_Y69_N16
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.K4~q\ & (\Adder_INST|o_adder[3]~6_combout\)) # (!\state.K4~q\ & ((\LUT_Y_INST|o_LUT_Y\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datac => \Adder_INST|o_adder[3]~6_combout\,
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \Selector27~0_combout\);

-- Location: FF_X62_Y69_N17
\r_yn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(3));

-- Location: LCCOMB_X60_Y69_N24
\Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\state.K4~q\ & (r_xn(3))) # (!\state.K4~q\ & ((r_yn(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(3),
	datab => \state.K4~q\,
	datad => r_yn(3),
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X60_Y69_N22
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[3]~6_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X60_Y69_N23
\r_zn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(3));

-- Location: FF_X60_Y69_N25
\i_adder_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector109~0_combout\,
	asdata => r_zn(3),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(3));

-- Location: LCCOMB_X61_Y69_N6
\Adder_INST|o_adder[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[3]~6_combout\ = (i_adder_b(3) & ((i_adder_a(3) & (\Adder_INST|o_adder[2]~5\ & VCC)) # (!i_adder_a(3) & (!\Adder_INST|o_adder[2]~5\)))) # (!i_adder_b(3) & ((i_adder_a(3) & (!\Adder_INST|o_adder[2]~5\)) # (!i_adder_a(3) & 
-- ((\Adder_INST|o_adder[2]~5\) # (GND)))))
-- \Adder_INST|o_adder[3]~7\ = CARRY((i_adder_b(3) & (!i_adder_a(3) & !\Adder_INST|o_adder[2]~5\)) # (!i_adder_b(3) & ((!\Adder_INST|o_adder[2]~5\) # (!i_adder_a(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(3),
	datab => i_adder_a(3),
	datad => VCC,
	cin => \Adder_INST|o_adder[2]~5\,
	combout => \Adder_INST|o_adder[3]~6_combout\,
	cout => \Adder_INST|o_adder[3]~7\);

-- Location: LCCOMB_X61_Y68_N26
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[3]~6_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datac => \Adder_INST|o_adder[3]~6_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X61_Y68_N27
\r_xn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(3));

-- Location: LCCOMB_X59_Y69_N8
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state.K2~q\ & ((r_yn(3)))) # (!\state.K2~q\ & (r_xn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(3),
	datac => \state.K2~q\,
	datad => r_yn(3),
	combout => \Selector75~0_combout\);

-- Location: FF_X59_Y69_N9
\i_bitshift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(3));

-- Location: LCCOMB_X59_Y69_N18
\bit_shift_INST|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~17_combout\ = (\iteration_counter_INST|cnt\(0) & (i_bitshift(4))) # (!\iteration_counter_INST|cnt\(0) & ((i_bitshift(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_bitshift(4),
	datac => i_bitshift(3),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~17_combout\);

-- Location: LCCOMB_X59_Y70_N8
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\LUT_16_INST|rom~0_combout\ & (\bit_shift_INST|ShiftRight0~17_combout\ & ((!\i_SI[3]~2_combout\)))) # (!\LUT_16_INST|rom~0_combout\ & (((\bit_shift_INST|ShiftRight0~28_combout\) # (\i_SI[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~17_combout\,
	datab => \LUT_16_INST|rom~0_combout\,
	datac => \bit_shift_INST|ShiftRight0~28_combout\,
	datad => \i_SI[3]~2_combout\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X59_Y70_N26
\Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\i_SI[3]~2_combout\ & ((\Selector91~0_combout\ & (\bit_shift_INST|ShiftRight0~31_combout\)) # (!\Selector91~0_combout\ & ((\bit_shift_INST|ShiftRight0~19_combout\))))) # (!\i_SI[3]~2_combout\ & (((\Selector91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~31_combout\,
	datab => \i_SI[3]~2_combout\,
	datac => \Selector91~0_combout\,
	datad => \bit_shift_INST|ShiftRight0~19_combout\,
	combout => \Selector91~1_combout\);

-- Location: LCCOMB_X60_Y72_N2
\i_SI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[3]~feeder_combout\ = \Selector91~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector91~1_combout\,
	combout => \i_SI[3]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N10
\LUT_16_INST|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~4_combout\ = (\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(2) & (\iteration_counter_INST|cnt\(0) $ (!\iteration_counter_INST|cnt\(3))))) # (!\iteration_counter_INST|cnt\(1) & (((!\iteration_counter_INST|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~4_combout\);

-- Location: FF_X59_Y71_N11
\LUT_16_INST|o_LUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(3));

-- Location: FF_X60_Y72_N3
\i_SI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[3]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(3),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(3));

-- Location: LCCOMB_X59_Y72_N8
\sign_inverter_INST|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~8_combout\ = (i_SI(4) & (!\sign_inverter_INST|Add0~7\ & VCC)) # (!i_SI(4) & (\sign_inverter_INST|Add0~7\ $ (GND)))
-- \sign_inverter_INST|Add0~9\ = CARRY((!i_SI(4) & !\sign_inverter_INST|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(4),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~7\,
	combout => \sign_inverter_INST|Add0~8_combout\,
	cout => \sign_inverter_INST|Add0~9\);

-- Location: LCCOMB_X58_Y72_N12
\sign_inverter_INST|o_SI[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[4]~3_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~8_combout\))) # (!i_SI_control(0) & (i_SI(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(4),
	datab => i_SI_control(0),
	datac => \sign_inverter_INST|Add0~8_combout\,
	datad => i_SI_control(1),
	combout => \sign_inverter_INST|o_SI[4]~3_combout\);

-- Location: LCCOMB_X57_Y72_N8
\i_adder_b[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[4]~24_combout\ = (\i_adder_b[3]~23\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[4]~3_combout\)))) # (!\i_adder_b[3]~23\ & (\state.K3~q\ $ (\sign_inverter_INST|o_SI[4]~3_combout\ $ (GND))))
-- \i_adder_b[4]~25\ = CARRY((!\i_adder_b[3]~23\ & (\state.K3~q\ $ (!\sign_inverter_INST|o_SI[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[4]~3_combout\,
	datad => VCC,
	cin => \i_adder_b[3]~23\,
	combout => \i_adder_b[4]~24_combout\,
	cout => \i_adder_b[4]~25\);

-- Location: FF_X57_Y72_N9
\i_adder_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[4]~24_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(4));

-- Location: LCCOMB_X63_Y69_N22
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Adder_INST|o_adder[4]~8_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K5~q\,
	datac => \Adder_INST|o_adder[4]~8_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X63_Y69_N23
\r_xn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(4));

-- Location: LCCOMB_X62_Y69_N18
\Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\state.K4~q\ & ((r_xn(4)))) # (!\state.K4~q\ & (r_yn(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(4),
	datad => r_xn(4),
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X63_Y69_N16
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K1~q\,
	datac => \Adder_INST|o_adder[4]~8_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X63_Y69_N17
\r_zn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(4));

-- Location: FF_X62_Y69_N19
\i_adder_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector108~0_combout\,
	asdata => r_zn(4),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(4));

-- Location: LCCOMB_X61_Y69_N8
\Adder_INST|o_adder[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[4]~8_combout\ = ((i_adder_b(4) $ (i_adder_a(4) $ (!\Adder_INST|o_adder[3]~7\)))) # (GND)
-- \Adder_INST|o_adder[4]~9\ = CARRY((i_adder_b(4) & ((i_adder_a(4)) # (!\Adder_INST|o_adder[3]~7\))) # (!i_adder_b(4) & (i_adder_a(4) & !\Adder_INST|o_adder[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(4),
	datab => i_adder_a(4),
	datad => VCC,
	cin => \Adder_INST|o_adder[3]~7\,
	combout => \Adder_INST|o_adder[4]~8_combout\,
	cout => \Adder_INST|o_adder[4]~9\);

-- Location: LCCOMB_X62_Y69_N10
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.K4~q\ & (\Adder_INST|o_adder[4]~8_combout\)) # (!\state.K4~q\ & ((\LUT_Y_INST|o_LUT_Y\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder_INST|o_adder[4]~8_combout\,
	datac => \state.K4~q\,
	datad => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \Selector26~0_combout\);

-- Location: FF_X62_Y69_N11
\r_yn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(4));

-- Location: LCCOMB_X59_Y69_N2
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.K2~q\ & (r_yn(4))) # (!\state.K2~q\ & ((r_xn(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(4),
	datac => \state.K2~q\,
	datad => r_xn(4),
	combout => \Selector74~0_combout\);

-- Location: FF_X59_Y69_N3
\i_bitshift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(4));

-- Location: LCCOMB_X59_Y70_N6
\bit_shift_INST|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~10_combout\ = (\iteration_counter_INST|cnt\(0) & (i_bitshift(5))) # (!\iteration_counter_INST|cnt\(0) & ((i_bitshift(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_bitshift(5),
	datac => i_bitshift(4),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~10_combout\);

-- Location: LCCOMB_X59_Y70_N2
\bit_shift_INST|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~9_combout\ = (\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & ((i_bitshift(7)))) # (!\iteration_counter_INST|cnt\(0) & (i_bitshift(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => i_bitshift(6),
	datac => i_bitshift(7),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~9_combout\);

-- Location: LCCOMB_X59_Y70_N16
\bit_shift_INST|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~11_combout\ = (\bit_shift_INST|ShiftRight0~9_combout\) # ((\bit_shift_INST|ShiftRight0~10_combout\ & !\iteration_counter_INST|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~10_combout\,
	datab => \iteration_counter_INST|cnt\(1),
	datad => \bit_shift_INST|ShiftRight0~9_combout\,
	combout => \bit_shift_INST|ShiftRight0~11_combout\);

-- Location: LCCOMB_X58_Y71_N22
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\i_SI[6]~3_combout\ & (\i_SI[6]~4_combout\)) # (!\i_SI[6]~3_combout\ & ((\i_SI[6]~4_combout\ & (\bit_shift_INST|ShiftRight0~32_combout\)) # (!\i_SI[6]~4_combout\ & ((\bit_shift_INST|ShiftRight0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \i_SI[6]~4_combout\,
	datac => \bit_shift_INST|ShiftRight0~32_combout\,
	datad => \bit_shift_INST|ShiftRight0~11_combout\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X58_Y71_N26
\Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\i_SI[6]~3_combout\ & ((\Selector90~0_combout\ & (\LUT_16_INST|o_LUT\(4))) # (!\Selector90~0_combout\ & ((\bit_shift_INST|ShiftRight0~7_combout\))))) # (!\i_SI[6]~3_combout\ & (((\Selector90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \LUT_16_INST|o_LUT\(4),
	datac => \Selector90~0_combout\,
	datad => \bit_shift_INST|ShiftRight0~7_combout\,
	combout => \Selector90~1_combout\);

-- Location: FF_X59_Y72_N9
\i_SI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector90~1_combout\,
	sload => VCC,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(4));

-- Location: LCCOMB_X59_Y72_N10
\sign_inverter_INST|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~10_combout\ = (i_SI(5) & ((\sign_inverter_INST|Add0~9\) # (GND))) # (!i_SI(5) & (!\sign_inverter_INST|Add0~9\))
-- \sign_inverter_INST|Add0~11\ = CARRY((i_SI(5)) # (!\sign_inverter_INST|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(5),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~9\,
	combout => \sign_inverter_INST|Add0~10_combout\,
	cout => \sign_inverter_INST|Add0~11\);

-- Location: LCCOMB_X58_Y72_N18
\sign_inverter_INST|o_SI[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[5]~4_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & (\sign_inverter_INST|Add0~10_combout\)) # (!i_SI_control(0) & ((i_SI(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => \sign_inverter_INST|Add0~10_combout\,
	datad => i_SI(5),
	combout => \sign_inverter_INST|o_SI[5]~4_combout\);

-- Location: LCCOMB_X57_Y72_N10
\i_adder_b[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[5]~26_combout\ = (\i_adder_b[4]~25\ & (\state.K3~q\ $ ((\sign_inverter_INST|o_SI[5]~4_combout\)))) # (!\i_adder_b[4]~25\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[5]~4_combout\)) # (GND)))
-- \i_adder_b[5]~27\ = CARRY((\state.K3~q\ $ (\sign_inverter_INST|o_SI[5]~4_combout\)) # (!\i_adder_b[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[5]~4_combout\,
	datad => VCC,
	cin => \i_adder_b[4]~25\,
	combout => \i_adder_b[5]~26_combout\,
	cout => \i_adder_b[5]~27\);

-- Location: FF_X57_Y72_N11
\i_adder_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[5]~26_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(5));

-- Location: LCCOMB_X62_Y69_N0
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Adder_INST|o_adder[5]~10_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K4~q\,
	datad => \Adder_INST|o_adder[5]~10_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X62_Y69_N1
\r_yn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(5));

-- Location: LCCOMB_X62_Y69_N8
\Selector107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\state.K4~q\ & (r_xn(5))) # (!\state.K4~q\ & ((r_yn(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_xn(5),
	datad => r_yn(5),
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X63_Y69_N14
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[5]~10_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X63_Y69_N15
\r_zn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(5));

-- Location: FF_X62_Y69_N9
\i_adder_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector107~0_combout\,
	asdata => r_zn(5),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(5));

-- Location: LCCOMB_X61_Y69_N10
\Adder_INST|o_adder[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[5]~10_combout\ = (i_adder_b(5) & ((i_adder_a(5) & (\Adder_INST|o_adder[4]~9\ & VCC)) # (!i_adder_a(5) & (!\Adder_INST|o_adder[4]~9\)))) # (!i_adder_b(5) & ((i_adder_a(5) & (!\Adder_INST|o_adder[4]~9\)) # (!i_adder_a(5) & 
-- ((\Adder_INST|o_adder[4]~9\) # (GND)))))
-- \Adder_INST|o_adder[5]~11\ = CARRY((i_adder_b(5) & (!i_adder_a(5) & !\Adder_INST|o_adder[4]~9\)) # (!i_adder_b(5) & ((!\Adder_INST|o_adder[4]~9\) # (!i_adder_a(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(5),
	datab => i_adder_a(5),
	datad => VCC,
	cin => \Adder_INST|o_adder[4]~9\,
	combout => \Adder_INST|o_adder[5]~10_combout\,
	cout => \Adder_INST|o_adder[5]~11\);

-- Location: LCCOMB_X61_Y68_N16
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[5]~10_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datad => \Adder_INST|o_adder[5]~10_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X61_Y68_N17
\r_xn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(5));

-- Location: LCCOMB_X62_Y70_N18
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state.K2~q\ & ((r_yn(5)))) # (!\state.K2~q\ & (r_xn(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(5),
	datac => \state.K2~q\,
	datad => r_yn(5),
	combout => \Selector73~0_combout\);

-- Location: FF_X59_Y70_N17
\i_bitshift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector73~0_combout\,
	sload => VCC,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(5));

-- Location: LCCOMB_X59_Y70_N18
\bit_shift_INST|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~19_combout\ = (\iteration_counter_INST|cnt\(0) & ((i_bitshift(6)))) # (!\iteration_counter_INST|cnt\(0) & (i_bitshift(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_bitshift(5),
	datac => i_bitshift(6),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~19_combout\);

-- Location: LCCOMB_X59_Y70_N24
\bit_shift_INST|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~20_combout\ = (\bit_shift_INST|ShiftRight0~18_combout\) # ((!\iteration_counter_INST|cnt\(1) & \bit_shift_INST|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST|ShiftRight0~18_combout\,
	datad => \bit_shift_INST|ShiftRight0~19_combout\,
	combout => \bit_shift_INST|ShiftRight0~20_combout\);

-- Location: LCCOMB_X58_Y71_N4
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\i_SI[6]~3_combout\ & ((\i_SI[6]~4_combout\) # ((\bit_shift_INST|ShiftRight0~15_combout\)))) # (!\i_SI[6]~3_combout\ & (!\i_SI[6]~4_combout\ & (\bit_shift_INST|ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \i_SI[6]~4_combout\,
	datac => \bit_shift_INST|ShiftRight0~20_combout\,
	datad => \bit_shift_INST|ShiftRight0~15_combout\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X58_Y71_N24
\Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\Selector89~0_combout\ & (((\LUT_16_INST|o_LUT\(5)) # (!\i_SI[6]~4_combout\)))) # (!\Selector89~0_combout\ & (\bit_shift_INST|ShiftRight0~34_combout\ & ((\i_SI[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~34_combout\,
	datab => \LUT_16_INST|o_LUT\(5),
	datac => \Selector89~0_combout\,
	datad => \i_SI[6]~4_combout\,
	combout => \Selector89~1_combout\);

-- Location: FF_X59_Y72_N29
\i_SI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector89~1_combout\,
	sload => VCC,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(5));

-- Location: LCCOMB_X59_Y72_N12
\sign_inverter_INST|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~12_combout\ = (i_SI(6) & (!\sign_inverter_INST|Add0~11\ & VCC)) # (!i_SI(6) & (\sign_inverter_INST|Add0~11\ $ (GND)))
-- \sign_inverter_INST|Add0~13\ = CARRY((!i_SI(6) & !\sign_inverter_INST|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(6),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~11\,
	combout => \sign_inverter_INST|Add0~12_combout\,
	cout => \sign_inverter_INST|Add0~13\);

-- Location: LCCOMB_X58_Y72_N0
\sign_inverter_INST|o_SI[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[6]~5_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~12_combout\))) # (!i_SI_control(0) & (i_SI(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(6),
	datab => i_SI_control(0),
	datac => \sign_inverter_INST|Add0~12_combout\,
	datad => i_SI_control(1),
	combout => \sign_inverter_INST|o_SI[6]~5_combout\);

-- Location: LCCOMB_X57_Y72_N12
\i_adder_b[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[6]~28_combout\ = (\i_adder_b[5]~27\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[6]~5_combout\)))) # (!\i_adder_b[5]~27\ & (\state.K3~q\ $ (\sign_inverter_INST|o_SI[6]~5_combout\ $ (GND))))
-- \i_adder_b[6]~29\ = CARRY((!\i_adder_b[5]~27\ & (\state.K3~q\ $ (!\sign_inverter_INST|o_SI[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[6]~5_combout\,
	datad => VCC,
	cin => \i_adder_b[5]~27\,
	combout => \i_adder_b[6]~28_combout\,
	cout => \i_adder_b[6]~29\);

-- Location: FF_X57_Y72_N13
\i_adder_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[6]~28_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(6));

-- Location: LCCOMB_X61_Y69_N12
\Adder_INST|o_adder[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[6]~12_combout\ = ((i_adder_a(6) $ (i_adder_b(6) $ (!\Adder_INST|o_adder[5]~11\)))) # (GND)
-- \Adder_INST|o_adder[6]~13\ = CARRY((i_adder_a(6) & ((i_adder_b(6)) # (!\Adder_INST|o_adder[5]~11\))) # (!i_adder_a(6) & (i_adder_b(6) & !\Adder_INST|o_adder[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(6),
	datab => i_adder_b(6),
	datad => VCC,
	cin => \Adder_INST|o_adder[5]~11\,
	combout => \Adder_INST|o_adder[6]~12_combout\,
	cout => \Adder_INST|o_adder[6]~13\);

-- Location: LCCOMB_X63_Y69_N28
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Adder_INST|o_adder[6]~12_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K5~q\,
	datad => \Adder_INST|o_adder[6]~12_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X63_Y69_N29
\r_xn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(6));

-- Location: LCCOMB_X62_Y70_N16
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.K2~q\ & ((r_yn(6)))) # (!\state.K2~q\ & (r_xn(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_xn(6),
	datac => \state.K2~q\,
	datad => r_yn(6),
	combout => \Selector72~0_combout\);

-- Location: FF_X59_Y70_N29
\i_bitshift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector72~0_combout\,
	sload => VCC,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(6));

-- Location: LCCOMB_X59_Y70_N30
\bit_shift_INST|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~21_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & ((i_bitshift(8)))) # (!\iteration_counter_INST|cnt\(1) & (i_bitshift(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(6),
	datab => i_bitshift(8),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~21_combout\);

-- Location: LCCOMB_X59_Y70_N22
\bit_shift_INST|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~23_combout\ = (\bit_shift_INST|ShiftRight0~21_combout\) # ((\iteration_counter_INST|cnt\(0) & \bit_shift_INST|ShiftRight0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST|ShiftRight0~21_combout\,
	datad => \bit_shift_INST|ShiftRight0~22_combout\,
	combout => \bit_shift_INST|ShiftRight0~23_combout\);

-- Location: LCCOMB_X58_Y71_N18
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\i_SI[6]~3_combout\ & (\i_SI[6]~4_combout\)) # (!\i_SI[6]~3_combout\ & ((\i_SI[6]~4_combout\ & (\bit_shift_INST|ShiftRight0~33_combout\)) # (!\i_SI[6]~4_combout\ & ((\bit_shift_INST|ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \i_SI[6]~4_combout\,
	datac => \bit_shift_INST|ShiftRight0~33_combout\,
	datad => \bit_shift_INST|ShiftRight0~23_combout\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X58_Y71_N6
\Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\i_SI[6]~3_combout\ & ((\Selector88~0_combout\ & (\LUT_16_INST|o_LUT\(6))) # (!\Selector88~0_combout\ & ((\bit_shift_INST|ShiftRight0~26_combout\))))) # (!\i_SI[6]~3_combout\ & (((\Selector88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \LUT_16_INST|o_LUT\(6),
	datac => \bit_shift_INST|ShiftRight0~26_combout\,
	datad => \Selector88~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: FF_X59_Y72_N13
\i_SI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector88~1_combout\,
	sload => VCC,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(6));

-- Location: LCCOMB_X59_Y72_N14
\sign_inverter_INST|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~14_combout\ = (i_SI(7) & ((\sign_inverter_INST|Add0~13\) # (GND))) # (!i_SI(7) & (!\sign_inverter_INST|Add0~13\))
-- \sign_inverter_INST|Add0~15\ = CARRY((i_SI(7)) # (!\sign_inverter_INST|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(7),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~13\,
	combout => \sign_inverter_INST|Add0~14_combout\,
	cout => \sign_inverter_INST|Add0~15\);

-- Location: LCCOMB_X58_Y72_N22
\sign_inverter_INST|o_SI[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[7]~6_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~14_combout\))) # (!i_SI_control(0) & (i_SI(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI(7),
	datac => \sign_inverter_INST|Add0~14_combout\,
	datad => i_SI_control(0),
	combout => \sign_inverter_INST|o_SI[7]~6_combout\);

-- Location: LCCOMB_X57_Y72_N14
\i_adder_b[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[7]~30_combout\ = (\i_adder_b[6]~29\ & (\state.K3~q\ $ ((\sign_inverter_INST|o_SI[7]~6_combout\)))) # (!\i_adder_b[6]~29\ & ((\state.K3~q\ $ (!\sign_inverter_INST|o_SI[7]~6_combout\)) # (GND)))
-- \i_adder_b[7]~31\ = CARRY((\state.K3~q\ $ (\sign_inverter_INST|o_SI[7]~6_combout\)) # (!\i_adder_b[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state.K3~q\,
	datab => \sign_inverter_INST|o_SI[7]~6_combout\,
	datad => VCC,
	cin => \i_adder_b[6]~29\,
	combout => \i_adder_b[7]~30_combout\,
	cout => \i_adder_b[7]~31\);

-- Location: FF_X57_Y72_N15
\i_adder_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[7]~30_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(7));

-- Location: LCCOMB_X62_Y69_N20
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.K4~q\ & \Adder_INST|o_adder[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K4~q\,
	datad => \Adder_INST|o_adder[7]~14_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X62_Y69_N21
\r_yn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(7));

-- Location: LCCOMB_X62_Y69_N28
\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\state.K4~q\ & ((r_xn(7)))) # (!\state.K4~q\ & (r_yn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(7),
	datad => r_xn(7),
	combout => \Selector105~0_combout\);

-- Location: LCCOMB_X63_Y69_N12
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[7]~14_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X63_Y69_N13
\r_zn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(7));

-- Location: FF_X62_Y69_N29
\i_adder_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector105~0_combout\,
	asdata => r_zn(7),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(7));

-- Location: LCCOMB_X61_Y69_N14
\Adder_INST|o_adder[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[7]~14_combout\ = (i_adder_b(7) & ((i_adder_a(7) & (\Adder_INST|o_adder[6]~13\ & VCC)) # (!i_adder_a(7) & (!\Adder_INST|o_adder[6]~13\)))) # (!i_adder_b(7) & ((i_adder_a(7) & (!\Adder_INST|o_adder[6]~13\)) # (!i_adder_a(7) & 
-- ((\Adder_INST|o_adder[6]~13\) # (GND)))))
-- \Adder_INST|o_adder[7]~15\ = CARRY((i_adder_b(7) & (!i_adder_a(7) & !\Adder_INST|o_adder[6]~13\)) # (!i_adder_b(7) & ((!\Adder_INST|o_adder[6]~13\) # (!i_adder_a(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(7),
	datab => i_adder_a(7),
	datad => VCC,
	cin => \Adder_INST|o_adder[6]~13\,
	combout => \Adder_INST|o_adder[7]~14_combout\,
	cout => \Adder_INST|o_adder[7]~15\);

-- Location: LCCOMB_X61_Y68_N18
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[7]~14_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datad => \Adder_INST|o_adder[7]~14_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X61_Y68_N19
\r_xn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(7));

-- Location: LCCOMB_X62_Y70_N6
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\state.K2~q\ & ((r_yn(7)))) # (!\state.K2~q\ & (r_xn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(7),
	datab => r_yn(7),
	datac => \state.K2~q\,
	combout => \Selector71~0_combout\);

-- Location: FF_X59_Y70_N11
\i_bitshift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector71~0_combout\,
	sload => VCC,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(7));

-- Location: LCCOMB_X59_Y70_N12
\bit_shift_INST|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~22_combout\ = (\iteration_counter_INST|cnt\(1) & (i_bitshift(9))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_bitshift(9),
	datac => i_bitshift(7),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \bit_shift_INST|ShiftRight0~22_combout\);

-- Location: LCCOMB_X59_Y70_N14
\bit_shift_INST|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~28_combout\ = (\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST|ShiftRight0~6_combout\))) # (!\iteration_counter_INST|cnt\(0) & (\bit_shift_INST|ShiftRight0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~22_combout\,
	datab => \iteration_counter_INST|cnt\(0),
	datad => \bit_shift_INST|ShiftRight0~6_combout\,
	combout => \bit_shift_INST|ShiftRight0~28_combout\);

-- Location: LCCOMB_X58_Y71_N8
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\i_SI[6]~3_combout\ & ((\i_SI[6]~4_combout\) # ((\bit_shift_INST|ShiftRight0~30_combout\)))) # (!\i_SI[6]~3_combout\ & (!\i_SI[6]~4_combout\ & ((\bit_shift_INST|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SI[6]~3_combout\,
	datab => \i_SI[6]~4_combout\,
	datac => \bit_shift_INST|ShiftRight0~30_combout\,
	datad => \bit_shift_INST|ShiftRight0~28_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X58_Y71_N12
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\ & (((\LUT_16_INST|o_LUT\(7)) # (!\i_SI[6]~4_combout\)))) # (!\Selector87~0_combout\ & (i_bitshift(15) & ((\i_SI[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(15),
	datab => \LUT_16_INST|o_LUT\(7),
	datac => \Selector87~0_combout\,
	datad => \i_SI[6]~4_combout\,
	combout => \Selector87~1_combout\);

-- Location: FF_X59_Y72_N1
\i_SI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	asdata => \Selector87~1_combout\,
	sload => VCC,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(7));

-- Location: LCCOMB_X59_Y72_N16
\sign_inverter_INST|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~16_combout\ = (i_SI(8) & (!\sign_inverter_INST|Add0~15\ & VCC)) # (!i_SI(8) & (\sign_inverter_INST|Add0~15\ $ (GND)))
-- \sign_inverter_INST|Add0~17\ = CARRY((!i_SI(8) & !\sign_inverter_INST|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(8),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~15\,
	combout => \sign_inverter_INST|Add0~16_combout\,
	cout => \sign_inverter_INST|Add0~17\);

-- Location: LCCOMB_X58_Y72_N8
\sign_inverter_INST|o_SI[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[8]~7_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~16_combout\))) # (!i_SI_control(0) & (i_SI(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(8),
	datad => \sign_inverter_INST|Add0~16_combout\,
	combout => \sign_inverter_INST|o_SI[8]~7_combout\);

-- Location: LCCOMB_X57_Y72_N16
\i_adder_b[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[8]~32_combout\ = (\i_adder_b[7]~31\ & ((\sign_inverter_INST|o_SI[8]~7_combout\ $ (!\state.K3~q\)))) # (!\i_adder_b[7]~31\ & (\sign_inverter_INST|o_SI[8]~7_combout\ $ (\state.K3~q\ $ (GND))))
-- \i_adder_b[8]~33\ = CARRY((!\i_adder_b[7]~31\ & (\sign_inverter_INST|o_SI[8]~7_combout\ $ (!\state.K3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[8]~7_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[7]~31\,
	combout => \i_adder_b[8]~32_combout\,
	cout => \i_adder_b[8]~33\);

-- Location: FF_X57_Y72_N17
\i_adder_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[8]~32_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(8));

-- Location: LCCOMB_X63_Y69_N2
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Adder_INST|o_adder[8]~16_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K5~q\,
	datad => \Adder_INST|o_adder[8]~16_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X63_Y69_N3
\r_xn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(8));

-- Location: LCCOMB_X62_Y69_N26
\Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\state.K4~q\ & ((r_xn(8)))) # (!\state.K4~q\ & (r_yn(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(8),
	datad => r_xn(8),
	combout => \Selector104~0_combout\);

-- Location: LCCOMB_X63_Y69_N8
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[8]~16_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X63_Y69_N9
\r_zn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(8));

-- Location: FF_X62_Y69_N27
\i_adder_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector104~0_combout\,
	asdata => r_zn(8),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(8));

-- Location: LCCOMB_X61_Y69_N16
\Adder_INST|o_adder[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[8]~16_combout\ = ((i_adder_b(8) $ (i_adder_a(8) $ (!\Adder_INST|o_adder[7]~15\)))) # (GND)
-- \Adder_INST|o_adder[8]~17\ = CARRY((i_adder_b(8) & ((i_adder_a(8)) # (!\Adder_INST|o_adder[7]~15\))) # (!i_adder_b(8) & (i_adder_a(8) & !\Adder_INST|o_adder[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(8),
	datab => i_adder_a(8),
	datad => VCC,
	cin => \Adder_INST|o_adder[7]~15\,
	combout => \Adder_INST|o_adder[8]~16_combout\,
	cout => \Adder_INST|o_adder[8]~17\);

-- Location: LCCOMB_X61_Y72_N28
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.K4~q\ & (\Adder_INST|o_adder[8]~16_combout\)) # (!\state.K4~q\ & ((\LUT_Y_INST|o_LUT_Y\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder_INST|o_adder[8]~16_combout\,
	datab => \state.K4~q\,
	datac => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \Selector22~0_combout\);

-- Location: FF_X61_Y72_N29
\r_yn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(8));

-- Location: LCCOMB_X60_Y70_N28
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\state.K2~q\ & (r_yn(8))) # (!\state.K2~q\ & ((r_xn(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(8),
	datac => \state.K2~q\,
	datad => r_xn(8),
	combout => \Selector70~0_combout\);

-- Location: FF_X60_Y70_N29
\i_bitshift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(8));

-- Location: LCCOMB_X60_Y70_N6
\bit_shift_INST|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~6_combout\ = (\iteration_counter_INST|cnt\(1) & (i_bitshift(10))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(10),
	datac => \iteration_counter_INST|cnt\(1),
	datad => i_bitshift(8),
	combout => \bit_shift_INST|ShiftRight0~6_combout\);

-- Location: LCCOMB_X60_Y70_N24
\bit_shift_INST|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~7_combout\ = (\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST|ShiftRight0~5_combout\))) # (!\iteration_counter_INST|cnt\(0) & (\bit_shift_INST|ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~6_combout\,
	datab => \iteration_counter_INST|cnt\(0),
	datad => \bit_shift_INST|ShiftRight0~5_combout\,
	combout => \bit_shift_INST|ShiftRight0~7_combout\);

-- Location: LCCOMB_X61_Y72_N10
\Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (\iteration_counter_INST|cnt\(3) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(3) & (((\iteration_counter_INST|cnt\(2) & \bit_shift_INST|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => i_bitshift(15),
	datac => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST|ShiftRight0~4_combout\,
	combout => \Selector86~2_combout\);

-- Location: LCCOMB_X61_Y72_N4
\Selector86~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~3_combout\ = (\Selector86~2_combout\) # ((!\iteration_counter_INST|cnt\(3) & (\bit_shift_INST|ShiftRight0~7_combout\ & !\iteration_counter_INST|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => \bit_shift_INST|ShiftRight0~7_combout\,
	datac => \iteration_counter_INST|cnt\(2),
	datad => \Selector86~2_combout\,
	combout => \Selector86~3_combout\);

-- Location: LCCOMB_X60_Y72_N8
\i_SI[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[8]~feeder_combout\ = \Selector86~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector86~3_combout\,
	combout => \i_SI[8]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N8
\LUT_16_INST|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~9_combout\ = (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(0) & ((!\iteration_counter_INST|cnt\(1)) # (!\iteration_counter_INST|cnt\(2)))) # (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(2)) # 
-- (\iteration_counter_INST|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~9_combout\);

-- Location: FF_X59_Y71_N9
\LUT_16_INST|o_LUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(8));

-- Location: FF_X60_Y72_N9
\i_SI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[8]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(8),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(8));

-- Location: LCCOMB_X59_Y72_N18
\sign_inverter_INST|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~18_combout\ = (i_SI(9) & ((\sign_inverter_INST|Add0~17\) # (GND))) # (!i_SI(9) & (!\sign_inverter_INST|Add0~17\))
-- \sign_inverter_INST|Add0~19\ = CARRY((i_SI(9)) # (!\sign_inverter_INST|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(9),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~17\,
	combout => \sign_inverter_INST|Add0~18_combout\,
	cout => \sign_inverter_INST|Add0~19\);

-- Location: LCCOMB_X58_Y72_N6
\sign_inverter_INST|o_SI[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[9]~8_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~18_combout\))) # (!i_SI_control(0) & (i_SI(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(9),
	datad => \sign_inverter_INST|Add0~18_combout\,
	combout => \sign_inverter_INST|o_SI[9]~8_combout\);

-- Location: LCCOMB_X57_Y72_N18
\i_adder_b[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[9]~34_combout\ = (\i_adder_b[8]~33\ & (\sign_inverter_INST|o_SI[9]~8_combout\ $ ((\state.K3~q\)))) # (!\i_adder_b[8]~33\ & ((\sign_inverter_INST|o_SI[9]~8_combout\ $ (!\state.K3~q\)) # (GND)))
-- \i_adder_b[9]~35\ = CARRY((\sign_inverter_INST|o_SI[9]~8_combout\ $ (\state.K3~q\)) # (!\i_adder_b[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[9]~8_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[8]~33\,
	combout => \i_adder_b[9]~34_combout\,
	cout => \i_adder_b[9]~35\);

-- Location: FF_X57_Y72_N19
\i_adder_b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[9]~34_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(9));

-- Location: LCCOMB_X62_Y72_N30
\LUT_Y_INST|o_LUT_Y[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\ = LUT_COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => LUT_COUNTER(0),
	combout => \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\);

-- Location: FF_X62_Y72_N31
\LUT_Y_INST|o_LUT_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable_Y~clkctrl_outclk\,
	d => \LUT_Y_INST|o_LUT_Y[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_Y_INST|o_LUT_Y\(9));

-- Location: LCCOMB_X61_Y72_N18
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.K4~q\ & ((\Adder_INST|o_adder[9]~18_combout\))) # (!\state.K4~q\ & (\LUT_Y_INST|o_LUT_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \LUT_Y_INST|o_LUT_Y\(9),
	datad => \Adder_INST|o_adder[9]~18_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X61_Y72_N19
\r_yn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(9));

-- Location: LCCOMB_X60_Y69_N28
\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\state.K4~q\ & (r_xn(9))) # (!\state.K4~q\ & ((r_yn(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(9),
	datab => \state.K4~q\,
	datad => r_yn(9),
	combout => \Selector103~0_combout\);

-- Location: LCCOMB_X60_Y69_N4
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[9]~18_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X60_Y69_N5
\r_zn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(9));

-- Location: FF_X60_Y69_N29
\i_adder_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector103~0_combout\,
	asdata => r_zn(9),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(9));

-- Location: LCCOMB_X61_Y69_N18
\Adder_INST|o_adder[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[9]~18_combout\ = (i_adder_b(9) & ((i_adder_a(9) & (\Adder_INST|o_adder[8]~17\ & VCC)) # (!i_adder_a(9) & (!\Adder_INST|o_adder[8]~17\)))) # (!i_adder_b(9) & ((i_adder_a(9) & (!\Adder_INST|o_adder[8]~17\)) # (!i_adder_a(9) & 
-- ((\Adder_INST|o_adder[8]~17\) # (GND)))))
-- \Adder_INST|o_adder[9]~19\ = CARRY((i_adder_b(9) & (!i_adder_a(9) & !\Adder_INST|o_adder[8]~17\)) # (!i_adder_b(9) & ((!\Adder_INST|o_adder[8]~17\) # (!i_adder_a(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(9),
	datab => i_adder_a(9),
	datad => VCC,
	cin => \Adder_INST|o_adder[8]~17\,
	combout => \Adder_INST|o_adder[9]~18_combout\,
	cout => \Adder_INST|o_adder[9]~19\);

-- Location: LCCOMB_X61_Y68_N8
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[9]~18_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datad => \Adder_INST|o_adder[9]~18_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X61_Y68_N9
\r_xn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(9));

-- Location: LCCOMB_X60_Y70_N26
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\state.K2~q\ & ((r_yn(9)))) # (!\state.K2~q\ & (r_xn(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_xn(9),
	datab => r_yn(9),
	datac => \state.K2~q\,
	combout => \Selector69~0_combout\);

-- Location: FF_X60_Y70_N27
\i_bitshift[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(9));

-- Location: LCCOMB_X60_Y70_N20
\bit_shift_INST|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~5_combout\ = (\iteration_counter_INST|cnt\(1) & ((i_bitshift(11)))) # (!\iteration_counter_INST|cnt\(1) & (i_bitshift(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(9),
	datab => i_bitshift(11),
	datac => \iteration_counter_INST|cnt\(1),
	combout => \bit_shift_INST|ShiftRight0~5_combout\);

-- Location: LCCOMB_X60_Y70_N0
\bit_shift_INST|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~15_combout\ = (\iteration_counter_INST|cnt\(0) & (\bit_shift_INST|ShiftRight0~14_combout\)) # (!\iteration_counter_INST|cnt\(0) & ((\bit_shift_INST|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_shift_INST|ShiftRight0~14_combout\,
	datac => \iteration_counter_INST|cnt\(0),
	datad => \bit_shift_INST|ShiftRight0~5_combout\,
	combout => \bit_shift_INST|ShiftRight0~15_combout\);

-- Location: LCCOMB_X60_Y72_N16
\bit_shift_INST|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~16_combout\ = (\bit_shift_INST|ShiftRight0~13_combout\) # ((!\iteration_counter_INST|cnt\(2) & \bit_shift_INST|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(2),
	datac => \bit_shift_INST|ShiftRight0~13_combout\,
	datad => \bit_shift_INST|ShiftRight0~15_combout\,
	combout => \bit_shift_INST|ShiftRight0~16_combout\);

-- Location: LCCOMB_X60_Y72_N22
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\iteration_counter_INST|cnt\(3) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST|ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => i_bitshift(15),
	datad => \bit_shift_INST|ShiftRight0~16_combout\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X59_Y71_N2
\LUT_16_INST|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~10_combout\ = (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(1) & ((!\iteration_counter_INST|cnt\(2)))) # (!\iteration_counter_INST|cnt\(1) & (!\iteration_counter_INST|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~10_combout\);

-- Location: FF_X59_Y71_N3
\LUT_16_INST|o_LUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(9));

-- Location: FF_X60_Y72_N23
\i_SI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector85~0_combout\,
	asdata => \LUT_16_INST|o_LUT\(9),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(9));

-- Location: LCCOMB_X59_Y72_N20
\sign_inverter_INST|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~20_combout\ = (i_SI(10) & (!\sign_inverter_INST|Add0~19\ & VCC)) # (!i_SI(10) & (\sign_inverter_INST|Add0~19\ $ (GND)))
-- \sign_inverter_INST|Add0~21\ = CARRY((!i_SI(10) & !\sign_inverter_INST|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(10),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~19\,
	combout => \sign_inverter_INST|Add0~20_combout\,
	cout => \sign_inverter_INST|Add0~21\);

-- Location: LCCOMB_X58_Y72_N16
\sign_inverter_INST|o_SI[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[10]~9_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~20_combout\))) # (!i_SI_control(0) & (i_SI(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI(10),
	datac => \sign_inverter_INST|Add0~20_combout\,
	datad => i_SI_control(0),
	combout => \sign_inverter_INST|o_SI[10]~9_combout\);

-- Location: LCCOMB_X57_Y72_N20
\i_adder_b[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[10]~36_combout\ = (\i_adder_b[9]~35\ & ((\sign_inverter_INST|o_SI[10]~9_combout\ $ (!\state.K3~q\)))) # (!\i_adder_b[9]~35\ & (\sign_inverter_INST|o_SI[10]~9_combout\ $ (\state.K3~q\ $ (GND))))
-- \i_adder_b[10]~37\ = CARRY((!\i_adder_b[9]~35\ & (\sign_inverter_INST|o_SI[10]~9_combout\ $ (!\state.K3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[10]~9_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[9]~35\,
	combout => \i_adder_b[10]~36_combout\,
	cout => \i_adder_b[10]~37\);

-- Location: FF_X57_Y72_N21
\i_adder_b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[10]~36_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(10));

-- Location: LCCOMB_X61_Y68_N14
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Adder_INST|o_adder[10]~20_combout\) # (!\state.K5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Adder_INST|o_adder[10]~20_combout\,
	datad => \state.K5~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X61_Y68_N15
\r_xn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(10));

-- Location: LCCOMB_X60_Y69_N20
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state.K4~q\ & (r_xn(10))) # (!\state.K4~q\ & ((r_yn(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_xn(10),
	datad => r_yn(10),
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X60_Y69_N26
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K1~q\,
	datac => \Adder_INST|o_adder[10]~20_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X60_Y69_N27
\r_zn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(10));

-- Location: FF_X60_Y69_N21
\i_adder_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector102~0_combout\,
	asdata => r_zn(10),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(10));

-- Location: LCCOMB_X61_Y69_N20
\Adder_INST|o_adder[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[10]~20_combout\ = ((i_adder_b(10) $ (i_adder_a(10) $ (!\Adder_INST|o_adder[9]~19\)))) # (GND)
-- \Adder_INST|o_adder[10]~21\ = CARRY((i_adder_b(10) & ((i_adder_a(10)) # (!\Adder_INST|o_adder[9]~19\))) # (!i_adder_b(10) & (i_adder_a(10) & !\Adder_INST|o_adder[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(10),
	datab => i_adder_a(10),
	datad => VCC,
	cin => \Adder_INST|o_adder[9]~19\,
	combout => \Adder_INST|o_adder[10]~20_combout\,
	cout => \Adder_INST|o_adder[10]~21\);

-- Location: LCCOMB_X60_Y70_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Adder_INST|o_adder[10]~20_combout\) # (!\state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \Adder_INST|o_adder[10]~20_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X60_Y70_N9
\r_yn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(10));

-- Location: LCCOMB_X60_Y70_N22
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\state.K2~q\ & (r_yn(10))) # (!\state.K2~q\ & ((r_xn(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_yn(10),
	datac => \state.K2~q\,
	datad => r_xn(10),
	combout => \Selector68~0_combout\);

-- Location: FF_X60_Y70_N23
\i_bitshift[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(10));

-- Location: LCCOMB_X60_Y70_N18
\bit_shift_INST|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~14_combout\ = (\iteration_counter_INST|cnt\(1) & ((i_bitshift(12)))) # (!\iteration_counter_INST|cnt\(1) & (i_bitshift(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_bitshift(10),
	datac => \iteration_counter_INST|cnt\(1),
	datad => i_bitshift(12),
	combout => \bit_shift_INST|ShiftRight0~14_combout\);

-- Location: LCCOMB_X60_Y70_N16
\bit_shift_INST|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~26_combout\ = (\bit_shift_INST|ShiftRight0~25_combout\) # ((!\iteration_counter_INST|cnt\(0) & \bit_shift_INST|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(0),
	datac => \bit_shift_INST|ShiftRight0~25_combout\,
	datad => \bit_shift_INST|ShiftRight0~14_combout\,
	combout => \bit_shift_INST|ShiftRight0~26_combout\);

-- Location: LCCOMB_X60_Y71_N0
\bit_shift_INST|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~24_combout\ = (\iteration_counter_INST|cnt\(0) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => i_bitshift(15),
	datac => i_bitshift(14),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \bit_shift_INST|ShiftRight0~24_combout\);

-- Location: LCCOMB_X60_Y72_N26
\bit_shift_INST|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~27_combout\ = (\iteration_counter_INST|cnt\(2) & ((\bit_shift_INST|ShiftRight0~24_combout\))) # (!\iteration_counter_INST|cnt\(2) & (\bit_shift_INST|ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~26_combout\,
	datab => \iteration_counter_INST|cnt\(2),
	datad => \bit_shift_INST|ShiftRight0~24_combout\,
	combout => \bit_shift_INST|ShiftRight0~27_combout\);

-- Location: LCCOMB_X60_Y72_N20
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\iteration_counter_INST|cnt\(3) & ((i_bitshift(15)))) # (!\iteration_counter_INST|cnt\(3) & (\bit_shift_INST|ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~27_combout\,
	datab => i_bitshift(15),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X59_Y71_N24
\LUT_16_INST|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~11_combout\ = (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & ((\iteration_counter_INST|cnt\(0)) # (\iteration_counter_INST|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~11_combout\);

-- Location: FF_X59_Y71_N25
\LUT_16_INST|o_LUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(10));

-- Location: FF_X60_Y72_N21
\i_SI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector84~0_combout\,
	asdata => \LUT_16_INST|o_LUT\(10),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(10));

-- Location: LCCOMB_X59_Y72_N22
\sign_inverter_INST|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~22_combout\ = (i_SI(11) & ((\sign_inverter_INST|Add0~21\) # (GND))) # (!i_SI(11) & (!\sign_inverter_INST|Add0~21\))
-- \sign_inverter_INST|Add0~23\ = CARRY((i_SI(11)) # (!\sign_inverter_INST|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(11),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~21\,
	combout => \sign_inverter_INST|Add0~22_combout\,
	cout => \sign_inverter_INST|Add0~23\);

-- Location: LCCOMB_X58_Y72_N2
\sign_inverter_INST|o_SI[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[11]~10_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~22_combout\))) # (!i_SI_control(0) & (i_SI(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => i_SI(11),
	datad => \sign_inverter_INST|Add0~22_combout\,
	combout => \sign_inverter_INST|o_SI[11]~10_combout\);

-- Location: LCCOMB_X57_Y72_N22
\i_adder_b[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[11]~38_combout\ = (\i_adder_b[10]~37\ & (\sign_inverter_INST|o_SI[11]~10_combout\ $ ((\state.K3~q\)))) # (!\i_adder_b[10]~37\ & ((\sign_inverter_INST|o_SI[11]~10_combout\ $ (!\state.K3~q\)) # (GND)))
-- \i_adder_b[11]~39\ = CARRY((\sign_inverter_INST|o_SI[11]~10_combout\ $ (\state.K3~q\)) # (!\i_adder_b[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[11]~10_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[10]~37\,
	combout => \i_adder_b[11]~38_combout\,
	cout => \i_adder_b[11]~39\);

-- Location: FF_X57_Y72_N23
\i_adder_b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[11]~38_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(11));

-- Location: LCCOMB_X62_Y69_N6
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Adder_INST|o_adder[11]~22_combout\ & \state.K4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder_INST|o_adder[11]~22_combout\,
	datac => \state.K4~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X62_Y69_N7
\r_yn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(11));

-- Location: LCCOMB_X60_Y69_N12
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\state.K4~q\ & ((r_xn(11)))) # (!\state.K4~q\ & (r_yn(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datab => r_yn(11),
	datad => r_xn(11),
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K1~q\,
	datad => \Adder_INST|o_adder[11]~22_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X60_Y69_N15
\r_zn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(11));

-- Location: FF_X60_Y69_N13
\i_adder_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector101~0_combout\,
	asdata => r_zn(11),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(11));

-- Location: LCCOMB_X61_Y69_N22
\Adder_INST|o_adder[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[11]~22_combout\ = (i_adder_b(11) & ((i_adder_a(11) & (\Adder_INST|o_adder[10]~21\ & VCC)) # (!i_adder_a(11) & (!\Adder_INST|o_adder[10]~21\)))) # (!i_adder_b(11) & ((i_adder_a(11) & (!\Adder_INST|o_adder[10]~21\)) # (!i_adder_a(11) & 
-- ((\Adder_INST|o_adder[10]~21\) # (GND)))))
-- \Adder_INST|o_adder[11]~23\ = CARRY((i_adder_b(11) & (!i_adder_a(11) & !\Adder_INST|o_adder[10]~21\)) # (!i_adder_b(11) & ((!\Adder_INST|o_adder[10]~21\) # (!i_adder_a(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(11),
	datab => i_adder_a(11),
	datad => VCC,
	cin => \Adder_INST|o_adder[10]~21\,
	combout => \Adder_INST|o_adder[11]~22_combout\,
	cout => \Adder_INST|o_adder[11]~23\);

-- Location: LCCOMB_X61_Y68_N28
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[11]~22_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_X_INST|o_LUT_X\(11),
	datab => \state.K5~q\,
	datad => \Adder_INST|o_adder[11]~22_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X61_Y68_N29
\r_xn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(11));

-- Location: LCCOMB_X60_Y70_N4
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\state.K2~q\ & ((r_yn(11)))) # (!\state.K2~q\ & (r_xn(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_xn(11),
	datac => \state.K2~q\,
	datad => r_yn(11),
	combout => \Selector67~0_combout\);

-- Location: FF_X60_Y70_N5
\i_bitshift[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(11));

-- Location: LCCOMB_X60_Y71_N30
\bit_shift_INST|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~29_combout\ = (!\iteration_counter_INST|cnt\(1) & ((\iteration_counter_INST|cnt\(0) & (i_bitshift(12))) # (!\iteration_counter_INST|cnt\(0) & ((i_bitshift(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => i_bitshift(12),
	datac => i_bitshift(11),
	datad => \iteration_counter_INST|cnt\(1),
	combout => \bit_shift_INST|ShiftRight0~29_combout\);

-- Location: LCCOMB_X60_Y71_N24
\bit_shift_INST|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~30_combout\ = (\bit_shift_INST|ShiftRight0~29_combout\) # ((\iteration_counter_INST|cnt\(1) & \bit_shift_INST|ShiftRight0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datac => \bit_shift_INST|ShiftRight0~29_combout\,
	datad => \bit_shift_INST|ShiftRight0~12_combout\,
	combout => \bit_shift_INST|ShiftRight0~30_combout\);

-- Location: LCCOMB_X60_Y71_N2
\Selector83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~2_combout\ = (\iteration_counter_INST|cnt\(2) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(2) & ((\iteration_counter_INST|cnt\(3) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(3) & ((\bit_shift_INST|ShiftRight0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(2),
	datab => i_bitshift(15),
	datac => \iteration_counter_INST|cnt\(3),
	datad => \bit_shift_INST|ShiftRight0~30_combout\,
	combout => \Selector83~2_combout\);

-- Location: LCCOMB_X60_Y72_N14
\i_SI[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[11]~feeder_combout\ = \Selector83~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector83~2_combout\,
	combout => \i_SI[11]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N26
\LUT_16_INST|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~12_combout\ = (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(3) & (\iteration_counter_INST|cnt\(0) $ (\iteration_counter_INST|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~12_combout\);

-- Location: FF_X59_Y71_N27
\LUT_16_INST|o_LUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(11));

-- Location: FF_X60_Y72_N15
\i_SI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[11]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(11),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(11));

-- Location: LCCOMB_X59_Y72_N24
\sign_inverter_INST|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~24_combout\ = (i_SI(12) & (!\sign_inverter_INST|Add0~23\ & VCC)) # (!i_SI(12) & (\sign_inverter_INST|Add0~23\ $ (GND)))
-- \sign_inverter_INST|Add0~25\ = CARRY((!i_SI(12) & !\sign_inverter_INST|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(12),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~23\,
	combout => \sign_inverter_INST|Add0~24_combout\,
	cout => \sign_inverter_INST|Add0~25\);

-- Location: LCCOMB_X58_Y72_N4
\sign_inverter_INST|o_SI[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[12]~11_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~24_combout\))) # (!i_SI_control(0) & (i_SI(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(12),
	datab => i_SI_control(0),
	datac => \sign_inverter_INST|Add0~24_combout\,
	datad => i_SI_control(1),
	combout => \sign_inverter_INST|o_SI[12]~11_combout\);

-- Location: LCCOMB_X57_Y72_N24
\i_adder_b[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[12]~40_combout\ = (\i_adder_b[11]~39\ & ((\sign_inverter_INST|o_SI[12]~11_combout\ $ (!\state.K3~q\)))) # (!\i_adder_b[11]~39\ & (\sign_inverter_INST|o_SI[12]~11_combout\ $ (\state.K3~q\ $ (GND))))
-- \i_adder_b[12]~41\ = CARRY((!\i_adder_b[11]~39\ & (\sign_inverter_INST|o_SI[12]~11_combout\ $ (!\state.K3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[12]~11_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[11]~39\,
	combout => \i_adder_b[12]~40_combout\,
	cout => \i_adder_b[12]~41\);

-- Location: FF_X57_Y72_N25
\i_adder_b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[12]~40_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(12));

-- Location: LCCOMB_X61_Y69_N24
\Adder_INST|o_adder[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[12]~24_combout\ = ((i_adder_a(12) $ (i_adder_b(12) $ (!\Adder_INST|o_adder[11]~23\)))) # (GND)
-- \Adder_INST|o_adder[12]~25\ = CARRY((i_adder_a(12) & ((i_adder_b(12)) # (!\Adder_INST|o_adder[11]~23\))) # (!i_adder_a(12) & (i_adder_b(12) & !\Adder_INST|o_adder[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(12),
	datab => i_adder_b(12),
	datad => VCC,
	cin => \Adder_INST|o_adder[11]~23\,
	combout => \Adder_INST|o_adder[12]~24_combout\,
	cout => \Adder_INST|o_adder[12]~25\);

-- Location: LCCOMB_X61_Y68_N2
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.K5~q\ & ((\Adder_INST|o_adder[12]~24_combout\))) # (!\state.K5~q\ & (\LUT_X_INST|o_LUT_X\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LUT_X_INST|o_LUT_X\(12),
	datac => \Adder_INST|o_adder[12]~24_combout\,
	datad => \state.K5~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X61_Y68_N3
\r_xn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(12));

-- Location: LCCOMB_X61_Y70_N24
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\state.K2~q\ & ((r_yn(12)))) # (!\state.K2~q\ & (r_xn(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K2~q\,
	datac => r_xn(12),
	datad => r_yn(12),
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X60_Y70_N10
\i_bitshift[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_bitshift[12]~feeder_combout\ = \Selector66~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector66~0_combout\,
	combout => \i_bitshift[12]~feeder_combout\);

-- Location: FF_X60_Y70_N11
\i_bitshift[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_bitshift[12]~feeder_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(12));

-- Location: LCCOMB_X60_Y71_N26
\bit_shift_INST|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~3_combout\ = (!\iteration_counter_INST|cnt\(0) & ((\iteration_counter_INST|cnt\(1) & (i_bitshift(14))) # (!\iteration_counter_INST|cnt\(1) & ((i_bitshift(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(1),
	datab => i_bitshift(14),
	datac => i_bitshift(12),
	datad => \iteration_counter_INST|cnt\(0),
	combout => \bit_shift_INST|ShiftRight0~3_combout\);

-- Location: LCCOMB_X60_Y71_N22
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\LUT_16_INST|rom~0_combout\ & ((\bit_shift_INST|ShiftRight0~3_combout\) # ((\bit_shift_INST|ShiftRight0~2_combout\)))) # (!\LUT_16_INST|rom~0_combout\ & (((i_bitshift(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_shift_INST|ShiftRight0~3_combout\,
	datab => i_bitshift(15),
	datac => \LUT_16_INST|rom~0_combout\,
	datad => \bit_shift_INST|ShiftRight0~2_combout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X60_Y72_N0
\i_SI[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[12]~feeder_combout\ = \Selector82~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector82~0_combout\,
	combout => \i_SI[12]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N28
\LUT_16_INST|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|rom~13_combout\ = (!\iteration_counter_INST|cnt\(2) & (!\iteration_counter_INST|cnt\(1) & !\iteration_counter_INST|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iteration_counter_INST|cnt\(2),
	datac => \iteration_counter_INST|cnt\(1),
	datad => \iteration_counter_INST|cnt\(3),
	combout => \LUT_16_INST|rom~13_combout\);

-- Location: FF_X59_Y71_N29
\LUT_16_INST|o_LUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|rom~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(12));

-- Location: FF_X60_Y72_N1
\i_SI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[12]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(12),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(12));

-- Location: LCCOMB_X59_Y72_N26
\sign_inverter_INST|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~26_combout\ = (i_SI(13) & ((\sign_inverter_INST|Add0~25\) # (GND))) # (!i_SI(13) & (!\sign_inverter_INST|Add0~25\))
-- \sign_inverter_INST|Add0~27\ = CARRY((i_SI(13)) # (!\sign_inverter_INST|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_SI(13),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~25\,
	combout => \sign_inverter_INST|Add0~26_combout\,
	cout => \sign_inverter_INST|Add0~27\);

-- Location: LCCOMB_X58_Y72_N30
\sign_inverter_INST|o_SI[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[13]~12_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~26_combout\))) # (!i_SI_control(0) & (i_SI(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(13),
	datab => i_SI_control(0),
	datac => i_SI_control(1),
	datad => \sign_inverter_INST|Add0~26_combout\,
	combout => \sign_inverter_INST|o_SI[13]~12_combout\);

-- Location: LCCOMB_X57_Y72_N26
\i_adder_b[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[13]~42_combout\ = (\i_adder_b[12]~41\ & (\sign_inverter_INST|o_SI[13]~12_combout\ $ ((\state.K3~q\)))) # (!\i_adder_b[12]~41\ & ((\sign_inverter_INST|o_SI[13]~12_combout\ $ (!\state.K3~q\)) # (GND)))
-- \i_adder_b[13]~43\ = CARRY((\sign_inverter_INST|o_SI[13]~12_combout\ $ (\state.K3~q\)) # (!\i_adder_b[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[13]~12_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[12]~41\,
	combout => \i_adder_b[13]~42_combout\,
	cout => \i_adder_b[13]~43\);

-- Location: FF_X57_Y72_N27
\i_adder_b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[13]~42_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(13));

-- Location: LCCOMB_X61_Y72_N26
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.K4~q\ & ((\Adder_INST|o_adder[13]~26_combout\))) # (!\state.K4~q\ & (\LUT_Y_INST|o_LUT_Y\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K4~q\,
	datac => \LUT_Y_INST|o_LUT_Y\(12),
	datad => \Adder_INST|o_adder[13]~26_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X61_Y72_N27
\r_yn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(13));

-- Location: LCCOMB_X60_Y69_N18
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\state.K4~q\ & ((r_xn(13)))) # (!\state.K4~q\ & (r_yn(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(13),
	datab => r_xn(13),
	datad => \state.K4~q\,
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X60_Y69_N8
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (!\state.K1~q\ & \Adder_INST|o_adder[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K1~q\,
	datac => \Adder_INST|o_adder[13]~26_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X60_Y69_N9
\r_zn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \Selector62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zn(13));

-- Location: FF_X60_Y69_N19
\i_adder_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector99~0_combout\,
	asdata => r_zn(13),
	sload => \state.K5~q\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_a(13));

-- Location: LCCOMB_X61_Y69_N26
\Adder_INST|o_adder[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[13]~26_combout\ = (i_adder_b(13) & ((i_adder_a(13) & (\Adder_INST|o_adder[12]~25\ & VCC)) # (!i_adder_a(13) & (!\Adder_INST|o_adder[12]~25\)))) # (!i_adder_b(13) & ((i_adder_a(13) & (!\Adder_INST|o_adder[12]~25\)) # (!i_adder_a(13) & 
-- ((\Adder_INST|o_adder[12]~25\) # (GND)))))
-- \Adder_INST|o_adder[13]~27\ = CARRY((i_adder_b(13) & (!i_adder_a(13) & !\Adder_INST|o_adder[12]~25\)) # (!i_adder_b(13) & ((!\Adder_INST|o_adder[12]~25\) # (!i_adder_a(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_b(13),
	datab => i_adder_a(13),
	datad => VCC,
	cin => \Adder_INST|o_adder[12]~25\,
	combout => \Adder_INST|o_adder[13]~26_combout\,
	cout => \Adder_INST|o_adder[13]~27\);

-- Location: LCCOMB_X63_Y69_N26
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.K5~q\ & \Adder_INST|o_adder[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K5~q\,
	datac => \Adder_INST|o_adder[13]~26_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X63_Y69_N27
\r_xn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_xn(13));

-- Location: LCCOMB_X61_Y70_N18
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\state.K2~q\ & ((r_yn(13)))) # (!\state.K2~q\ & (r_xn(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K2~q\,
	datac => r_xn(13),
	datad => r_yn(13),
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X60_Y70_N12
\i_bitshift[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_bitshift[13]~feeder_combout\ = \Selector65~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector65~0_combout\,
	combout => \i_bitshift[13]~feeder_combout\);

-- Location: FF_X60_Y70_N13
\i_bitshift[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_bitshift[13]~feeder_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(13));

-- Location: LCCOMB_X60_Y71_N10
\bit_shift_INST|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_shift_INST|ShiftRight0~12_combout\ = (\iteration_counter_INST|cnt\(0) & (i_bitshift(14))) # (!\iteration_counter_INST|cnt\(0) & ((i_bitshift(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(0),
	datab => i_bitshift(14),
	datad => i_bitshift(13),
	combout => \bit_shift_INST|ShiftRight0~12_combout\);

-- Location: LCCOMB_X60_Y72_N10
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\iteration_counter_INST|cnt\(3) & (i_bitshift(15))) # (!\iteration_counter_INST|cnt\(3) & ((\i_SI[1]~1_combout\ & ((\bit_shift_INST|ShiftRight0~12_combout\))) # (!\i_SI[1]~1_combout\ & (i_bitshift(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iteration_counter_INST|cnt\(3),
	datab => i_bitshift(15),
	datac => \bit_shift_INST|ShiftRight0~12_combout\,
	datad => \i_SI[1]~1_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X60_Y72_N18
\i_SI[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_SI[13]~feeder_combout\ = \Selector81~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector81~0_combout\,
	combout => \i_SI[13]~feeder_combout\);

-- Location: LCCOMB_X59_Y71_N22
\LUT_16_INST|o_LUT[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_16_INST|o_LUT[13]~feeder_combout\ = \LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~0_combout\,
	combout => \LUT_16_INST|o_LUT[13]~feeder_combout\);

-- Location: FF_X59_Y71_N23
\LUT_16_INST|o_LUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_mem_enable~clkctrl_outclk\,
	d => \LUT_16_INST|o_LUT[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_16_INST|o_LUT\(13));

-- Location: FF_X60_Y72_N19
\i_SI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_SI[13]~feeder_combout\,
	asdata => \LUT_16_INST|o_LUT\(13),
	sload => \state.K4~q\,
	ena => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(13));

-- Location: LCCOMB_X59_Y72_N28
\sign_inverter_INST|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~28_combout\ = (i_SI(14) & (!\sign_inverter_INST|Add0~27\ & VCC)) # (!i_SI(14) & (\sign_inverter_INST|Add0~27\ $ (GND)))
-- \sign_inverter_INST|Add0~29\ = CARRY((!i_SI(14) & !\sign_inverter_INST|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(14),
	datad => VCC,
	cin => \sign_inverter_INST|Add0~27\,
	combout => \sign_inverter_INST|Add0~28_combout\,
	cout => \sign_inverter_INST|Add0~29\);

-- Location: LCCOMB_X58_Y72_N20
\sign_inverter_INST|o_SI[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[14]~13_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & ((\sign_inverter_INST|Add0~28_combout\))) # (!i_SI_control(0) & (i_SI(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI(14),
	datab => i_SI_control(0),
	datac => i_SI_control(1),
	datad => \sign_inverter_INST|Add0~28_combout\,
	combout => \sign_inverter_INST|o_SI[14]~13_combout\);

-- Location: LCCOMB_X57_Y72_N28
\i_adder_b[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[14]~44_combout\ = (\i_adder_b[13]~43\ & ((\sign_inverter_INST|o_SI[14]~13_combout\ $ (!\state.K3~q\)))) # (!\i_adder_b[13]~43\ & (\sign_inverter_INST|o_SI[14]~13_combout\ $ (\state.K3~q\ $ (GND))))
-- \i_adder_b[14]~45\ = CARRY((!\i_adder_b[13]~43\ & (\sign_inverter_INST|o_SI[14]~13_combout\ $ (!\state.K3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_inverter_INST|o_SI[14]~13_combout\,
	datab => \state.K3~q\,
	datad => VCC,
	cin => \i_adder_b[13]~43\,
	combout => \i_adder_b[14]~44_combout\,
	cout => \i_adder_b[14]~45\);

-- Location: FF_X57_Y72_N29
\i_adder_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[14]~44_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(14));

-- Location: LCCOMB_X61_Y69_N28
\Adder_INST|o_adder[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[14]~28_combout\ = ((i_adder_a(14) $ (i_adder_b(14) $ (!\Adder_INST|o_adder[13]~27\)))) # (GND)
-- \Adder_INST|o_adder[14]~29\ = CARRY((i_adder_a(14) & ((i_adder_b(14)) # (!\Adder_INST|o_adder[13]~27\))) # (!i_adder_a(14) & (i_adder_b(14) & !\Adder_INST|o_adder[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(14),
	datab => i_adder_b(14),
	datad => VCC,
	cin => \Adder_INST|o_adder[13]~27\,
	combout => \Adder_INST|o_adder[14]~28_combout\,
	cout => \Adder_INST|o_adder[14]~29\);

-- Location: LCCOMB_X62_Y69_N24
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.K4~q\ & \Adder_INST|o_adder[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.K4~q\,
	datad => \Adder_INST|o_adder[14]~28_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X62_Y69_N25
\r_yn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(14));

-- Location: LCCOMB_X60_Y71_N28
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\state.K2~q\ & (r_yn(14))) # (!\state.K2~q\ & ((r_xn(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.K2~q\,
	datac => r_yn(14),
	datad => r_xn(14),
	combout => \Selector64~0_combout\);

-- Location: FF_X60_Y71_N29
\i_bitshift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_bitshift(14));

-- Location: LCCOMB_X60_Y71_N4
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\WideOr1~0_combout\ & ((\LessThan0~0_combout\ & (i_bitshift(14))) # (!\LessThan0~0_combout\ & ((i_bitshift(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => i_bitshift(14),
	datac => \LessThan0~0_combout\,
	datad => i_bitshift(15),
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X59_Y71_N20
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\Selector80~0_combout\) # ((!\WideOr13~0_combout\ & i_SI(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr13~0_combout\,
	datac => i_SI(14),
	datad => \Selector80~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: FF_X59_Y71_N21
\i_SI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector80~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI(14));

-- Location: LCCOMB_X59_Y72_N30
\sign_inverter_INST|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|Add0~30_combout\ = \sign_inverter_INST|Add0~29\ $ (!i_SI(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i_SI(15),
	cin => \sign_inverter_INST|Add0~29\,
	combout => \sign_inverter_INST|Add0~30_combout\);

-- Location: LCCOMB_X58_Y72_N26
\sign_inverter_INST|o_SI[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_inverter_INST|o_SI[15]~14_combout\ = (!i_SI_control(1) & ((i_SI_control(0) & (\sign_inverter_INST|Add0~30_combout\)) # (!i_SI_control(0) & ((i_SI(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_SI_control(1),
	datab => i_SI_control(0),
	datac => \sign_inverter_INST|Add0~30_combout\,
	datad => i_SI(15),
	combout => \sign_inverter_INST|o_SI[15]~14_combout\);

-- Location: LCCOMB_X57_Y72_N30
\i_adder_b[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_adder_b[15]~46_combout\ = \state.K3~q\ $ (\i_adder_b[14]~45\ $ (!\sign_inverter_INST|o_SI[15]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state.K3~q\,
	datad => \sign_inverter_INST|o_SI[15]~14_combout\,
	cin => \i_adder_b[14]~45\,
	combout => \i_adder_b[15]~46_combout\);

-- Location: FF_X57_Y72_N31
\i_adder_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[15]~46_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(15));

-- Location: LCCOMB_X61_Y69_N30
\Adder_INST|o_adder[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder_INST|o_adder[15]~30_combout\ = i_adder_a(15) $ (\Adder_INST|o_adder[14]~29\ $ (i_adder_b(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_adder_a(15),
	datad => i_adder_b(15),
	cin => \Adder_INST|o_adder[14]~29\,
	combout => \Adder_INST|o_adder[15]~30_combout\);

-- Location: LCCOMB_X62_Y69_N22
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.K4~q\ & \Adder_INST|o_adder[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K4~q\,
	datac => \Adder_INST|o_adder[15]~30_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X62_Y69_N23
\r_yn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_yn(15));

-- Location: LCCOMB_X61_Y70_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!r_yn(15) & (!r_yn(12) & (!r_yn(14) & !r_yn(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(15),
	datab => r_yn(12),
	datac => r_yn(14),
	datad => r_yn(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X60_Y70_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!r_yn(8) & (!r_yn(9) & (!r_yn(10) & !r_yn(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(8),
	datab => r_yn(9),
	datac => r_yn(10),
	datad => r_yn(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y69_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!r_yn(3) & (!r_yn(1) & (!r_yn(2) & !r_yn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(3),
	datab => r_yn(1),
	datac => r_yn(2),
	datad => r_yn(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X62_Y70_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_yn(6) & (!r_yn(7) & (!r_yn(4) & !r_yn(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_yn(6),
	datab => r_yn(7),
	datac => r_yn(4),
	datad => r_yn(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X58_Y70_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X58_Y70_N19
\i_SI_control[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Equal0~4_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_SI_control(1));

-- Location: LCCOMB_X58_Y70_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \state.K3~q\ $ (((!i_SI_control(1) & i_SI(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_SI_control(1),
	datac => \state.K3~q\,
	datad => i_SI(0),
	combout => \Add0~0_combout\);

-- Location: FF_X57_Y72_N1
\i_adder_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \i_adder_b[0]~16_combout\,
	ena => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i_adder_b(0));

-- Location: FF_X61_Y69_N1
\r_zd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[0]~0_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(0));

-- Location: FF_X61_Y69_N3
\r_zd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[1]~2_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(1));

-- Location: FF_X61_Y69_N5
\r_zd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[2]~4_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(2));

-- Location: FF_X61_Y69_N7
\r_zd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[3]~6_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(3));

-- Location: FF_X61_Y69_N9
\r_zd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[4]~8_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(4));

-- Location: FF_X61_Y69_N11
\r_zd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[5]~10_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(5));

-- Location: FF_X61_Y69_N13
\r_zd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[6]~12_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(6));

-- Location: FF_X61_Y69_N15
\r_zd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[7]~14_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(7));

-- Location: FF_X61_Y69_N17
\r_zd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[8]~16_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(8));

-- Location: FF_X61_Y69_N19
\r_zd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[9]~18_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(9));

-- Location: FF_X61_Y69_N21
\r_zd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[10]~20_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(10));

-- Location: FF_X61_Y69_N23
\r_zd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[11]~22_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(11));

-- Location: FF_X61_Y69_N25
\r_zd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[12]~24_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(12));

-- Location: FF_X61_Y69_N27
\r_zd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[13]~26_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(13));

-- Location: FF_X61_Y69_N29
\r_zd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[14]~28_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(14));

-- Location: FF_X61_Y69_N31
\r_zd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Adder_INST|o_adder[15]~30_combout\,
	ena => \state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_zd(15));

-- Location: LCCOMB_X58_Y69_N6
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.done~q\) # ((!\state.idle~q\ & \var_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datac => \var_done~q\,
	datad => \state.done~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X58_Y69_N7
var_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_done~q\);

-- Location: LCCOMB_X58_Y69_N16
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.idle~q\) # ((\state_LED[0]~reg0_q\ & ((\state.K5~q\) # (!\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datab => \state.idle~q\,
	datac => \state_LED[0]~reg0_q\,
	datad => \WideOr1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X58_Y69_N17
\state_LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[0]~reg0_q\);

-- Location: LCCOMB_X58_Y69_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\state_LED[1]~reg0_q\ & ((\state.K5~q\) # (!\WideOr1~0_combout\)))) # (!\state.K1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datab => \state.K1~q\,
	datac => \state_LED[1]~reg0_q\,
	datad => \WideOr1~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X58_Y69_N21
\state_LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[1]~reg0_q\);

-- Location: LCCOMB_X58_Y69_N0
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.done~q\) # ((\state_LED[2]~reg0_q\ & ((\state.K5~q\) # (!\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datab => \state.done~q\,
	datac => \state_LED[2]~reg0_q\,
	datad => \WideOr1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X58_Y69_N1
\state_LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[2]~reg0_q\);

-- Location: LCCOMB_X58_Y69_N10
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.K4~q\) # ((\state_LED[3]~reg0_q\ & ((\state.K5~q\) # (!\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.K5~q\,
	datab => \state.K4~q\,
	datac => \state_LED[3]~reg0_q\,
	datad => \WideOr1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X58_Y69_N11
\state_LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_LED[3]~reg0_q\);

-- Location: LCCOMB_X53_Y72_N12
\LUT_TEST[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[0]~reg0feeder_combout\);

-- Location: FF_X53_Y72_N13
\LUT_TEST[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[0]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[0]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N8
\LUT_TEST[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[1]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[1]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N9
\LUT_TEST[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[1]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[1]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N2
\LUT_TEST[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[2]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[2]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N3
\LUT_TEST[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[2]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[2]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N20
\LUT_TEST[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[3]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[3]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N21
\LUT_TEST[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[3]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[3]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N12
\LUT_TEST[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[4]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[4]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N13
\LUT_TEST[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[4]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[4]~reg0_q\);

-- Location: LCCOMB_X53_Y72_N2
\LUT_TEST[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[5]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[5]~reg0feeder_combout\);

-- Location: FF_X53_Y72_N3
\LUT_TEST[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[5]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[5]~reg0_q\);

-- Location: LCCOMB_X53_Y72_N0
\LUT_TEST[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[6]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[6]~reg0feeder_combout\);

-- Location: FF_X53_Y72_N1
\LUT_TEST[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[6]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[6]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N6
\LUT_TEST[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[8]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[8]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N7
\LUT_TEST[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[8]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[8]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N24
\LUT_TEST[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[9]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_Y_INST|o_LUT_Y\(9),
	combout => \LUT_TEST[9]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N25
\LUT_TEST[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[9]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[9]~reg0_q\);

-- Location: LCCOMB_X58_Y70_N4
\LUT_TEST[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[10]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LUT_TEST[10]~reg0feeder_combout\);

-- Location: FF_X58_Y70_N5
\LUT_TEST[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[10]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[10]~reg0_q\);

-- Location: LCCOMB_X61_Y72_N22
\LUT_TEST[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[12]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[12]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N23
\LUT_TEST[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[12]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[12]~reg0_q\);

-- Location: LCCOMB_X62_Y72_N14
\LUT_TEST[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_TEST[13]~reg0feeder_combout\ = \LUT_Y_INST|o_LUT_Y\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_Y_INST|o_LUT_Y\(12),
	combout => \LUT_TEST[13]~reg0feeder_combout\);

-- Location: FF_X62_Y72_N15
\LUT_TEST[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_x|tmp~clkctrl_outclk\,
	d => \LUT_TEST[13]~reg0feeder_combout\,
	ena => \ALT_INV_state.K1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LUT_TEST[13]~reg0_q\);

-- Location: IOIBUF_X102_Y73_N8
\i_x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(0),
	o => \i_x[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\i_x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(1),
	o => \i_x[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\i_x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(2),
	o => \i_x[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\i_x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(3),
	o => \i_x[3]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\i_x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(4),
	o => \i_x[4]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\i_x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(5),
	o => \i_x[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\i_x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(6),
	o => \i_x[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\i_x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(7),
	o => \i_x[7]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\i_x[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(8),
	o => \i_x[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\i_x[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(9),
	o => \i_x[9]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\i_x[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(10),
	o => \i_x[10]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\i_x[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(11),
	o => \i_x[11]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\i_x[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(12),
	o => \i_x[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\i_x[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(13),
	o => \i_x[13]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\i_x[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(14),
	o => \i_x[14]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\i_x[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x(15),
	o => \i_x[15]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\i_y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(0),
	o => \i_y[0]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\i_y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(1),
	o => \i_y[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\i_y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(2),
	o => \i_y[2]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\i_y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(3),
	o => \i_y[3]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\i_y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(4),
	o => \i_y[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\i_y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(5),
	o => \i_y[5]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\i_y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(6),
	o => \i_y[6]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\i_y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(7),
	o => \i_y[7]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\i_y[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(8),
	o => \i_y[8]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\i_y[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(9),
	o => \i_y[9]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\i_y[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(10),
	o => \i_y[10]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\i_y[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(11),
	o => \i_y[11]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\i_y[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(12),
	o => \i_y[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\i_y[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(13),
	o => \i_y[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\i_y[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(14),
	o => \i_y[14]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\i_y[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y(15),
	o => \i_y[15]~input_o\);

ww_o_z(0) <= \o_z[0]~output_o\;

ww_o_z(1) <= \o_z[1]~output_o\;

ww_o_z(2) <= \o_z[2]~output_o\;

ww_o_z(3) <= \o_z[3]~output_o\;

ww_o_z(4) <= \o_z[4]~output_o\;

ww_o_z(5) <= \o_z[5]~output_o\;

ww_o_z(6) <= \o_z[6]~output_o\;

ww_o_z(7) <= \o_z[7]~output_o\;

ww_o_z(8) <= \o_z[8]~output_o\;

ww_o_z(9) <= \o_z[9]~output_o\;

ww_o_z(10) <= \o_z[10]~output_o\;

ww_o_z(11) <= \o_z[11]~output_o\;

ww_o_z(12) <= \o_z[12]~output_o\;

ww_o_z(13) <= \o_z[13]~output_o\;

ww_o_z(14) <= \o_z[14]~output_o\;

ww_o_z(15) <= \o_z[15]~output_o\;

ww_o_done <= \o_done~output_o\;

ww_state_LED(0) <= \state_LED[0]~output_o\;

ww_state_LED(1) <= \state_LED[1]~output_o\;

ww_state_LED(2) <= \state_LED[2]~output_o\;

ww_state_LED(3) <= \state_LED[3]~output_o\;

ww_LUT_TEST(0) <= \LUT_TEST[0]~output_o\;

ww_LUT_TEST(1) <= \LUT_TEST[1]~output_o\;

ww_LUT_TEST(2) <= \LUT_TEST[2]~output_o\;

ww_LUT_TEST(3) <= \LUT_TEST[3]~output_o\;

ww_LUT_TEST(4) <= \LUT_TEST[4]~output_o\;

ww_LUT_TEST(5) <= \LUT_TEST[5]~output_o\;

ww_LUT_TEST(6) <= \LUT_TEST[6]~output_o\;

ww_LUT_TEST(7) <= \LUT_TEST[7]~output_o\;

ww_LUT_TEST(8) <= \LUT_TEST[8]~output_o\;

ww_LUT_TEST(9) <= \LUT_TEST[9]~output_o\;

ww_LUT_TEST(10) <= \LUT_TEST[10]~output_o\;

ww_LUT_TEST(11) <= \LUT_TEST[11]~output_o\;

ww_LUT_TEST(12) <= \LUT_TEST[12]~output_o\;

ww_LUT_TEST(13) <= \LUT_TEST[13]~output_o\;

ww_LUT_TEST(14) <= \LUT_TEST[14]~output_o\;

ww_LUT_TEST(15) <= \LUT_TEST[15]~output_o\;
END structure;


