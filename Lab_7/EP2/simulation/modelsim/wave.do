onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /seguidor_mealy_vhd_tst/clk
add wave -noupdate /seguidor_mealy_vhd_tst/reset_n
add wave -noupdate /seguidor_mealy_vhd_tst/P
add wave -noupdate /seguidor_mealy_vhd_tst/L
add wave -noupdate /seguidor_mealy_vhd_tst/R
add wave -noupdate -divider Señales
add wave -noupdate /seguidor_mealy_vhd_tst/i1/estado_presente
add wave -noupdate /seguidor_mealy_vhd_tst/i1/estado_siguiente
add wave -noupdate -divider Salidas
add wave -noupdate /seguidor_mealy_vhd_tst/M1a
add wave -noupdate /seguidor_mealy_vhd_tst/M2a
add wave -noupdate /seguidor_mealy_vhd_tst/M2l
add wave -noupdate /seguidor_mealy_vhd_tst/M2r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 50
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {315 ns}
