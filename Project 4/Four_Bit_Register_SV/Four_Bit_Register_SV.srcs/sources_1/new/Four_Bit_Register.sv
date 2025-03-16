`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2025 02:39:33 PM
// Design Name: 
// Module Name: Four_Bit_Register
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


module Four_Bit_Register(input logic [3:0] data_in, 
                         input logic clk, clk_button, reset,
                         output logic [3:0] data_out);
                         
logic previous;                         
logic flipflop1;
logic flipflop2;
logic debounced;
                         
always_ff @(posedge clk) begin
    flipflop1 <= clk_button;
    flipflop2 <= flipflop1;
    end
    
assign debounced = flipflop1 & flipflop2;

always_ff @(posedge clk) begin
    previous <= debounced;
end
    
always_ff @(posedge clk) begin
    if(reset)
    data_out <= 0;
    else if(debounced && !previous)
    data_out <= data_in;
end
endmodule
