`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 12:56:09 AM
// Design Name: 
// Module Name: partial_full_adder
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

// PFA input: A,B, Cin; output: sum, P, G; G = A AND B; P = A OR B; sum = A XOR B XOR cin

module partial_full_adder(
 input  wire a,
 input  wire b,
 input  wire cin,
 output wire sum,
 output wire P,
 output wire G
    );
    
    assign P = a | b;
    assign G = a & b;
    assign sum = (a ^ b) ^ cin;
    
endmodule
