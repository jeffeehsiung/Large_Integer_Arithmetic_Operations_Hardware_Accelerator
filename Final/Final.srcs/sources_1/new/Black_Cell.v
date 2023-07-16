`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2023 03:36:33 PM
// Design Name: 
// Module Name: Black_Cell
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


module Black_Cell(	
	input [1:0] pgi,
	input [1:0] pgj,
	output [1:0] pgo
    );
    
    // oth being G and 1th neing P
    // j is equivalent to i-1
    assign pgo[0] = pgi[0] | (pgi[1] & pgj[0]);
    assign pgo[1] = pgi[1] & pgj[1];
endmodule
