onerror {resume}
quietly virtual signal -install /exp2_vhd_tst { (context /exp2_vhd_tst )(g & f & e & d & c & b & a )} Salidas
quietly virtual signal -install /exp2_vhd_tst { (context /exp2_vhd_tst )(x & y & z & w )} Entradas
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /exp2_vhd_tst/Entradas
add wave -noupdate /exp2_vhd_tst/x
add wave -noupdate /exp2_vhd_tst/y
add wave -noupdate /exp2_vhd_tst/z
add wave -noupdate /exp2_vhd_tst/w
add wave -noupdate -divider Salidas
add wave -noupdate /exp2_vhd_tst/Salidas
add wave -noupdate /exp2_vhd_tst/g
add wave -noupdate /exp2_vhd_tst/f
add wave -noupdate /exp2_vhd_tst/e
add wave -noupdate /exp2_vhd_tst/d
add wave -noupdate /exp2_vhd_tst/c
add wave -noupdate /exp2_vhd_tst/b
add wave -noupdate /exp2_vhd_tst/a
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {84 ns}
