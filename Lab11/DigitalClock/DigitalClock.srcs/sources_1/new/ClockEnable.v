`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 10:21:48 PM
// Design Name: 
// Module Name: ClockEnable
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


module ClockEnable(EN,EN2,LD,CLK_EN);
input EN,EN2,LD;
output CLK_EN;

assign CLK_EN = (EN && EN2) || LD;
endmodule
