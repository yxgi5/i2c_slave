transcript on
#compile
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work {./I2C_SLAVE.v}
vlog -vlog01compat -work work {./TOP_tb1.v}

#simulate
vsim -novopt TOP_tb

#probe signals
add wave -radix unsigned *
add wave -radix unsigned /TOP_tb/UUT/*
add wave -radix unsigned /TOP_tb/UUT/shift8in/*
#add wave -radix unsigned /TOP_tb/UUT/shift8_out/*

view structure
view signals

#300 ns

run 1200us
