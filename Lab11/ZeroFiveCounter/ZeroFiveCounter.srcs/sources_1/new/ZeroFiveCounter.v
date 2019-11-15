`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 02:49:50 PM
// Design Name: 
// Module Name: ZeroFiveCounter
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


module ZeroFiveCounter(clk,Q,clkEn);
input clk,clkEn;
output reg [3:0]Q;

always@(posedge clk && clkEn == 1)begin
    if(Q == 5)
        Q = 0;
    else
        Q = Q+1;
end

endmodule
