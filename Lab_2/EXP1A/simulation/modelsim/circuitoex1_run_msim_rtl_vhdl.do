transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ANDREA/Desktop/Lab_2/EXP1A/circuitoex1.vhd}

vcom -93 -work work {C:/Users/ANDREA/Desktop/Lab_2/EXP1A/simulation/modelsim/circuitoex1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  circuitoex1_vhd_tst

add wave *
view structure
view signals
run 80 ns
