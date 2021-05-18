transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/sign_inverter.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/LUT_16.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/bit_shift.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/signed_adder.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/iteration_counter.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/Clock_Divider.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/LUT_X.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/LUT_Y.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/Debounce.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Time/CORDIC_time.vhd}

