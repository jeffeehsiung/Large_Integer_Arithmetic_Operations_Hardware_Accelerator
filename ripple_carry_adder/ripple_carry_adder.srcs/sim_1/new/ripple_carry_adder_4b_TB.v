`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 08:45:36 AM
// Design Name: 
// Module Name: ripple_carry_adder_4b_TB
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


module ripple_carry_adder_4b_TB;
    // 1. Declare testbench variables
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    integer i;
   
   // 2. Instantiate the design and connect to testbench variables
   // ripple_carry_adder_4b  rpca4 (a,b,cin,sum,cout);
   ripple_carry_adder_4cal rca4cal (a,b,cin,sum,cout);

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
