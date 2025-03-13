# **ARTY S7-50 FPGA Exploration**

Purchased an ARTY S7 FPGA board to develop projects on
- Projects are written in VHDL
- Each Project features a corresponding testbench and simulation waveform
- Projects are also run on actual hardware

1. Project 1 is an and gate implemented using two switches and an LED on the board. The first two LEDs represent when only one switch is set to high respectively. The third LED represents the output of the and gate.

2. Project 2 is an implementation of a 4 bit register using the 4 switches on the board as inputs, 4 of the LEDs as outputs, and two buttons as the clock source and reset button. Initially the design relied on solely the button as a clock source, and this worked fine for the simulation, but Vivado does not allow the rising_edge() function to be called on a pin not indicated as a clock pin by the manufacturer. As a result the design utilizes the clock from an oscillator while still implementing the button as the clock source for the register. the design simulation was done before the debouncing was implemented. The debouncing, done through two flip flops, proved to be very effective.