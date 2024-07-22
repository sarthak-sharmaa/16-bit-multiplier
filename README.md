# 16-bit Multiplier in Verilog

This project implements a 16-bit binary multiplier using Verilog. The design is based on the shift-and-add algorithm, which is a simple yet efficient method for multiplying binary numbers.

## Project Structure

- `multiplier_16bit.v`: Verilog module implementing the 16-bit multiplier.
- `tb_multiplier_16bit.v`: Testbench for verifying the functionality of the multiplier.
- `multiplier_16bit_tb.vcd`: Waveform file generated from the testbench for analysis using GTKWave or similar tools.

## Multiplier Module

The multiplier module, `multiplier_16bit.v`, multiplies two 16-bit unsigned numbers and produces a 32-bit result. The design includes control signals for clock, start, and reset, and outputs the product when the computation is complete.

### Module Interface

#### Inputs
- `a` (16-bit): First operand.
- `b` (16-bit): Second operand.
- `clk` (1-bit): Clock signal.
- `start` (1-bit): Start signal to initiate the multiplication.
- `reset` (1-bit): Reset signal to initialize the module.

#### Outputs
- `product` (32-bit): Output product of the multiplication.

## Testbench

The testbench, `tb_multiplier_16bit.v`, provides stimuli to the multiplier module and verifies its output. It includes multiple test cases to check the correctness of the multiplication operation.

### Test Cases
1. Multiply 10 by 20.
2. Multiply 100 by 25.
3. Multiply 1234 by 5678.

### Testbench Interface

The testbench initializes the inputs, applies the reset signal, and starts the multiplication process. It waits for the computation to complete and displays the results.


## Results

The results from the testbench will display the products of the test cases, which you can verify against the expected values.
![gtkwave](https://github.com/user-attachments/assets/e7227ee6-f401-403c-beef-02fd8bb7f2e2)
