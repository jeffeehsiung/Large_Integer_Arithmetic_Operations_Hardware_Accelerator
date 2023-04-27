//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Apr 27 15:14:33 2023
//Host        : ubuntu running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target uart_wrapper.bd
//Design      : uart_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_wrapper
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  uart uart_i
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule
