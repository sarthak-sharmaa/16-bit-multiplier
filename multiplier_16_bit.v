module multiplier_16bit (
    output reg [31:0] product,
    input [15:0] a,
    input [15:0] b,
    input clk,
    input start,
    input reset
);

reg [15:0] a_reg, b_reg;
reg [31:0] product_reg;
reg [4:0] count; // Needs to count up to 16
reg running;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        product_reg <= 0;
        a_reg <= 0;
        b_reg <= 0;
        count <= 0;
        product <= 0;
        running <= 0;
    end else if (start && !running) begin
        a_reg <= a;
        b_reg <= b;
        product_reg <= 0;
        count <= 16;
        running <= 1;
    end else if (running) begin
        if (count > 0) begin
            if (b_reg[0] == 1) begin
                product_reg <= product_reg + (a_reg << (16 - count));
            end
            b_reg <= b_reg >> 1;
            count <= count - 1;
        end else begin
            product <= product_reg;
            running <= 0;
        end
    end
end

endmodule


