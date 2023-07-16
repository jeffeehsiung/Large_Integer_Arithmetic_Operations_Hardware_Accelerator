`timescale 1ns / 1ps

module mp_adder_sub_TB();

  localparam CLOCK_PERIOD_NS = 100;
  
  localparam OPERAND_WIDTH   = 512; 
  localparam ADDER_WIDTH     = 128; 
  
  reg           rClk, rRst, rStart;
  reg [OPERAND_WIDTH-1:0]   rA, rB;
  reg                       iSub;
  wire [OPERAND_WIDTH:0]    wRes;
  wire                      wDone;
  
  reg [OPERAND_WIDTH:0]  rExpectedResult;
  
  reg [3:0] testing;
  
  mp_adder_sub #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH) )
  mp_adder_INST
  ( .iClk(rClk), .iRst(rRst), .iStart(rStart), .iOpA(rA), .iOpB(rB), .iSub(iSub), .oRes(wRes), .oDone(wDone) );

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
      iSub = 0;
      testing = 16'b1011011100001111;
      
      #(5*T);
      rRst = 0;
      #(5*T);
      
      rStart = 1;
      rA <= $random;
      rB <= $random;
      iSub <= 1;
      testing <= ~testing;
      #T;
      
      // subtract logic
      if(iSub == 1) begin
        rExpectedResult = rA - rB;
//        rExpectedResult = ~rExpectedResult + 1; 
      end
      else begin
        rExpectedResult = rA + rB;
      end
      
      rStart = 0;
      
      $monitor ("rA: %b", rA);
      $monitor ("rB: %b", rB);
      $monitor ("~rB: %b", ~rB);
            
      // wait until wDone is asserted     
      @(posedge wDone);
      
      // display the results in the terminal
//      $display(rExpectedResult);
//      $display(wRes);
        $display("rA: %d", rA);
        $display("rB: %d",rB);
        $display("result: %d", rExpectedResult);
        $display("wRes: %d", wRes);
      
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