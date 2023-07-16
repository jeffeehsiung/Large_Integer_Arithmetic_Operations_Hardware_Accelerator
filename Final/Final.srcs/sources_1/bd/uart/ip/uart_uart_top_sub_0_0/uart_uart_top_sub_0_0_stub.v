// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu May 11 19:55:14 2023
// Host        : ubuntu running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /media/jeffee/T7/vivado/Final/Final.srcs/sources_1/bd/uart/ip/uart_uart_top_sub_0_0/uart_uart_top_sub_0_0_stub.v
// Design      : uart_uart_top_sub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_top_sub,Vivado 2020.1" *)
module uart_uart_top_sub_0_0(iClk, iRst, iRx, oTx)
/* synthesis syn_black_box black_box_pad_pin="iClk,iRst,iRx,oTx" */;
  input iClk;
  input iRst;
  input iRx;
  output oTx;
endmodule
