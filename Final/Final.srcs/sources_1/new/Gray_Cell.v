`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2023 03:36:33 PM
// Design Name: 
// Module Name: Gray_Cell
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


module Gray_Cell(	
	input [1:0] pgi,
	input  gj,
	output go
    );
    
    assign go = pgi[0] | (pgi[1] & gj);
endmodule
