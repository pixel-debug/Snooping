onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MaquinaEstadoBUS/clock
add wave -noupdate -color {Orange Red} /MaquinaEstadoBUS/MSI
add wave -noupdate -divider State
add wave -noupdate -color Cyan /MaquinaEstadoBUS/newState
add wave -noupdate -color Magenta /MaquinaEstadoBUS/state
add wave -noupdate -color Yellow /MaquinaEstadoBUS/invalid
add wave -noupdate -color Yellow /MaquinaEstadoBUS/exclusive
add wave -noupdate -color Yellow /MaquinaEstadoBUS/shared
add wave -noupdate -divider Message
add wave -noupdate -color Red /MaquinaEstadoBUS/mensage
add wave -noupdate -color Yellow /MaquinaEstadoBUS/ReadMissForThisBlock
add wave -noupdate -color Yellow /MaquinaEstadoBUS/CPUReadMiss
add wave -noupdate -color Yellow /MaquinaEstadoBUS/WriteMissForThisBlock
add wave -noupdate -color Yellow /MaquinaEstadoBUS/InvalidateForThisBlock
add wave -noupdate -divider Action
add wave -noupdate -color White /MaquinaEstadoBUS/action
add wave -noupdate -color Yellow /MaquinaEstadoBUS/WriteBackBlock_AbortMemoryAccess
add wave -noupdate -color Yellow /MaquinaEstadoBUS/EmptyAction
add wave -noupdate -divider <NULL>
add wave -noupdate -color Yellow /MaquinaEstadoBUS/read_miss
add wave -noupdate -color Yellow /MaquinaEstadoBUS/write_miss
add wave -noupdate -color Yellow /MaquinaEstadoBUS/invalidate
add wave -noupdate -divider <NULL>
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 25ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/MaquinaEstadoBUS/clock 
wave create -driver freeze -pattern counter -startvalue 00 -endvalue 10 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 10000ps sim:/MaquinaEstadoBUS/MSI 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
