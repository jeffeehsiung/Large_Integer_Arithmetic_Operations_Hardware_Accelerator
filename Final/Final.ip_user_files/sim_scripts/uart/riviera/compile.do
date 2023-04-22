vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/uart/ip/uart_uart_top_0_0/sim/uart_uart_top_0_0.v" \
"../../../bd/uart/ip/uart_Debounce_Switch_0_0/sim/uart_Debounce_Switch_0_0.v" \
"../../../bd/uart/sim/uart.v" \


vlog -work xil_defaultlib \
"glbl.v"

