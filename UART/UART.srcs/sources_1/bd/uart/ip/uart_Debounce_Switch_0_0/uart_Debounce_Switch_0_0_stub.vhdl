-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Mar  6 01:14:45 2023
-- Host        : ubuntu running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/jeffee/T7/vivado/UART/UART.srcs/sources_1/bd/uart/ip/uart_Debounce_Switch_0_0/uart_Debounce_Switch_0_0_stub.vhdl
-- Design      : uart_Debounce_Switch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_Debounce_Switch_0_0 is
  Port ( 
    i_Clk : in STD_LOGIC;
    i_Switch : in STD_LOGIC;
    o_Switch : out STD_LOGIC
  );

end uart_Debounce_Switch_0_0;

architecture stub of uart_Debounce_Switch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_Clk,i_Switch,o_Switch";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Debounce_Switch,Vivado 2020.1";
begin
end;
