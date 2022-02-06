transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../counter_mod_min.vhd}
vcom -93 -work work {../../counter_mod_seg.vhd}
vcom -93 -work work {../../counter_mod_seg_lan.vhd}
vcom -93 -work work {../../divisor_freq.vhd}
vcom -93 -work work {../../my_components.vhd}
vcom -93 -work work {../../contador_periodos.vhd}
vcom -93 -work work {../../reloj_p.vhd}
vcom -93 -work work {../../reloj_l.vhd}
vcom -93 -work work {../../fsm.vhd}
vcom -93 -work work {../../control_basket.vhd}

vcom -93 -work work {control_basket.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  control_basket_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 100 ns
