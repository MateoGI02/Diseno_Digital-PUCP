transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../dec3a8.vhd}
vcom -93 -work work {../../ex1.vhd}

vcom -93 -work work {ex1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  ex1_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 160 ns
