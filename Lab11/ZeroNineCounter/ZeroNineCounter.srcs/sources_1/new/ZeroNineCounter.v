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
output reg Carry;
output reg [3:0] Q; 

 always @(posedge clk && clkEn == 1)begin
    if(Q == 9)begin
        Q = 0;
        assign Carry = 1;
    end  
    else begin
        Q = Q + 1;
        assign Carry = 0;
    end
 end
endmodule
