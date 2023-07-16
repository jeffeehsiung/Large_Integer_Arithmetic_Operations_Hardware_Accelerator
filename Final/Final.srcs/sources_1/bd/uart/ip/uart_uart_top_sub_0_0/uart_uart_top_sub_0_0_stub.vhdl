-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu May 11 19:55:14 2023
-- Host        : ubuntu running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /media/jeffee/T7/vivado/Final/Final.srcs/sources_1/bd/uart/ip/uart_uart_top_sub_0_0/uart_uart_top_sub_0_0_stub.vhdl
-- Design      : uart_uart_top_sub_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_uart_top_sub_0_0 is
  Port ( 
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );

end uart_uart_top_sub_0_0;

architecture stub of uart_uart_top_sub_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iClk,iRst,iRx,oTx";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_top_sub,Vivado 2020.1";
begin
end;
