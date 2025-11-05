//=======================================================
//  File: top_manchester.v
//  Description: Top-level module connecting Manchester
//               encoder and decoder
//=======================================================

module top_manchester (
    input  wire clk,
    input  wire rst,
    input  wire data_in,
    output wire manchester_sig,
    output wire decoded_out
);

    // Instantiate Encoder
    manchester_encoder encoder_inst (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .manchester_out(manchester_sig)
    );

    // Instantiate Decoder
    manchester_decoder decoder_inst (
        .clk(clk),
        .rst(rst),
        .manchester_in(manchester_sig),
        .data_out(decoded_out)
    );

endmodule
