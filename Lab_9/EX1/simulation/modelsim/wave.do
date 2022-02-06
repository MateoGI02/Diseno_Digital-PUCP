onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /fsm_vhd_tst/reset_n
add wave -noupdate /fsm_vhd_tst/clk
add wave -noupdate /fsm_vhd_tst/ini_pausa_per
add wave -noupdate /fsm_vhd_tst/min_value_p
add wave -noupdate /fsm_vhd_tst/ini_pausa_lan
add wave -noupdate /fsm_vhd_tst/borrar_lan
add wave -noupdate /fsm_vhd_tst/min_value_l
add wave -noupdate -divider Salidas
add wave -noupdate /fsm_vhd_tst/ini_pausa_l
add wave -noupdate /fsm_vhd_tst/borrar_l
add wave -noupdate /fsm_vhd_tst/ini_pausa_p
add wave -noupdate /fsm_vhd_tst/borrar_p
add wave -noupdate -divider {Señales Internas}
add wave -noupdate /fsm_vhd_tst/i1/enable
add wave -noupdate /fsm_vhd_tst/i1/estado_presente
add wave -noupdate /fsm_vhd_tst/i1/estado_siguiente
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1403803 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1386407 ps} {1505979 ps}
