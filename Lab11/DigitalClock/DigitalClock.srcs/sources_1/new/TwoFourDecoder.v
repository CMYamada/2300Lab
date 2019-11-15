`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 10:53:24 PM
// Design Name: 
// Module Name: TwoFourDecoder
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


module TwoFourDecoder(select, out);
input [1:0] select;
output reg [7:0] out;
always @ (select) begin
    case (select)
        2'b00: out = 8'b11111110 ;
        2'b01: out = 8'b11111101 ;
        2'b10: out = 8'b11111011 ;
        2'b11: out = 8'b11110111 ;
    endcase
end
endmodule
