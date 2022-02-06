transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../dec2a4.vhd}
vcom -93 -work work {../../cod4a2.vhd}
vcom -93 -work work {../../mux4a1.vhd}
vcom -93 -work work {../../demux1a4.vhd}
vcom -93 -work work {../../my_circuits.vhd}
vcom -93 -work work {../../muxtdm.vhd}

vcom -93 -work work {muxtdm.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  muxtdm_vhd_tst

#add wave *
do wave.do
view structure
view signals
run 120 ns
