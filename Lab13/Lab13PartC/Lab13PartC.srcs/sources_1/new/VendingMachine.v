`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 08:44:37 PM
// Design Name: 
// Module Name: VendingMachine
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


module VendingMachine(moneyIn,in, clk,reset,state,out,slowerclock);
input moneyIn;
input clk;
input reset;
output [2:0]state;
output [2:0]out;
input [1:0] in;
wire slowclock;
output slowerclock;
reg [2:0] state, next_state;
reg [2:0]out;
Hz1Clock slow (clk,slowclock);
divideByFour div (slowclock,slowerclock);
initial state = 0;
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S5 = 3'b101, S6 = 3'b110, Dispense = 3'b111;
parameter five = 2'b11, two = 2'b10, one = 2'b01;
always @(posedge slowerclock) begin
    if (reset == 1) state <= S0;
    else state <= next_state;
end

always @(state)
        begin
        case (state)
            S0: begin 
                if (moneyIn == 1) begin
                    if (in == one) next_state = S1;
                    else if (in == two) next_state = Dispense;
                    else if (in == five) next_state = S5;
                end
                else next_state = S0;
                end
            S1: begin 
                if( moneyIn == 1) begin
                    if (in == one) next_state = Dispense;
                    else if (in == two) next_state = S3;
                    else if (in == five) next_state = S6;
                end
                else next_state = S1;
                end
            S2: if (moneyIn ==1) next_state = S0;
            S3: next_state = Dispense;
            S5: if (moneyIn ==1) next_state = S3;
            S6: next_state = S5;
            default:
                next_state = S0;
            endcase
     end

always @(*)
    begin
    case (state)
        S0:
            out = 3'b000;
        S1:
            out = 3'b000;
        S2:
            out = 3'b100;
        S3:
            out = 3'b001;
        S5:
            out = 3'b010;
        S6:
            out = 3'b001;
        Dispense:
            out = 3'b100;
        default:
            out = 3'b000;
    endcase
end 

endmodule
