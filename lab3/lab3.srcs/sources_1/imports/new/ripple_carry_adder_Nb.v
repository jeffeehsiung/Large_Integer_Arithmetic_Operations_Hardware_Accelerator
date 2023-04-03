`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 02:53:54 PM
// Design Name: 
// Module Name: ripple_carry_adder_Nb
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


module ripple_carry_adder_Nb#(
    parameter   n = 16
    )
    (
    input   [n-1:0] a,b,
    input           cin,
    output  [n-1:0] sum,
    output          cout
    );
    
    // instantiate wire to connect each bit
    wire [n-1:0] sum_wire;
    wire [n-1:0] cout_wire;
    
    // variable to control for_loop
    genvar i;
    
    // generate the n bit full_adder with a for loop
    generate
    // n bit, condition i < n and starts from 0 as the first one is taken care of in the following
    for (i = 0; i < n; i = i + 1) 
    begin
        // take care of the first one
        if ((i-1) < 0) begin
            full_adder fa_inst (a[i], b[i], cin, sum_wire[i], cout_wire[i]);
        end else begin
        full_adder fa_inst (a[i], b[i], cout_wire[i-1], sum_wire[i], cout_wire[i]);
        end
    end
    endgenerate

// Assign the final sum and carry out
assign sum = sum_wire;
assign cout = cout_wire[n-1];

endmodule
