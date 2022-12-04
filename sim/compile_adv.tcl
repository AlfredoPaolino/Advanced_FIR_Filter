rm -r work
vlib work

vcom -work ./work ../src/DFF.vhd
vcom -work ./work ../src/REG.vhd
vcom -work ./work ../src/FIR_advanced.vhd

vcom -work ./work ../tb/example/tb_unfolded/clk_gen.vhd
vcom -work ./work ../tb/example/tb_unfolded/data_maker_new_unfolded.vhd
vcom -work ./work ../tb/example/tb_unfolded/data_sink_unfolded.vhd
vlog -work ./work ../tb/example/tb_unfolded/tb_filter_unfolded.v

vsim work.tb_filter -voptargs=+acc
run 14440 ns