`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 09:38:05 AM
// Design Name: 
// Module Name: ripple_carry_adder_4cal
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


module ripple_carry_adder_4cal (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);

wire [3:0] sum_wire;
wire [3:0] cout_wire;

full_adder fa0(a[0], b[0], cin, sum_wire[0], cout_wire[0]);
full_adder fa1(a[1], b[1], cout_wire[0], sum_wire[1], cout_wire[1]);
full_adder fa2(a[2], b[2], cout_wire[1], sum_wire[2], cout_wire[2]);
full_adder fa3(a[3], b[3], cout_wire[2], sum_wire[3], cout_wire[3]);

assign sum = sum_wire;
assign cout = cout_wire[3];

endmodule

