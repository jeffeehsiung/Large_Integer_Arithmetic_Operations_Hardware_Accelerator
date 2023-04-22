`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 03:52:09 PM
// Design Name: 
// Module Name: CSA_MUX_512bit
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


module CSA_MUX_512bit (
    input [511:0] a,
    input [511:0] b,
    input cin,
    output [511:0] sum,
    output cout
    );
    
    // N = 512, M = 32, N/M blocks of M-bit CLA
    // each row has 32 bits to save respectively the cout, sum, and mux_sel
    wire [31:0] csa_cout[15:0];
    wire [31:0] csa_sum[15:0];
    wire [31:0] mux_sel[15:0];
    
    CLA_32bit cla_inst(
    .a(a[31:0]),
    .b(b[31:0]),
    .cin(cin),
    .sum(csa_sum[0]),
    .cout(csa_cout[0])
    );
    

    // Group of 32-bit CLA adders with carry and sum outputs
    genvar i;
    generate
        for(i=1; i<16; i=i+1) 
        begin
             // instantiate N/M CLAs
            CLA_32bit cla_inst_0(
                .a(a[32*i+31:32*i]),
                .b(b[32*i+31:32*i]),
                .cin(i==0 ? cin : csa_cout[i-1]),
                .sum(csa_sum[i]),
                .cout(csa_cout[i])
                );

        end
    endgenerate

    // Generate MUXes for selecting the outputs of the CLA adders
    genvar j;
    generate
        for(j=0; j<16; j=j+1) 
        begin
            mux2to1 mux_inst(
                .a(csa_sum[j]),                     // mux for sum
                .b(j==0 ? 32'b0 : mux_sel[j-1]),
                .sel(csa_cout[j]),                  // mux for carry
                .out(mux_sel[j])
                );
        end
    endgenerate

    assign sum = mux_sel[15];
    assign cout = csa_cout[15];

endmodule




