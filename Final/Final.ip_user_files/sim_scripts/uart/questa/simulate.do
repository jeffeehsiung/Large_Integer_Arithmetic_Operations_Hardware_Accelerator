onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uart_opt

do {wave.do}

view wave
view structure
view signals

do {uart.udo}

run -all

quit -force
