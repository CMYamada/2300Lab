`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 07:34:13 PM
// Design Name: 
// Module Name: driver
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


module driver(clock,Q);
input clock;
output [3:0]Q;
wire slowclock;
SlowClock slow(clock,slowclock);
UpCounter4Bit counter(slowclock,Q);
endmodule
