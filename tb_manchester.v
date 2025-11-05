// tb_manchester.v
`timescale 1ns/1ps
module tb_manchester;
    reg clk = 0, rst = 0, data_in = 0;
    wire manchester_out;
    wire data_out;

    // Clock generation
    always #5 clk = ~clk; // 100 MHz clock

    // Instantiate encoder
    manchester_encoder enc(
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .manchester_out(manchester_out)
    );

    // Instantiate decoder
    manchester_decoder dec(
        .clk(clk),
        .rst(rst),
        .manchester_in(manchester_out),
        .data_out(data_out)
    );

    initial begin
        $dumpfile("tb_manchester.vcd");
        $dumpvars(0, tb_manchester);
        
        rst = 1; #10;
        rst = 0;

        // Test sequence
        data_in = 0; #20;
        data_in = 1; #20;
        data_in = 0; #20;
        data_in = 1; #20;
        data_in = 1; #20;
        data_in = 0; #20;
        #50;
        $finish;
    end
endmodule
