// manchester_encoder.v
module manchester_encoder (
    input  wire clk,          // system clock
    input  wire rst,          // active-high reset
    input  wire data_in,      // serial input data
    output reg  manchester_out // Manchester encoded output
);
    reg data_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_d <= 0;
            manchester_out <= 0;
        end else begin
            data_d <= data_in;
            // Manchester encoding: 
            // 1 -> high-to-low, 0 -> low-to-high within one clock period
            manchester_out <= data_in ^ clk;
        end
    end
endmodule
