analyze -library WORK -format vhdl {../src/REG.vhd ../src/DFF.vhd ../src/FIR_advanced.vhd}
set power_preserve_rtl_hier_names true
elaborate FIR -architecture struct -library WORK
#timing limit = 1.04
#create_clock -name "my_clk" -period 1.55 {clk}
create_clock -name "my_clk" -period 6.2 {clk}
set_dont_touch_network my_clk
set_clock_uncertainty 0.07 [get_clocks "my_clk"]
set_input_delay 0.5 -max -clock my_clk [remove_from_collection [all_inputs] clk]
set_output_delay 0.5 -max -clock my_clk [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]
compile

#report_timing > FIR_advanced_timing_limit.txt
#report_area > FIR_advanced_area_limit.txt
#report_power > FIR_advanced_pow_limit.txt

#report_timing > FIR_advanced_timing_fm4.txt
#report_area > FIR_advanced_area_fm4.txt
#report_power > FIR_advanced_pow_fm4_init.txt

ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist/myfir_advanced.sdf
write -f verilog -hierarchy -output ../netlist/myfir_advanced.v
write_sdc ../netlist/myfir_advanced.sdc