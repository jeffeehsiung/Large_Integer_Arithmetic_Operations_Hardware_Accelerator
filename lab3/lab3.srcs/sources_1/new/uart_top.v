`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH   =   512,
    parameter   ADDER_WIDTH     =   16,
    parameter   NBYTES          =   OPERAND_WIDTH/8,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  


  
  // State definition  
  localparam s_IDLE         = 3'b000; //0
  localparam s_WAIT_RA      = 3'b001; //1
  localparam s_WAIT_RB      = 3'b010; //2
  localparam s_MP_ADD       = 3'b011; //3
  localparam s_TX           = 3'b100; //4
  localparam s_WAIT_TX      = 3'b101; //5
  localparam s_DONE         = 3'b110; //6
  
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
 // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rA;
  reg [NBYTES*8-1:0] rB;
  reg [OPERAND_WIDTH:0] rRes;
  
  reg [$clog2(NBYTES)+1:0] rCnt; // counting n-th byte + one byte including carry
  
  // Connection to UART RX (inputs = registers, outputs = wires)
  
  wire [7:0]  wRxByte;
  wire        wRxDone;
  
  // Connection to MP_ADDER (input = registers, output = wires)
  reg                    rStart; // input register to indicate that rA adn rB has been filled
  wire [OPERAND_WIDTH:0] wRes;
  wire                   wDone;
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
  
  // instantiate module under test
  uart_rx #( .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) ) 
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone)
     );
 // instantiate mp_adder
 mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .N_ITERATIONS(OPERAND_WIDTH / ADDER_WIDTH))
 MP_ADDER_INST
     (.iClk(iClk),
     .iRst(iRst),
     .iStart(rStart),
     .iOpA(rA),
     .iOpB(rB),
     .oRes(wRes),
     .oDone(wDone)
     );
     
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rTxByte <= 0;
      rCnt <= 0;
      rStart <= 0;
      rA <= 0;
      rB <= 0;
      rRes <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RA;
          end      
        
        // received NBYTES for rA
        s_WAIT_RA :
          begin    
            if(wRxDone) begin
                if( rCnt < NBYTES) begin // if rx line is not busy and bytes count < bytes_to_be_sent
                    rA <= {rA[NBYTES*8-9:0], wRxByte};      // we receive and store in position from [current_byte_number*8-1:current_byte_number*8-8] and shift from right to left                                                                        
                    rCnt <= rCnt+1;
                    rFSM <= s_WAIT_RA;
                end                           
                if (rCnt == NBYTES) begin                             // if this is the n-th byte, store the byte                                                                   
                    rCnt <= 0;                                        // reset counter to 0
                    rFSM <= s_WAIT_RB;                                // rA has been filled, go to rB
                end                                     
            end else begin 
                rFSM <= s_WAIT_RA;                                    // rx still busy, stay in this state
                if (rCnt == NBYTES) begin                             // if this is the n-th byte, store the byte                                                                         
                    rCnt <= 0;                                        // reset counter to 0
                    rFSM <= s_WAIT_RB;                                // rA has been filled, go to rB
                end 
            end
          end
        
        // TODO: integrate rStart that will be set to high when 2x 64 bytes are received.
        // received NBYTES for rB
        s_WAIT_RB :
          begin    
            if(wRxDone) begin
                if( rCnt < NBYTES) begin // if rx line is not busy and bytes count < bytes_to_be_sent
                    rB <= {rB[NBYTES*8-9:0], wRxByte};      // we receive and store in position from [current_byte_number*8-1:current_byte_number*8-8] and shift from right to left                                                                        
                    rCnt <= rCnt+1;
                    rFSM <= s_WAIT_RB;
                end                           
                if (rCnt == NBYTES) begin                             // if this is the n-th byte, store the byte                                                                      
                    rCnt <= 0;                                        // reset counter to 0
                    rStart <= 1;                                      // set rStart high for next state
                    rFSM <= s_MP_ADD;                                 // rB also has been filled, go to s_MP_ADD
                end                                     
            end else begin 
                rFSM <= s_WAIT_RB;                                    // rx still busy, stay in this state
                if (rCnt == NBYTES) begin                             // if this is the n-th byte, store the byte                                                                        
                    rCnt <= 0;                                        // reset counter to 0
                    rStart <= 1;                                      // set rStart high for next state
                    rFSM <= s_MP_ADD;                                 // rB also has been filled, go to s_MP_ADD
                end 
            end
          end
          
        // state allowing mp_adder to calculate
        // only extract result 512 bit from mp_adder when wDone is high
        s_MP_ADD :
          begin
            if (wDone) begin                                          // if 64byte + carry result has been calcualted
                rRes <= wRes;                                         // extract the result buffer immediately
                rStart <= 0;                                          // set rStart to 0 to avoid restarting
//                rCnt <= 0;                                            // reset counter to 0
                rFSM <= s_TX;                                         // go to TX state to send result to PC
//                rTxStart <= 1;                                        // set rTxStart to high for s_TX to start sending
            end else begin
                rFSM <= s_MP_ADD;
                rStart <= 0;                                          // set rStart to 0 to avoid restarting       
//                rCnt <= 0;                                            // reset counter to 0         
            end
          end
                       
        s_TX :                                                        // state to prepare the tx_Nbytes (save into buffer)
          begin
            if ( (rCnt < NBYTES+1) && (wTxBusy ==0) )                 // if tx line is not busy and bytes count < bytes_to_be_sent. 
              begin                                                   // intotal NBYTES+1 as the extra byte is 7*0 + one carry bit
                if (rCnt == 0) begin                                  // since send from MSB, we send the carry first
                    rFSM <= s_WAIT_TX;                                // next state is to go wait_for_Nbytes_tx_to_be_done buffer state
                    rTxStart <= 1; 
                    rTxByte <= {7'b0000000 ,rRes[NBYTES*8]}; // we send the the extra byte with carry
                    rRes <= {rRes[NBYTES*8-1:0] , 1'b0};              // we shift one bit from right to left
                    rCnt <= rCnt + 1;                       
                end                                                  // no longer the carry processing state
                else begin
                rFSM <= s_WAIT_TX;                                    // next state is to go wait_for_Nbytes_tx_to_be_done buffer state
                rTxStart <= 1; 
                rTxByte <= rRes[NBYTES*8-0:NBYTES*8-7];                 // we send the uppermost byte from 0 to 7, meaning from 129th bit to 121th bit (starts from 1) 
                rRes <= {rRes[NBYTES*8-8:0] , 8'b0000_0000};          // we shift from right to left
                rCnt <= rCnt + 1;                                     
                end
              end 
            else 
              begin                                                   // tCnt == NBYTES && wTxBusy || wTxBusy == 1
                rFSM <= s_IDLE;                                       // finish preparing nbytes_tx_buffer, go to RX
                rTxStart <= 0;                                        // reset all buffers
                rTxByte <= 0;
                rCnt <= 0;
              end
          end 
            
        s_WAIT_TX :
          begin
            if (wTxDone) begin                                        // if tx_action_finished signal is recieved from uart_tx
              rFSM <= s_TX;                                           // if bytes preparation and sending is done, go to the next nBytes preparation state
            end else begin
              rFSM <= s_WAIT_TX;                                      // if the tx is still sending, wait still
              rTxStart <= 0;                                          // do not restart
            end
          end 
          
        s_DONE :
          begin
            rFSM <= s_DONE;                                           // finished sending
          end 

        default :
          rFSM <= s_IDLE;
             
      endcase
      end
    end       
    
endmodule
