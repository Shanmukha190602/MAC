`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:25:27
// Design Name: 
// Module Name: MAC
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


module MAC(
    
    input [15:0] A, // Input data A
    input [15:0] B, // Input data B
    input [15:0] accumulator_in, // Input accumulator
    output reg [31:0] accumulator_out // Output accumulator
);

always @(*) begin
    
    accumulator_out = accumulator_in + ( A * B);
   
end 
endmodule
