`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2023 05:23:09 PM
// Design Name: 
// Module Name: brent_kung_16b
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


module brent_kung_16b(
    input [15:0] A,
    input [15:0] B,
    input cin,
    output cout,
    output [15:0] sum
    );
      // PG layer result holder
      wire [1:0] r1c[15:0];
      // P,G second layer carry holder, odd numbers only
      wire [1:0] r2c[6:0];
      wire [1:0] r3c[2:0];
      wire [1:0] r4c;
      wire [15:0] rc;
      
      assign rc[0] = cin;
      
      PG iPG(.A(A), .B(B), .pg15(r1c[15]),.pg14(r1c[14]),.pg13(r1c[13]), .pg12(r1c[12]),.pg11(r1c[11]),.pg10(r1c[10]),.pg9(r1c[9]),.pg8(r1c[8]),
        .pg7(r1c[7]),.pg6(r1c[6]),.pg5(r1c[5]),.pg4(r1c[4]),.pg3(r1c[3]), .pg2(r1c[2]),.pg1(r1c[1]),.pg0(r1c[0]) );

        // i[0,3]
        // r(i+1)c[2i], r(i)c[i], r(i)c[2i-1]
        Gray_Cell blockr1c1(r1c[0], rc[0], rc[1]);
        // i [1,7]
        // ric[2i], ric[2i-1], r(i+1)c[i-1]
        Black_Cell blockr1c3(r1c[2], r1c[1], r2c[0]);
        Black_Cell blockr1c5(r1c[4], r1c[3], r2c[1]);
        Black_Cell blockr1c7(r1c[6], r1c[5], r2c[2]);
        Black_Cell blockr1c9(r1c[8], r1c[7], r2c[3]);
        Black_Cell blockr1c11(r1c[10], r1c[9], r2c[4]);
        Black_Cell blockr1c13(r1c[12], r1c[11], r2c[5]);
        Black_Cell blockr1c15(r1c[14], r1c[13], r2c[6]);
        // i[1,3]
        // r(i+1)c[2i], r(i+1)c[2i-1], r(i+2)c[i-1]
        Black_Cell blockr2c15(r2c[6], r2c[5], r3c[2]);
        Black_Cell blockr2c11(r2c[4], r2c[3], r3c[1]);
        Black_Cell blockr2c7(r2c[2], r2c[1], r3c[0]);
        // r(i+2)c[2i], r(i)c[i+1], r(i)c[2(i+1)-1]
        Gray_Cell blockr2c3(r2c[0], rc[1], rc[3]);
        
        Gray_Cell blockr3c7(r3c[0], rc[3], rc[7]);
        Black_Cell blockr3c15(r3c[2], r3c[1], r4c);
        
        Gray_Cell blockr6c11(r3c[1], rc[7], rc[11]);
        Gray_Cell blockr4c15(r4c, rc[7], rc[15]);
        
        Gray_Cell blockr5c5(r2c[1], rc[3], rc[5]);
        Gray_Cell blockr5c9(r2c[3], rc[7], rc[9]);
        Gray_Cell blockr5c13(r2c[5], rc[11], rc[13]);
        
        Gray_Cell blockr6c2(r1c[1], rc[1], rc[2]);
        Gray_Cell blockr6c4(r1c[3], rc[3], rc[4]);
        Gray_Cell blockr6c6(r1c[5], rc[5], rc[6]);
        Gray_Cell blockr6c8(r1c[7], rc[7], rc[8]);
        Gray_Cell blockr6c10(r1c[9], rc[9], rc[10]);
        Gray_Cell blockr6c12(r1c[11], rc[11], rc[12]);
        Gray_Cell blockr6c14(r1c[13], rc[13], rc[14]);
        
        assign sum[0] = rc[0] ^ r1c[0][1];
        assign sum[1] = rc[1] ^ r1c[1][1];
        assign sum[2] = rc[2] ^ r1c[2][1];
        assign sum[3] = rc[3] ^ r1c[3][1];
        assign sum[4] = rc[4] ^ r1c[4][1];
        assign sum[5] = rc[5] ^ r1c[5][1];
        assign sum[6] = rc[6] ^ r1c[6][1];
        assign sum[7] = rc[7] ^ r1c[7][1];
        assign sum[8] = rc[8] ^ r1c[8][1];
        assign sum[9] = rc[9] ^ r1c[9][1];
        assign sum[10] = rc[10] ^ r1c[10][1];
        assign sum[11] = rc[11] ^ r1c[11][1];
        assign sum[12] = rc[12] ^ r1c[12][1];
        assign sum[13] = rc[13] ^ r1c[13][1];
        assign sum[14] = rc[14] ^ r1c[14][1];
        assign sum[15] = rc[15] ^r1c[15][1];
       
       Gray_Cell genCout(r1c[15], rc[15], cout);
      
endmodule
