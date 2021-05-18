vsim -gui -l msim_transcript work.cordic_tb

force -freeze sim:/cordic_tb/i_x 1001011101010100 0
force -freeze sim:/cordic_tb/i_y 0001101011010100 0


force -freeze sim:/cordic_tb/i_x 1011011100010100 {390 ns}
force -freeze sim:/cordic_tb/i_y 1000101010110100 {390 ns}


force -freeze sim:/cordic_tb/i_x 0001011100110100 {780 ns}
force -freeze sim:/cordic_tb/i_y 1011101000010100 {780 ns}


force -freeze sim:/cordic_tb/i_enable_cordic 1 {10 ns} -cancel {20 ns}
force -freeze sim:/cordic_tb/i_enable_cordic 1 {400 ns} -cancel {410 ns}
force -freeze sim:/cordic_tb/i_enable_cordic 1 {790 ns} -cancel {800 ns}
add wave -position insertpoint sim:/cordic_tb/*

run