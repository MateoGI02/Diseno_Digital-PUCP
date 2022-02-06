transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/counter_mod_min.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/counter_mod_seg.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/counter_mod_seg_lan.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/divisor_freq.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/my_components.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/contador_periodos.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/reloj_p.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/reloj_l.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/fsm.vhd}
vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/control_basket.vhd}

vcom -93 -work work {C:/temp/1IEE04/H4413/LAB10a/EX/simulation/modelsim/control_basket.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  control_basket_vhd_tst

do C:/temp/1IEE04/H4413/LAB10a/EX/start.do
