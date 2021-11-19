vlog run.svh
vsim -novopt or_top +test=first
add wave -position insertpoint sim:/or_top/inf/*
run -all
