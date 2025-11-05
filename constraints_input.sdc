## Clock
set_property PACKAGE_PIN Y9 [get_ports CLK100MHZ]
set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
create_clock -period 10.0 [get_ports CLK100MHZ] # 100MHz

## Switches
set_property PACKAGE_PIN F22 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

## Button (BTNC)
set_property PACKAGE_PIN K19 [get_ports BTNC]
set_property IOSTANDARD LVCMOS33 [get_ports BTNC]

## LEDs
set_property PACKAGE_PIN T22 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN T21 [get_ports {LED_ENC[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_ENC[1]}]
