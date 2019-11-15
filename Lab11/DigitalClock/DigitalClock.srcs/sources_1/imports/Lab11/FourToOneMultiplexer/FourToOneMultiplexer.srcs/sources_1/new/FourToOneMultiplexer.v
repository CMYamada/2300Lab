`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 09:32:54 PM
// Design Name: 
// Module Name: FourToOneMultiplexer
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


module FourToOneMultiplexer(IN0,IN1,IN2,IN3,SEL,MUX_OUT);
input [3:0] IN0;
input [3:0] IN1;
input [3:0] IN2;
input [3:0] IN3;
input [1:0] SEL;
output reg [3:0] MUX_OUT;
always @ (SEL) begin
    case(SEL)
        2'b00: MUX_OUT = IN0;
        2'b01: MUX_OUT = IN1;
        2'b10: MUX_OUT = IN2;
        2'b11: MUX_OUT = IN3;
        default: MUX_OUT = 0;
    endcase
end
endmodule
