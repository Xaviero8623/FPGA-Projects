`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2025 03:10:41 PM
// Design Name: 
// Module Name: Four_Bit_Register_tb
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


module Four_Bit_Register_tb;

logic [3:0] data_in;
logic [3:0] data_out;
logic clk;
logic clk_button;
logic reset;

Four_Bit_Register DUT (.clk(clk),
                       .clk_button(clk_button), 
                       .data_in(data_in),
                       .data_out(data_out),
                       .reset(reset));
                       
always #1 clk = ~ clk;

initial begin
clk = 0;
data_in = 4'b0000;
clk_button = 0;
data_out = 4'b0000;
reset = 0;
#4
data_in= 4'b1010;
#5
clk_button = 1;
#5
data_in = 4'b0001;
#5
clk_button = 0;
#10
clk_button = 1;
#10
reset = 1;
#10
$finish;
end

endmodule
