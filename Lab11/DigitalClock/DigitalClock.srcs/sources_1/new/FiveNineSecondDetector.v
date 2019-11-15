`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 10:27:56 PM
// Design Name: 
// Module Name: FiveNineSecondDetector
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


module FiveNineSecondDetector(five,nine,out);
input [3:0] five;
input [3:0] nine;
output out;
assign out = (nine == 9) && (five == 5);

endmodule
