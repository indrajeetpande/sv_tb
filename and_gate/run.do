vlog run.svh
vsim -novopt top +testname=first
add wave -position insertpoint sim:/top/inf/*
run -all
