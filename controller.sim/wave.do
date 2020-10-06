onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_controller/clk
add wave -noupdate /tb_controller/nrst
add wave -noupdate /tb_controller/wr
add wave -noupdate /tb_controller/dIn
add wave -noupdate /tb_controller/dOut
add wave -noupdate /tb_controller/addr
add wave -noupdate /tb_controller/controller_inst/regFile_inst/regFile
add wave -noupdate -divider SEM_CTRL
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/clk_i
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/nrst_i
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/error_cycle_i
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/flags_o
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/status_o
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/correctedErrors_o
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/insertedErrors_o
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/error_o
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/status_i
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/uncorrectable
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/stopped
add wave -noupdate /tb_controller/controller_inst/SEM_CONT_inst/initialized
add wave -noupdate -divider SEM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ns} {1 us}
