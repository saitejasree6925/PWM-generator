`timescale 1ns/1ps

module pwm_generator_tb;

    parameter WIDTH = 8;

    reg clk;
    reg rst;
    reg [WIDTH-1:0] duty_cycle;
    wire pwm_out;

    pwm_generator #(
        .WIDTH(WIDTH)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .pwm_out(pwm_out)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        duty_cycle = 8'd0;

        // Reset
        #20;
        rst = 0;

        // 25% duty cycle
        duty_cycle = 8'd64;
        #2560;

        // 50% duty cycle
        duty_cycle = 8'd128;
        #2560;

        // 75% duty cycle
        duty_cycle = 8'd192;
        #2560;

        // 100% duty cycle
        duty_cycle = 8'd255;
        #2560;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | Reset=%b | Duty=%d | Counter=%d | PWM=%b",
                 $time, rst, duty_cycle, DUT.counter, pwm_out);
    end

endmodule