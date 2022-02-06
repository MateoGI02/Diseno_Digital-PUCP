onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /addsub_vhd_tst/Co
add wave -noupdate -radix unsigned /addsub_vhd_tst/X
add wave -noupdate -radix unsigned /addsub_vhd_tst/Y
add wave -noupdate -divider Señales_Internas
add wave -noupdate /addsub_vhd_tst/i1/w
add wave -noupdate /addsub_vhd_tst/i1/etapa/C
add wave -noupdate -divider Salidas
add wave -noupdate /addsub_vhd_tst/S
add wave -noupdate /addsub_vhd_tst/v
add wave -noupdate /addsub_vhd_tst/n
add wave -noupdate /addsub_vhd_tst/z
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {336 ns}
