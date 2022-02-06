transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../fulladder.vhd}
vcom -93 -work work {../../my_subcircuits.vhd}
vcom -93 -work work {../../adder.vhd}
vcom -93 -work work {../../my_circuits.vhd}
vcom -93 -work work {../../addsub.vhd}

vcom -93 -work work {addsub.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  addsub_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 320 ns
