`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 04:16:18 PM
// Design Name: 
// Module Name: CLA_32bit
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


module CLA_32bit(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output cout,
    output [31:0] sum
    );
    
    // propagate and generate
    wire [31:0] p, g;
    // cout = g + p.c1. using more bits to avoid updating
    wire [31:0] c1;

    // Generate generate and propagate signals
    assign p = a ^ b;
    assign g = a & b;

    // Generate carry bits
    // first special case
    assign c1[0] = g[0];
    
    genvar i;
    generate
        for(i = 1; i < 32; i = i + 1) 
        begin
            assign c1[i] = (g[i] | (p[i] & c1[i-1]));
        end
    endgenerate

    // Generate sum bits
    assign sum = p ^ cin;
    assign cout = g[31] | (p[31] & c1[30]);

endmodule