onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uart -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uart xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uart.udo}

run -all

endsim

quit -force
