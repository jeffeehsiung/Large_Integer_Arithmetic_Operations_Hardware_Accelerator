`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 04:16:18 PM
// Design Name: 
// Module Name: CLA_Mb_FOR
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


module CLA_Mb_FOR #(parameter M = 16)(
    input [M-1:0] a,
    input [M-1:0] b,
    input cin,
    output cout,
    output [M-1:0] sum
    );
    
    // propagate and generate
    wire [M-1:0] p, g;
    // cout = g + p.c1. using more bits to avoid updating
    wire [M-1:0] c1;

    // Generate carry bits
    // first special case
    assign p[0] = a[0] | b[0];
    assign g[0] = a[0] & b[0];
    assign c1[0] = cin;
    assign sum[0] = (a[0] ^ b[0]) ^ c1[0];
    
    genvar i;
    generate
        for(i = 1; i < M; i = i + 1) 
        begin
            assign p[i] = a[i] | b[i];
            assign g[i] = a[i] & b[i];
            assign c1[i] = (g[i-1] | (p[i-1] & c1[i-1]));
            assign sum[i] = (a[i] ^ b[i]) ^ c1[i];
        end
    endgenerate

    // Generate sum bits
    assign cout = g[M-1] | (p[M-1] & c1[M-1]);

endmodule