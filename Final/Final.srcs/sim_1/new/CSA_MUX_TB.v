`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:16:54 AM
// Design Name: 
// Module Name: CSA_MUX_TB
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


module CSA_MUX_TB;

// 1. Declare testbench variables
    `ifndef N
        localparam N = 512; 
    `endif
    `ifndef M
        localparam M = 32;
    `endif
    
    reg [N-1:0] a;
    reg [N-1:0] b;
    reg csa_cin;
    wire [N-1:0] csa_sum;
    wire csa_cout;
    
    
// 2. Instantiate the design and connect to testbench variables
    // Module instantiation override
   CSA_MUX #(N) CSA_MUX_inst(a,b,csa_cin, csa_cout, csa_sum);
   
// 3. Provide stimulus to test the design
    integer i;
    initial 
    begin
        a <= 0;
        b <= 0;
        csa_cin <= 1'b0;
        
        $monitor ("(%d + %d + %d) = %d", a, b, csa_cin, {csa_cout, csa_sum});
        
        // Use a for loop to apply random values to the input
        for (i = 0; i < 5; i = i+1) begin
            #10 
            a <= $random;
            b <= $random;
            csa_cin <= ~csa_cin;
        end 
    end
endmodule
