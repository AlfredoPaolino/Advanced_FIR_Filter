rm -r work
vlib work

#vcom -work ./work ../tb/example/clk_gen.vhd
#vcom -work ./work ../tb/example/data_maker_new.vhd
#vcom -work ./work ../tb/example/data_sink.vhd
#vlog -work ./work ../tb/example/tb_fir.v
#vlog -work ./work ../netlist/myfir.v

vcom -work ./work ../tb/example/tb_unfolded/clk_gen.vhd
vcom -work ./work ../tb/example/tb_unfolded/data_maker_new_unfolded.vhd
vcom -work ./work ../tb/example/tb_unfolded/data_sink_unfolded.vhd
vlog -work ./work ../tb/example/tb_unfolded/tb_filter_unfolded.v
vlog -work ./work ../netlist/myfir_advanced.v



vsim -voptargs=+acc -t ns +nowarnTSCALE -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_filter/UUT=../netlist/myfir_advanced.sdf work.tb_filter
vcd file ../vcd/myfir_advanced.vcd
vcd add /tb_filter/UUT/*

add wave CLK_i
add wave RST_n_i
#add wave DIN_i
add wave DIN3k_i
add wave DIN3k1_i
add wave DIN3k2_i       
add wave VIN_i
add wave DOUT3k_i
add wave DOUT3k1_i
add wave DOUT3k2_i
#add wave DOUT_i
add wave VOUT_i

run 300 us
