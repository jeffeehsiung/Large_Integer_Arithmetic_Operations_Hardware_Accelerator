vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/uart/ip/uart_uart_top_0_0/sim/uart_uart_top_0_0.v" \
"../../../bd/uart/ip/uart_Debounce_Switch_0_0/sim/uart_Debounce_Switch_0_0.v" \
"../../../bd/uart/sim/uart.v" \


vlog -work xil_defaultlib \
"glbl.v"

