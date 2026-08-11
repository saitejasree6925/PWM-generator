# PWM-generator
PWM Generator using Verilog

Description

A PWM (Pulse Width Modulation) Generator is a digital circuit that produces a periodic pulse signal with a variable duty cycle.

Features

- Parameterized counter width
- Adjustable duty cycle
- Synchronous design
- Verilog HDL implementation
- Includes testbench and simulation

Inputs

- "clk" – System clock
- "rst" – Active-high reset
- "duty_cycle" – Controls the PWM duty cycle

Output

- "pwm_out" – Generated PWM signal

Working

The circuit uses a counter that continuously counts from 0 to the maximum value. The PWM output is HIGH when the counter value is less than the selected duty-cycle value and LOW otherwise.

For example:

- 0% duty cycle → Output always LOW
- 25% duty cycle → HIGH for 25% of the period
- 50% duty cycle → HIGH for 50% of the period
- 75% duty cycle → HIGH for 75% of the period
- 100% duty cycle → Output always HIGH

Files

- "rtl/pwm_generator.v" – PWM generator RTL code
- "testbench/pwm_generator_tb.v" – Verilog testbench
- "simulation/simulation_results.md" – Simulation information

Tools

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave (optional)

Applications

- Motor speed control
- LED brightness control
- Power electronics
- Servo control
- Digital signal generation

Author

Nagari Sai Teja Sree
author: Sai teja sree 
