`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:52:11 PM
// Design Name: 
// Module Name: UpCounter4Bit
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


module UpCounter4Bit(clock,Q
    );
input clock;
output [3:0]Q;
Tff t0 (1,clock,Q[0]);
Tff t1 (1,~Q[0],Q[1]);
Tff t2 (1,~Q[1],Q[2]);
Tff t3 (1,~Q[2],Q[3]);

endmodule
