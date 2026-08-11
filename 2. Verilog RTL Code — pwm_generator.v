module pwm_generator #(
    parameter WIDTH = 8
)(
    input  wire             clk,
    input  wire             rst,
    input  wire [WIDTH-1:0] duty_cycle,
    output wire             pwm_out
);

    reg [WIDTH-1:0] counter;

    always @(posedge clk) begin
        if (rst)
            counter <= {WIDTH{1'b0}};
        else
            counter <= counter + 1'b1;
    end

    assign pwm_out = (counter < duty_cycle);

endmodule