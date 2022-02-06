transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB09/EX1/divisor_freq.vhd}
vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB09/EX1/my_components.vhd}
vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB09/EX1/fsm.vhd}

vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB09/EX1/simulation/modelsim/fsm.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  fsm_vhd_tst

do C:/Users/ANDREA/Desktop/LAB09/EX1/start.do
