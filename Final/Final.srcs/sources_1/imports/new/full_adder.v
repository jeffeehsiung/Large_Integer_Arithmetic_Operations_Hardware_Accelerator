`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2023 02:21:50 PM
// Design Name: 
// Module Name: full_adder
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

// three bits input and two outputs. carry out will only be high if two inputs are high
module full_adder (
    input wire iA, iB, iCin,
    output wire oSum, oCout
);

// registors to hold 
    reg rSum, rCout;

    
// always block
always @ (iA or iB or iCin) begin // bitwise | in always time condition does not work, use or instead
    rSum = iA ^ iB ^ iCin; // rsum = (A xor B) xor Cin
    rCout = ((iA ^ iB) & iCin) | (iA & iB); // rcarry = (A&B) or ([A xor B] & Cin). do not use reg in condition or there will be time lag possibility
end

assign oSum = rSum;
assign oCout = rCout;
    
endmodule
