`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 12:51:30 AM
// Design Name: 
// Module Name: carry_lookahead_adder
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


module carry_lookahead_adder #(
    parameter   n = 8 )
    (
    input   wire [n-1:0] a,
    input   wire [n-1:0] b,
    input   wire cin,
    output  wire [n-1:0] sum,
    output  wire cout 
    );
    
    wire [n-1:0] P, G;
    wire [n:0] C;
   
   // instantiate the first PFA
    assign C[0] = cin;
    partial_full_adder pfa_inst0(a[0], b[0], C[0], sum[0], P[0], G[0]);
    
    assign C[1] = G[0] | (P[0] & C[0]);
    partial_full_adder pfa_inst1(a[1], b[1], C[1], sum[1], P[1], G[1]);
    
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst2(a[2], b[2], C[2], sum[2], P[2], G[2]);
    
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst3(a[3], b[3], C[3], sum[3], P[3], G[3]);
    
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst4(a[4], b[4], C[4], sum[4], P[4], G[4]);
    
    assign C[5] = G[4] | (P[4] & G[3]) | (P[4] & P[3] & G[2]) | (P[4] & P[3] & P[2] & G[1]) | (P[4] & P[3] & P[2] & P[1] & G[0]) | (P[4] & P[3] & P[2] & P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst5(a[5], b[5], C[5], sum[5], P[5], G[5]);
    
    assign C[6] = G[5] | (P[5] & G[4]) | (P[5] & P[4] & G[3]) | (P[5] & P[4] & P[3] & G[2]) | (P[5] & P[4] & P[3] & P[2] & G[1]) | (P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) | (P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst6(a[6], b[6], C[6], sum[6], P[6], G[6]);
    
    assign C[7] = G[6] | (P[6] & G[5]) | (P[6] & P[5] & G[4]) | (P[6] & P[5] & P[4] & G[3]) | (P[6] & P[5] & P[4] & P[3] & G[2]) | (P[6] & P[5] & P[4] & P[3] & P[2] & G[1]) | (P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) | (P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & C[0]);
    partial_full_adder pfa_inst7(a[7], b[7], C[7], sum[7], P[7], G[7]);
    
    assign C[8] = G[7] | (P[7] & G[6]) | (P[7] & P[6] & G[5]) | (P[7] & P[6] & P[5] & G[4]) | (P[7] & P[6] & P[5] & P[4] & G[3]) | (P[7] & P[6] & P[5] & P[4] & P[3] & G[2]) | (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1]) | (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) | (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & C[0]);
    

    // generate sum and carry bit
    assign cout = C[8];
    
endmodule
