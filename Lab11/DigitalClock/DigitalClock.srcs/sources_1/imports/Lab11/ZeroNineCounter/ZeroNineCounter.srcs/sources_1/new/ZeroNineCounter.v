`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 02:36:08 PM
// Design Name: 
// Module Name: ZeroNineCounter
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


module ZeroNineCounter(clk,Q,clkEn,Carry);
input clk; 
input clkEn;
output Carry;
output reg [3:0] Q; 
assign Carry = (Q == 9);
 always @(posedge clk)begin
    if(Q!=9 && clkEn == 1)begin
        Q = Q + 1;
    end  
    else if (Q == 9 && clkEn == 1)begin
        Q = 0;
    end
 end
endmodule
