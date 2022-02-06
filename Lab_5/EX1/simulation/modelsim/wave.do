onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /shift_reg_vhd_tst/clk
add wave -noupdate -radix unsigned /shift_reg_vhd_tst/p
add wave -noupdate /shift_reg_vhd_tst/reset_n
add wave -noupdate /shift_reg_vhd_tst/s_l
add wave -noupdate /shift_reg_vhd_tst/serial_input
add wave -noupdate -divider {Señales Internas}
add wave -noupdate /shift_reg_vhd_tst/i1/n
add wave -noupdate -divider Salidas
add wave -noupdate /shift_reg_vhd_tst/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98347 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {105 ns}
