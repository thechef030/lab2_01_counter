`timescale 1ns/1ps

module counter4 (
    input wire clk, rst, enable, down,
    output reg [3:0] value
);

    always @(posedge clk) begin
        if (rst) value <= 4'd0;
        else if (enable) begin
            if (down) value <= value - 4'd1;
            else value <= value + 4'd1;
        end
    end

endmodule
