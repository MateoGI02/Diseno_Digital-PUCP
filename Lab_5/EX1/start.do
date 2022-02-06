transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../mux2a1.vhd}
vcom -93 -work work {../../ff_d.vhd}
vcom -93 -work work {../../shift_reg.vhd}

vcom -93 -work work {shift_reg.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  shift_reg_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 100 ns
