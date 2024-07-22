`include "multiplier_16_bit.v"
`timescale 1ns / 1ps

module tb_multiplier_16bit;

reg [15:0] a;
reg [15:0] b;
reg clk;
reg start;
reg reset;
wire [31:0] product;

// Instantiation of UUT
multiplier_16bit uut (
    .product(product),
    .a(a),
    .b(b),
    .clk(clk),
    .start(start),
    .reset(reset)
);

// Clock generation of time period 10ns
initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

// Test sequence
initial begin
    a = 0;
    b = 0;
    start = 0;
    reset = 0;

    // Dump waveforms
    $dumpfile("multiplier_16bit_tb.vcd");
    $dumpvars(0, tb_multiplier_16bit);

    // Apply reset
    reset = 1;
    #20;
    reset = 0;

    // Test Case 1
    a = 16'd10; 
    b = 16'd20;
    start = 1;
    #10;
    start = 0;
    #320; // Intezaar

    $display("Test Case 1: 10 * 20");
    $display("Product: %d", product);

    // Firse reset
    reset = 1;
    #20;
    reset = 0;

    // Test Case 2
    a = 16'd100;
    b = 16'd25;
    start = 1;
    #10;
    start = 0;
    #320; // Intezaar

    $display("Test Case 2: 100 * 25");
    $display("Product: %d", product);

    // Firse reset
    reset = 1;
    #20;
    reset = 0;

    // Test Case 3
    a = 16'd1234;
    b = 16'd5678;
    start = 1;
    #10;
    start = 0;
    #320; // Intezaar

    $display("Test Case 3: 1234 * 5678");
    $display("Product: %d", product);

    // End simulation
    $finish;
end

endmodule
