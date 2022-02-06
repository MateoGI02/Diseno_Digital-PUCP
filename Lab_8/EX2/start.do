transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../divisor_freq.vhd}
vcom -93 -work work {../../counter_mod_seg.vhd}
vcom -93 -work work {../../my_components.vhd}
vcom -93 -work work {../../reloj_l.vhd}

vcom -93 -work work {reloj_l.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_l_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 6550 ns
