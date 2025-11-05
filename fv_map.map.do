
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point data_in data_in -type PI PI

//output ports
add mapped point manchester_sig manchester_sig -type PO PO
add mapped point decoded_out decoded_out -type PO PO

//inout ports




//Sequential Pins
add mapped point decoder_inst/data_out/q decoder_inst/data_out_reg/Q  -type DFF DFF
add mapped point encoder_inst/manchester_out/q encoder_inst/manchester_out_reg/Q  -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
