`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2025 10:50:26 AM
// Design Name: 
// Module Name: LED_and_Gate
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


module LED_and_Gate(input logic [1:0] sw,
                    output logic [2:0] led);


always_comb
    case (sw)
    0: led = 3'b000;
    1: led = 3'b001;
    2: led = 3'b010;
    3: led = 3'b100;
    default: led = 3'b000;
    endcase
endmodule