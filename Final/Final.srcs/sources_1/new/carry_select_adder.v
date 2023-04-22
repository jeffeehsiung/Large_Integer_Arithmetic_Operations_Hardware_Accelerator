`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 03:38:32 AM
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder #(
    parameter   N = 32, M = 8)
    (
    input   wire    [N-1:0] a,
    input   wire    [N-1:0] b,
    input   wire    csa_cin,
    output  wire    [N-1:0] csa_sum,
    output  wire    csa_cout
    );
    
    wire    [2:0]       Cout_0;                 // cout for each upper M-bit CLA, (N/M - 1) = 3 CLA hence 3 bits needed (each CLA outputs 1 bit)
    wire    [2:0]       Cout_1;
    wire                Cout_in;
    wire    [N-M-1:0]   sum_0;
    wire    [N-M-1:0]   sum_1;
    
    localparam  m = N/M;                        // 4

    // instantiate the first CLA
    carry_lookahead_adder #(M) cla_inst (
        .a(a[M-1:0]),                           // 7:0
        .b(b[M-1:0]),
        .cin(csa_cin),
        .sum(csa_sum[M-1:0]),                   //7:0
        .cout(Cout_in)                          // the first cout from oth CLA
        );
    
    // Generate groups of 8-bit carry-lookahead-adders
    genvar i;
    generate
        for (i = 1; i < m; i = i + 1) 
        begin
            carry_lookahead_adder #(M) cla_inst_0 (
                .a(a[(i*M)+(M-1):M*i]),         // 15:8, 23:16, 31:24 
                .b(b[(i*M)+(M-1):M*i]),
                .cin(0),
                .sum(sum_0[(i*M)-1:(i-1)*M]),   // 7:0, 15:8, 23:16
                .cout(Cout_0[i-1])
            );
            carry_lookahead_adder #(M) cla_inst_1 (
                .a(a[(i*M)+(M-1):M*i]),
                .b(b[(i*M)+(M-1):M*i]),
                .cin(1),
                .sum(sum_1[(i*M)-1:(i-1)*M]),
                .cout(Cout_1[i-1])
            );
        end
    endgenerate
    
    // Generate N/M 2:1 MUXes for each group of M bit CLA
    wire    [m-1:0]   mux_sel;                    // 3 bits for the last m - 1 group
    
    // connect mux_sel[0] to Cout_in.
    assign mux_sel[0] = Cout_in;
    // connect csa_cout to mux-sel alst bit
    assign csa_cout = mux_sel[m-1];
    
    genvar j;
    generate
        for (j = 1; j < m; j = j + 1) 
        begin
            // if 0th, sel input is Cout_in, else, sel input is previous mux_sel
            assign mux_sel[j] = (mux_sel[j-1] == 0)? Cout_0[j-1]: Cout_1[j-1];
            // csa_sum[15:8] = sum_0[7:0] or sum_1[7:0] depends on mux_sel[j-1]
            assign csa_sum[(j*M)+(M-1):M*j] = (mux_sel[j-1] == 0)? sum_0[(j*M)-1:(j-1)*M] : sum_1[(j*M)-1:(j-1)*M];
        end
    endgenerate
    
endmodule
