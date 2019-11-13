`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 07:05:18 PM
// Design Name: 
// Module Name: CounterCircuit
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


module CounterCircuit(clock,Q);
input clock;
output reg[3:0] Q;
reg slow;
SlowClock clk(clock,slow);
UpCounter4Bit counter(slow,Q);

endmodule
