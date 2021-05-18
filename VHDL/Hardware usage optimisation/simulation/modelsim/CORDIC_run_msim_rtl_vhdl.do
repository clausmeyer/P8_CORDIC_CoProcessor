transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/sign_inverter.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/LUT_16.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/bit_shift.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/signed_adder.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/iteration_counter.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/Clock_Divider.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/LUT_X.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/LUT_Y.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/Debounce.vhd}
vcom -93 -work work {C:/Users/almsk/Documents/Git/P8-CoProcessor/FPGA_implementations/Area/CORDIC_area_2.vhd}

