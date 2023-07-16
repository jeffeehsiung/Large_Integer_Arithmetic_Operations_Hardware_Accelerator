`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2023 05:39:39 PM
// Design Name: 
// Module Name: PG
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


module PG(
    input [15:0] A,
    input [15:0] B,
    output [1:0] pg15,
    output [1:0] pg14,
    output [1:0] pg13,
    output [1:0] pg12,
    output [1:0] pg11,
    output [1:0] pg10,
    output [1:0] pg9,
    output [1:0] pg8,
    output [1:0] pg7,
    output [1:0] pg6,
    output [1:0] pg5,
    output [1:0] pg4,
    output [1:0] pg3,
    output [1:0] pg2,
    output [1:0] pg1,
    output [1:0] pg0 
    );
    

    assign pg0 = {(A[0]^B[0]), (A[0]&B[0])};
    assign pg1 = {(A[1]^B[1]), (A[1]&B[1])};
    assign pg2 = {(A[2]^B[2]), (A[2]&B[2])};
    assign pg3 = {(A[3]^B[3]), (A[3]&B[3])};
    assign pg4 = {(A[4]^B[4]), (A[4]&B[4])};
    assign pg5 = {(A[5]^B[5]), (A[5]&B[5])};
    assign pg6 = {(A[6]^B[6]), (A[6]&B[6])};
    assign pg7 = {(A[7]^B[7]), (A[7]&B[7])};
    assign pg8 = {(A[8]^B[8]), (A[8]&B[8])};
    assign pg9 = {(A[9]^B[9]), (A[9]&B[9])};
    assign pg10 = {(A[10]^B[10]), (A[10]&B[10])};
    assign pg11 = {(A[11]^B[11]), (A[11]&B[11])};
    assign pg12 = {(A[12]^B[12]), (A[12]&B[12])};
    assign pg13 = {(A[13]^B[13]), (A[13]&B[13])};
    assign pg14 = {(A[14]^B[14]), (A[14]&B[14])};
    assign pg15 = {(A[15]^B[15]), (A[15]&B[15])};

endmodule
