onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate /control_basket_vhd_tst/reset_n
add wave -noupdate /control_basket_vhd_tst/clock
add wave -noupdate /control_basket_vhd_tst/ini_pausa_per
add wave -noupdate /control_basket_vhd_tst/ini_pausa_lan
add wave -noupdate /control_basket_vhd_tst/borrar_lan
add wave -noupdate -divider Salidas
add wave -noupdate /control_basket_vhd_tst/dlsec_dec
add wave -noupdate /control_basket_vhd_tst/dlsec_uni
add wave -noupdate /control_basket_vhd_tst/dpmin_dec
add wave -noupdate /control_basket_vhd_tst/dpmin_uni
add wave -noupdate /control_basket_vhd_tst/dpsec_dec
add wave -noupdate /control_basket_vhd_tst/dpsec_uni
add wave -noupdate -radix decimal /control_basket_vhd_tst/numero_periodo_del_partido
add wave -noupdate -divider Internas
add wave -noupdate -divider Analizar
add wave -noupdate -radix unsigned /control_basket_vhd_tst/i1/contad_control_p/visualizador_q_minutos
add wave -noupdate -radix unsigned /control_basket_vhd_tst/i1/contad_control_p/visualizador_q_segundos
add wave -noupdate /control_basket_vhd_tst/i1/maquina_estado/estado_presente
add wave -noupdate /control_basket_vhd_tst/i1/maquina_estado/estado_siguiente
add wave -noupdate -radix unsigned /control_basket_vhd_tst/i1/contad_control_l/contador_segundos/visualizador_q_segundos2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22778 ps} 0}
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
WaveRestoreZoom {0 ps} {41034 ps}
