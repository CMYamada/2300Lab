`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 10:14:47 PM
// Design Name: 
// Module Name: divideByFour
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


module divideByFour(clock,slowclock);
input clock;
output slowclock;
reg [2:0]counter;
assign slowclock = (counter == 4);
always @ (posedge clock) begin
    if (counter == 4) counter <=0;
    else counter <= counter + 1;
end
endmodule
