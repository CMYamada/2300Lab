`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2019 06:44:48 PM
// Design Name: 
// Module Name: Hz1Clock
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


module Hz1Clock(clkin,clkout);
reg [30:0] counter;
output reg clkout;
input clkin;
initial counter = 0;
initial clkout = 0;
always @(posedge clkin) begin
    if (counter == 0) begin
        counter <= 50_000_000;
        clkout <= ~clkout;
    end else begin
        counter <= counter -1;
    end
end

endmodule
