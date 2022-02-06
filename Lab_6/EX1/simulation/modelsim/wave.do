onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /reloj_vhd_tst/borrar
add wave -noupdate /reloj_vhd_tst/clk
add wave -noupdate /reloj_vhd_tst/ini_pausa
add wave -noupdate /reloj_vhd_tst/reset_n
add wave -noupdate -divider Señales_Internas
add wave -noupdate -radix unsigned /reloj_vhd_tst/i1/contadorseg/q1
add wave -noupdate -radix unsigned /reloj_vhd_tst/i1/contadorseg/q2
add wave -noupdate -radix unsigned /reloj_vhd_tst/i1/contadormin/q1
add wave -noupdate -radix unsigned /reloj_vhd_tst/i1/contadormin/q2
add wave -noupdate -divider Salidas
add wave -noupdate /reloj_vhd_tst/segundos_unidades
add wave -noupdate /reloj_vhd_tst/segundos_decenas
add wave -noupdate /reloj_vhd_tst/minutos_unidades
add wave -noupdate /reloj_vhd_tst/minutos_decenas
add wave -noupdate /reloj_vhd_tst/max_value
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {840 ns}
