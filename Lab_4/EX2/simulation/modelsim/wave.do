onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /muxtdm_vhd_tst/EN
add wave -noupdate /muxtdm_vhd_tst/W
add wave -noupdate /muxtdm_vhd_tst/a_i
add wave -noupdate /muxtdm_vhd_tst/b_i
add wave -noupdate /muxtdm_vhd_tst/c_i
add wave -noupdate /muxtdm_vhd_tst/d_i
add wave -noupdate -divider {Señales Internas}
add wave -noupdate /muxtdm_vhd_tst/i1/mux/f
add wave -noupdate /muxtdm_vhd_tst/i1/deco/Y
add wave -noupdate /muxtdm_vhd_tst/i1/co/Y
add wave -noupdate -divider Salidas
add wave -noupdate /muxtdm_vhd_tst/a_0
add wave -noupdate /muxtdm_vhd_tst/b_0
add wave -noupdate /muxtdm_vhd_tst/c_0
add wave -noupdate /muxtdm_vhd_tst/d_0
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
WaveRestoreZoom {0 ps} {51372 ps}
