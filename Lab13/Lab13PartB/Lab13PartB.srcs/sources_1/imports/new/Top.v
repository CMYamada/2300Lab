`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2019 06:44:48 PM
// Design Name: 
// Module Name: Top
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


module Top(in,clk,reset,state,out);
input in;
input clk;
input reset;
output[1:0] state;
output out;

reg slowclock;
reg [1:0] state, next_state;
reg out;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

Hz1Clock slow (clk,slowclock);

always @ ( posedge slowclock or posedge reset)
if(reset == 1) state <= S0;
else state <= next_state;

always @ (state,in) begin
    case ( state)
        S0:
            if(in == 1) next_state = S1;
            else next_state = S0;
        S1:
            if(in == 0) next_state = S2;
            else next_state = S0;
        S2:
            if(in == 0) next_state = S3;
            else next_state = S0;
        S3:
            if(in == 1) next_state = S3;
            else next_state = S0;
     endcase
end

always @ ( * ) begin
    case (state)
        S0:
            out = 0;
        S1:
            out = 0;
        S2:
            out = 0;
        S3:
            out = 1;
    endcase
end

endmodule
