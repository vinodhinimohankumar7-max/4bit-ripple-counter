module ripple_counter_4bit (
    input clk,         // Clock input
    input reset,       // Active high reset
    output [3:0] q     // 4-bit output
);

    // Declare flip-flops for 4 bits
    reg [3:0] q_reg;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            q_reg <= 4'b0000;      // Reset counter
        else
            q_reg <= q_reg + 1;    // Increment on every clock pulse
    end

    assign q = q_reg;              // Output assignment

endmodule

