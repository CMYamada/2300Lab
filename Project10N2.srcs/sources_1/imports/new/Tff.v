`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:45:09 PM
// Design Name: 
// Module Name: Tff
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


module Tff(
    input t,
    input clk,
    output reg q =1
    );
    
    always @ (posedge clk) begin
    if(t)
        q <= ~q;
    end

endmodule
