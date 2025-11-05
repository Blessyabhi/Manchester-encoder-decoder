# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Sat Nov 01 14:10:29 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design top_manchester

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports rst]
set_input_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports data_in]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports manchester_sig]
set_output_delay -clock [get_clocks CLK] -add_delay 1.0 [get_ports decoded_out]
set_wire_load_mode "enclosed"
