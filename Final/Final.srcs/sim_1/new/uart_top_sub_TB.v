`timescale 1ns / 1ps

module uart_top_sub_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wRx, wTx;
  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  localparam OPERAND_WIDTH  = 512; 
  localparam ADDER_WIDTH    = 128; 
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
  uart_top_sub 
  #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .NBYTES(NBYTES), .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_sub_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wRx), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  integer i;
  reg [OPERAND_WIDTH-1:0] rTBA;
  reg [OPERAND_WIDTH-1:0] rTBB;
  reg [7:0]               rTSub;
  // Input stimulus
  initial
    begin
      rRst = 1;
      rTxStart = 0;
      rTBA = 0;
      rTBB = 0;
      rTSub = 0;
      
      #(2*CLOCK_PERIOD);
      rRst =0;
      #(2*CLOCK_PERIOD);
      
      rTBA <= 512'h12121212_34343434_56565656_78787878_12121212_34343434_56565656_78787878_12121212_34343434_56565656_78787878_12121212_34343434_56565656_78787878;
      // 946433501353357641285445892025427456998449285521038123886152869430748943314308856141975305074517502248041669254917717818888257780909718072029977597474936
      rTBB <= 512'hefefefef_cdcdcdcd_abababab_90909090_efefefef_cdcdcdcd_abababab_90909090_efefefef_cdcdcdcd_abababab_90909090_efefefef_cdcdcdcd_abababab_90909090;
      // 12566533706471142180638179302249423786366230429530695872005863065703244518986836495897306865928303442024074370123345972921174881640453098408152615334482064
      rTSub <= 8'h01;
      #(5*CLOCK_PERIOD);
      
      rExpectedResult = rTBA - rTBB;
      rExpectedResult = ~rExpectedResult + 1;
      // -11,620,100,205,117,784,539,352,733,410,223,996,329,367,781,144,009,657,748,119,710,196,272,495,575,672,527,639,755,331,560,853,785,939,776,032,700,868,428,255,102,286,623,859,543,380,336,122,637,737,007,128
      // -DDDDDDDD999999995555555518181818DDDDDDDD999999995555555518181818DDDDDDDD999999995555555518181818DDDDDDDD999999995555555518181818
      // input to uart_top rTBA 
      
      $monitor ("%b",rTxByteTB);
      for (i = 0; i < NBYTES; i = i+1) 
      begin  
          // circuit is reset 
          rTxByteTB = rTBA[NBYTES*8-1:(NBYTES-1)*8];
          #(5*CLOCK_PERIOD);
          
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
          #(5*CLOCK_PERIOD);
          
          // assert rTxStart to send a frame (only 1 clock cycle!)
          rTxStart = 1;
          #(CLOCK_PERIOD);
          rTxStart = 0;
          // reset txbyte 
          rTxByteTB = 8'h00;
          rTBB = { rTBB[(NBYTES-1)*8-1:0], 8'b0000_0000 }; // left shift
          
          #(100*CLOCK_PERIOD);   
      end  
      
    // address the Sub byte
    rTxByteTB = rTSub;
    #(100*CLOCK_PERIOD);
    // assert rTxStart to send a frame (only 1 clock cycle!)
    rTxStart = 1;
    #(CLOCK_PERIOD);
    rTxStart = 0;
    // reset txbyte 
    rTxByteTB = 8'h00;

    #(100*CLOCK_PERIOD);

//      $stop;
           
    end
   
endmodule
