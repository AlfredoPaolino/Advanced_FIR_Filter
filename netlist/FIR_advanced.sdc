###################################################################

# Created by write_sdc on Tue Nov  8 15:56:50 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {dout3k[7]}]
set_load -pin_load 3.40189 [get_ports {dout3k[6]}]
set_load -pin_load 3.40189 [get_ports {dout3k[5]}]
set_load -pin_load 3.40189 [get_ports {dout3k[4]}]
set_load -pin_load 3.40189 [get_ports {dout3k[3]}]
set_load -pin_load 3.40189 [get_ports {dout3k[2]}]
set_load -pin_load 3.40189 [get_ports {dout3k[1]}]
set_load -pin_load 3.40189 [get_ports {dout3k[0]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[7]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[6]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[5]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[4]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[3]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[2]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[1]}]
set_load -pin_load 3.40189 [get_ports {dout3k1[0]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[7]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[6]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[5]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[4]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[3]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[2]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[1]}]
set_load -pin_load 3.40189 [get_ports {dout3k2[0]}]
set_load -pin_load 3.40189 [get_ports vout]
create_clock [get_ports clk]  -name my_clk  -period 6.2  -waveform {0 3.1}
set_clock_uncertainty 0.07  [get_clocks my_clk]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k1[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {din3k2[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports vin]
set_input_delay -clock my_clk  -max 0.5  [get_ports rst_n]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b0[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b1[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b2[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b3[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b4[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b5[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b6[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b7[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b8[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b9[0]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[7]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[6]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[5]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[4]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[3]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[2]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[1]}]
set_input_delay -clock my_clk  -max 0.5  [get_ports {b10[0]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[7]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[6]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[5]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[4]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[3]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[2]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[1]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k[0]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[7]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[6]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[5]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[4]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[3]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[2]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[1]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k1[0]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[7]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[6]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[5]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[4]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[3]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[2]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[1]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports {dout3k2[0]}]
set_output_delay -clock my_clk  -max 0.5  [get_ports vout]