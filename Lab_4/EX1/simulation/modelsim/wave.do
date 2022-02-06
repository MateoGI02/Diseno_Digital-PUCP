onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /ex1_vhd_tst/EN
add wave -noupdate -radix decimal /ex1_vhd_tst/A
add wave -noupdate -radix decimal /ex1_vhd_tst/B
add wave -noupdate -radix decimal /ex1_vhd_tst/C
add wave -noupdate -radix decimal /ex1_vhd_tst/D
add wave -noupdate -divider {Señales Internas}
add wave -noupdate /ex1_vhd_tst/i1/dec1/Y
add wave -noupdate /ex1_vhd_tst/i1/dec2/Y
add wave -noupdate -divider Salida
add wave -noupdate /ex1_vhd_tst/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {177507 ps} 0}
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
WaveRestoreZoom {0 ps} {20045 ps}
