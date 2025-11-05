// manchester_decoder.v
module manchester_decoder (
    input  wire clk,
    input  wire rst,
    input  wire manchester_in,
    output reg  data_out
);
    reg manchester_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            manchester_d <= 0;
            data_out <= 0;
        end else begin
            manchester_d <= manchester_in;
            // Decode by sampling at middle of bit period
            data_out <= manchester_in ^ clk;
        end
    end
endmodule
