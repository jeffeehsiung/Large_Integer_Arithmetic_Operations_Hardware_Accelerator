`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 08:33:50 AM
// Design Name: 
// Module Name: ripple_carry_adder_4b
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


module ripple_carry_adder_4b(
    input [3:0] a,b,
    input Cin,
    output [3:0] Sum,
    output Cout
    );

reg [3:0] sum_reg;
reg cout_reg;

// use concatenation to simplified the code. sequence order must be correct
always @(*) begin
    // if not using structural way but RTL adders
    {cout_reg, sum_reg} = Cin + a + b;
     
end


assign Sum = sum_reg[3:0];
assign Cout = cout_reg;

    
endmodule
		
	 
