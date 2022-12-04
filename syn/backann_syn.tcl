read_verilog -netlist ../netlist/myfir_advanced.v
read_saif -input ../saif/myfir_advanced.saif -instance tb_filter/UUT -scale 1 -unit ns
create_clock -name "my_clk" -period 6.2 {clk}
report_power > FIR_advanced_pow.txt