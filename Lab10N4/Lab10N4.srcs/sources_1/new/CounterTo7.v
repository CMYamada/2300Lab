`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 08:27:27 PM
// Design Name: 
// Module Name: CounterTo7
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


module CounterTo7(
clock,seg,an
    );
input clock;
input [6:0]seg;
output [7:0] an;

assign an[7:0] = 8'b11111110;

endmodule
