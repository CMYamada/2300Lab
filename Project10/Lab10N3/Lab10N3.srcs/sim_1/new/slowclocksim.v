`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 07:23:10 PM
// Design Name: 
// Module Name: slowclocksim
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


module slowclocksim(

    );
reg clock;
wire [3:0]Q;
CounterCircuit uut(clock,Q);
initial begin
    clock = 0;
    forever #50 clock = ~clock;
end
endmodule
