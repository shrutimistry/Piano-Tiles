# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in Lab2Part2.v to working dir
# could also have multiple verilog files
vlog PianoTiles.v
vlog waitcounter.v
vlog shiftrow.v
vlog resetscreen.v
vlog Master_control.v
vlog Draw.v
vlog counteroffset.v
vlog draw_master.v
vlog wrongkeyfail.v
vlog scoreregister.v
vlog correctinput.v
vlog colourblock.v
vlog checkinput.v

#load simulation using Lab2Part2 as the top level simulation module
vsim PianoTiles

#log all signals and add some signals to waveform window
log {/*}

# add wave {/*} would add all items in top level simulation module
add wave {/*}

#clock repetition
force {CLOCK_50} 0 0ns, 1 {1ns} -r 2ns

force {SW[0]} 1
force {SW[9]} 1
run 10ns

force {SW[0]} 0
run 10ns

force {SW[0]} 1
run 10ns

force {SW[9]} 0
run 10ns

force {SW[9]} 1
run 10000000000ns
