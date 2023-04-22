`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 04:14:13 PM
// Design Name: 
// Module Name: mux2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2to1(
    input [31:0] a,
    input [31:0] b,
    input sel,
    output reg [31:0] out
    );

    always @(*) begin
    // if sel is high
        if(sel) begin
            out = b;
        end else begin
            out = a;
        end
    end

endmodule
