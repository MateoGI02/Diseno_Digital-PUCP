onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /reloj_l_vhd_tst/clk
add wave -noupdate /reloj_l_vhd_tst/borrar
add wave -noupdate /reloj_l_vhd_tst/ini_pausa
add wave -noupdate /reloj_l_vhd_tst/reset_n
add wave -noupdate -divider Salidas
add wave -noupdate -radix binary /reloj_l_vhd_tst/dsec_p_dec
add wave -noupdate -radix binary /reloj_l_vhd_tst/dsec_p_uni
add wave -noupdate /reloj_l_vhd_tst/min_value_l
add wave -noupdate -divider {Visualizador de las Salidas}
add wave -noupdate -radix unsigned /reloj_l_vhd_tst/i1/visualizador_q_segundos
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6756618 ps} 0}
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
WaveRestoreZoom {6161913 ps} {7315216 ps}
