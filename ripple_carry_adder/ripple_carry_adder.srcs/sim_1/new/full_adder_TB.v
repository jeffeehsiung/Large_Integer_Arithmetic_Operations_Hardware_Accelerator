`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 07:11:31 AM
// Design Name: 
// Module Name: full_adder_TB
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


module full_adder_TB;
    
    // 1. declare testbench variables
    reg  riA, riB, rCin;
    wire wSum, wCout; 
    
    // 2. instantiate the deisgn and connect by position
    full_adder fa (riA, riB, rCin, wSum, wCout);
    
    // 3. provide stimulus to test the design
    initial begin
        // set stimulus to test the code
        riA <= 0;
        riB <= 0;
        rCin <= 0;
        #100 $finish;
    end
    // provide the toggling input in a style of truth table
    // this acts as the clock input
    always #40 riA = ~riA;
    always #20 riB = ~riB;
    always #10 rCin = ~rCin;
    
    // display output if there's a change in the input event
    // The format specifier %t:current simulation time. %d: value of the variable in decimal.
    always @(riA or riB or rCin) begin // cannot use bitwise | in always time condition
        $monitor("at time (in ns) = %t, A = %d B = %d Cin = %d Sum = %d Cout = %d", 
        $time, riA, riB, rCin, wSum, wCout);
    end
    
endmodule
