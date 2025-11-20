# ALU Project

**Short description:** A parameterizable N-bit ALU supporting add, sub, AND, OR, XOR, shift operations, built in Verilog.

**Toolchain:** Xilinx Vivado 2015.5 (or ISE 14.x if using legacy device).  
**Author:** <NEELI HARIKA>  
**Date:** <20-11-2025>

## Repo layout
├── src/
│   ├── alu.v              # ALU main module
│   ├── add_sub.v          # Arithmetic block 
│                  
│
├── tb/
│   └── alu_tb.v
    └── test_add_sub.v

## How to simulate
1. Install your simulator (Icarus Verilog / ModelSim / Vivado simulator).
2. From repo root:
   - `iverilog -o alu_tb.vvp tb/alu_tb.v src/*.v`
   - `vvp alu_tb.vvp`
   - open `sim/alu_sim.vcd` in GTKWave.

## How to synthesize & generate bitstream (Vivado)
1. Open Vivado (2015.5).
2. File → Open Project → (or run `tcl/build_project.tcl`).
3. Synthesize → Implement → Generate Bitstream.
4. Program device with `hw_manager` or `vivado -mode batch -source tcl/program_device.tcl`.

##INPUTS AND CORESPONDING OUTPUTS:
000 – ADDTION
001 – SUBTACTION
010 – SHIFT LEFT BY 1
011 – AND
100 – OR
101 – NOT A
110 – XNOR
111 – SHIFT RIGHT BY 1
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL, designed and tested on Xilinx Vivado 2015.5. The ALU performs fundamental arithmetic and logical operations commonly required in CPUs, DSP units, and digital systems.
The design includes operation selection using control signals and status flag generation for accurate result interpretation.







    
