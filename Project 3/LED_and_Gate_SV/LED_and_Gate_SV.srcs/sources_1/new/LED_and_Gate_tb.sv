`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2025 11:05:41 AM
// Design Name: 
// Module Name: LED_and_Gate_tb
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


module LED_and_Gate_tb;

logic [1:0] sw_tb;
logic [2:0] led_tb;

LED_and_Gate DUT ( .sw(sw_tb),
                   .led(led_tb));
                 
initial begin

        sw_tb = 2'b00; #10; 
        sw_tb = 2'b01; #10; 
        sw_tb = 2'b10; #10; 
        sw_tb = 2'b11; #10; 
        $finish;
        
   end
endmodule
