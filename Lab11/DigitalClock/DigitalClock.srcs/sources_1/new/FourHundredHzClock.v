`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 07:15:51 PM
// Design Name: 
// Module Name: SlowClock
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


module FourHundredHzClock(clock,slowclock);

input clock;
output reg slowclock;

reg[20:0] counter;
always @ (posedge clock) begin
    counter = counter+1;
    if(counter == 125_000)
        begin
            slowclock = ~slowclock;
            counter = 0;
        end;
end
    
endmodule
