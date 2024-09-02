`timescale 1ns / 1ps

module Fourth_Row_tb;

    // Inputs
    reg clock;
    reg reset;
    reg [31:0] io_number;
    reg io_ready;

    // Outputs
    wire [31:0] io_out_data_a_re;
    wire [31:0] io_out_data_a_im;
    wire [31:0] io_out_data_b_re;
    wire [31:0] io_out_data_b_im;
    wire io_valid;

    // Instantiate the Unit Under Test (UUT)
    Fourth_Row uut (
        .clock(clock),
        .reset(reset),
        .io_number(io_number),
        .io_out_data_a_re(io_out_data_a_re),
        .io_out_data_a_im(io_out_data_a_im),
        .io_out_data_b_re(io_out_data_b_re),
        .io_out_data_b_im(io_out_data_b_im),
        .io_ready(io_ready),
        .io_valid(io_valid)
    );

    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock;  // 10 ns period clock
    end

    initial begin
        // Initialize Inputs
        reset = 1;
        io_number = 0;
        io_ready = 0;

        // Wait for global reset to finish
        #10;
        reset = 0;

        // Apply the test input and display the output
        // Test case: Apply the number 32 and set ready signal
        io_number = 32'h00000020;  // 32 in hexadecimal
        io_ready = 1;
        #20;
        $display("Time: %0dns, io_number: %h, io_out_data_a_re: %h, io_out_data_a_im: %h, io_out_data_b_re: %h, io_out_data_b_im: %h, io_valid: %b",
            $time, io_number, io_out_data_a_re, io_out_data_a_im, io_out_data_b_re, io_out_data_b_im, io_valid);

        // End of the test
        $stop;
    end
endmodule