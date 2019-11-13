`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 03:01:17 PM
// Design Name: 
// Module Name: up_cnt_4bit_tff_sim
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


module up_cnt_4bit_tff_sim(

    );
    // Inputs   
    reg clock; 
 
 // Outputs   
    wire [3:0] Q; 
 
 // Instantiate the Unit Under Test (UUT)   
    UpCounter4Bit uut (clock, Q); 
 
 initial begin   
 clock = 0;   
 forever 
 #50 clock = ~clock;  
 end 
endmodule
