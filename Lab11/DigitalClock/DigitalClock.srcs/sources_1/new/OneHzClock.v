`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 10:04:00 PM
// Design Name: 
// Module Name: OneHzClock
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


module OneHzClock(clock,slowclock);
input clock;
output reg slowclock;

reg[8:0] counter;
always @ (posedge clock) begin
    counter = counter+1;
    if(counter == 200)
        begin
            slowclock = ~slowclock;
            counter = 0;
        end;
end
    
endmodule

