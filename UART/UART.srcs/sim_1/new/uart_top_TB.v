`timescale 1ns / 1ps

module uart_top_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  
  reg rTxStart = 0;
  reg [7:0] rTxByteTB = 0;
  wire wTxDone;
  // instantiate module under test
  uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByteTB),
     .oTxSerial(wRx),
     .oTxDone(wTxDone)
     );
     
  // Instantiate DUT  
  uart_top 
  #(  .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  integer i;
  reg [12*8-1:0] rBufferTB;
  // Input stimulus
  initial
    begin
      rBufferTB = "Hello World!";
      
      rTxStart = 0;
      rRst = 1;
      #(5*CLOCK_PERIOD);
      rRst =0;
      
      for (i = 0; i < 12; i = i+1) 
      begin  
          // circuit is reset 
          rTxByteTB = rBufferTB[12*8-1:11*8];
          #(5*CLOCK_PERIOD);
          
          // assert rTxStart to send a frame (only 1 clock cycle!)
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          rTxByteTB = 8'h00;
          rBufferTB = { rBufferTB[11*8-1:0], 8'b0000_0000 }; // left shift
          
          // let the counter run for 150 clock cycles
          #(100*CLOCK_PERIOD);   
      end  
        
      // Let it run for a while
//      #(4000*CLOCK_PERIOD);            
//      $stop;
           
    end
   
endmodule
