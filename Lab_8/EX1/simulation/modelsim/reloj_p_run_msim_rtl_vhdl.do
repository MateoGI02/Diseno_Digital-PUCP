transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/counter_mod_seg.vhd}
vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/counter_mod_min.vhd}
vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/divisor_freq.vhd}
vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/my_components.vhd}
vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/reloj_p.vhd}

vcom -93 -work work {C:/Users/ANDREA/Downloads/LAB08/EX1/simulation/modelsim/reloj_p.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_p_vhd_tst

do C:/Users/ANDREA/Downloads/LAB08/EX1/start.do
