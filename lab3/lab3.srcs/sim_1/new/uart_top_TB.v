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
  localparam OPERAND_WIDTH  = 128; 
  localparam ADDER_WIDTH    = 16; 
  localparam NBYTES         = OPERAND_WIDTH/8; // 64 bytes if operand width is 512
  
  reg rTxStart = 0;
  reg [7:0] rTxByteTB = 0;
  wire wTxDone;
  
  reg [OPERAND_WIDTH:0]  rExpectedResult;
  
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
  #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .NBYTES(NBYTES), .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  integer i;
  reg [OPERAND_WIDTH-1:0] rTBA;
  reg [OPERAND_WIDTH-1:0] rTBB;
  // Input stimulus
  initial
    begin
      rRst = 1;
      rTxStart = 0;
      rTBA = 0;
      rTBB = 0;
      
      #(2*CLOCK_PERIOD);
      rRst =0;
      #(2*CLOCK_PERIOD);
      
      rTBA <= 128'h12121212_34343434_56565656_78787878;
      rTBB <= 128'hefefefef_cdcdcdcd_abababab_90909090;
      #(5*CLOCK_PERIOD);
      
      rExpectedResult = rTBA + rTBB;
      
      // input to uart_top rTBA 
      for (i = 0; i < NBYTES; i = i+1) 
      begin  
          // circuit is reset 
          rTxByteTB = rTBA[NBYTES*8-1:(NBYTES-1)*8];
          #(1*CLOCK_PERIOD);
          
          // assert rTxStart to send a frame (only 1 clock cycle!)
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          // reset txbyte 
          rTxByteTB = 8'h00;
          rTBA = { rTBA[(NBYTES-1)*8-1:0], 8'b0000_0000 }; // left shift
          #(100*CLOCK_PERIOD);
          
      end  
      
            // input to uart_top rTBB
      for (i = 0; i < NBYTES; i = i+1) 
      begin  
          // circuit is reset 
          rTxByteTB = rTBB[NBYTES*8-1:(NBYTES-1)*8];
          #(2*CLOCK_PERIOD);
          
          // assert rTxStart to send a frame (only 1 clock cycle!)
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          // reset txbyte 
          rTxByteTB = 8'h00;
          rTBB = { rTBB[(NBYTES-1)*8-1:0], 8'b0000_0000 }; // left shift
          
          #(100*CLOCK_PERIOD);   
      end  
//      // let it run for 100 clock cycle
//      #(200*CLOCK_PERIOD);

//      $stop;
           
    end
   
endmodule
