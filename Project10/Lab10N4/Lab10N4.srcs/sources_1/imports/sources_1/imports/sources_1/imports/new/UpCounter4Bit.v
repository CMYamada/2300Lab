`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:52:11 PM
// Design Name: 
// Module Name: UpCounter4Bit
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


module UpCounter4Bit(clock,Q);
    
input clock;
output[3:0]Q;

Dff d0 (1,clock,Q);
endmodule
