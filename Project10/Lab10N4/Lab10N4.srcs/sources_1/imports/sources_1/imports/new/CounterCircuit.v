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


module CounterCircuit(clock,Q,seg,AN);
input clock;
output [3:0] Q;
wire slowclock;
output [6:0] seg;
output [7:0] AN;
assign AN[7:0] = 8'b11111110;

SlowClock           slow        (clock,slowclock);

//                              (clock    , Q)
UpCounter4Bit       counter     (slowclock, Q);

//                               Q ,seg
SevenSeg            display     (Q ,seg);



endmodule
