transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB07/EP1/seguidor_moore.vhd}

vcom -93 -work work {C:/Users/ANDREA/Desktop/LAB07/EP1/simulation/modelsim/seguidor_moore.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  seguidor_moore_vhd_tst

do C:/Users/ANDREA/Desktop/LAB07/EP1/start.do
