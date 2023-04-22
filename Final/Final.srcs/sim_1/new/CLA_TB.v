`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 03:26:18 PM
// Design Name: 
// Module Name: CLA_TB
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


module CLA_TB;

// 1. Declare testbench variables
    `ifndef n
        localparam n = 8;
   `endif
   
    reg [n-1:0] a;
    reg [n-1:0] b;
    reg cin;
    wire [n-1:0] sum;
    wire cout;
    
    integer i;
    
// 2. Instantiate the design and connect to testbench variables
    // Module instantiation override
   carry_lookahead_adder#(n) cla_inst (a,b,cin,sum,cout);

// 3. Provide stimulus to test the design
   initial 
   begin
      a <= 0;
      b <= 0;
      cin <= 0;

      $monitor ("(%d + %d + %d) = %d", a, b, cin, {cout, sum});
      
      // Use a for loop to apply random values to the input
      for (i = 0; i < 5; i = i+1) 
      begin
        #10 
        a <= $random;
        b <= $random;
        cin <= $random;
      end
   end

endmodule
