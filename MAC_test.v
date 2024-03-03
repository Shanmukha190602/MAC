`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:28:24
// Design Name: 
// Module Name: MAC_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MAC_test();

    localparam clk_period = 10; // Clock period in nanoseconds
    
    reg [15:0] data_in_a; // Data input A
    reg [15:0] data_in_b;  // Data input B
    reg [15:0] acc_in; // Input to the MAC ( Multiply and Accumulate )
    wire [31:0] acc_out;  // Output of the MAC ( Multiply and Accumulate )
    
    // Clock generation
    
    reg clk;
    always #(clk_period/2) clk= ~ clk;
    
    // Instantiating the MAC module
    
    MAC m(
    
        .A(data_in_a),
        .B(data_in_b),
        .accumulator_in(acc_in),
        .accumulator_out(acc_out)
    );
    
    // Giving inputs for testing
    
    initial begin
    
        data_in_a = 16'h0005; data_in_b = 16'h0006; acc_in = 4'h0000;
        #10 data_in_a = 16'h0002; data_in_b = 16'h0003; acc_in = acc_out;
        #10 data_in_a = 16'h0008; data_in_b = 16'h0009; acc_in = acc_out;
    end
    
    initial begin
    
        $monitor($time, " A = %H, B = %H,Accumulator_input=%H, MAC_OUTPUT = %H", data_in_a,data_in_b,acc_in,acc_out);
        #40 $finish;
    end
    
endmodule
