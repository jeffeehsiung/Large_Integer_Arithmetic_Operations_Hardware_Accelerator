`timescale 1ns / 1ps

module mp_adder_TB();

  localparam CLOCK_PERIOD_NS = 100;
  
  localparam OPERAND_WIDTH   = 512; 
  localparam ADDER_WIDTH     = 128; 
  
  reg           rClk, rRst, rStart;
  reg [OPERAND_WIDTH-1:0]   rA, rB;
  
  wire [OPERAND_WIDTH:0]  wRes;
  wire          wDone;
  
  reg [OPERAND_WIDTH:0]  rExpectedResult;
  
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH) )
  mp_adder_INST
  ( .iClk(rClk), .iRst(rRst), .iStart(rStart), .iOpA(rA), .iOpB(rB), .oRes(wRes), .oDone(wDone) );

  // definition of clock period
  localparam  T = 20;  
  
  // generation of clock signal
  always 
  begin
    rClk = 1;
    #(T/2);
    rClk = 0;
    #(T/2);
  end

  initial
    begin
      rRst = 1;
      rStart = 0;
      rA = 0;
      rB = 0;
      
      #(5*T);
      rRst = 0;
      #(5*T);
      
      rStart = 1;
      rA <= 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433647710209125;
      rB <= 512'd12153524;
      #T;
      rExpectedResult = rA + rB;
      rStart = 0;
            
      // wait until wDone is asserted     
      @(posedge wDone);
      
      // display the results in the terminal
      $display(rExpectedResult);
      $display(wRes);
      
      // compare results
      // if using the test vector, answer should be: 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD29E93A5
      if ( rExpectedResult != wRes )
        $display("Test Failed - Incorrect Addition");
      else
        $display("Test Passed - Correct Addition");
      
      #(5*T);
        
      $stop;
    end

endmodule