`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2019 09:54:06 PM
// Design Name: 
// Module Name: DigitalClock
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


module DigitalClock(clock, sw1,sw2,sw3,AN,decoderout,one,fourhundred);
input clock, sw1,sw2,sw3;
wire carrySec,carryMin,fnout,enableS,enableTS,enableM,enableTM;
wire [3:0] sec;
wire [3:0] tensec;
wire [3:0] min;
wire [3:0] tenmin;
wire [1:0] count;
output [7:0] AN;
wire [3:0] muxout;
output [6:0] decoderout;
output one,fourhundred;
//                          (clock,     slowclock)
FourHundredHzClock fHz      (clock,     fourhundred);

//                          (clock,         slowclock)
OneHzClock oHz              (fourhundred,   one);

//                          (clk,       Q,      clkEn,      Carry)
ZeroNineCounter Csec        (one,       sec,    enableS,    carrySec);
ZeroNineCounter Cmin        (one,       min,    enableM,    carryMin);

//                          (clk,       Q,      clkEn)
ZeroFiveCounter Ctensec     (one,       tensec, enableTS);
ZeroFiveCounter Ctenmin     (one,       tenmin, enableTM);

//                          (EN,        EN2,        LD,     CLK_EN)
ClockEnable CEsec           (1,         1,          1,      enableS);
ClockEnable CEtensec        (1,         carrySec,   sw1,    enableTS);
ClockEnable CEmin           (1,         fnout,      sw2,    enableM);
ClockEnable CEtenmin        (carryMin,  fnout,      sw3,    enableTM);

//                          (five,      nine,   out)
FiveNineSecondDetector FNSD (tensec,    sec,    fnout);

//                          (IN0,   IN1,    IN2,    IN3,    SEL,    MUX_OUT)
FourToOneMultiplexer FOMux  (sec,   tensec, min,    tenmin, count,  muxout);

//                          (clock,         count)
UpCounter2Bit upcount       (fourhundred,   count);

//                          (select,    out)
TwoFourDecoder TFD          (count,     AN);

//                          (sw,        seg)
SevenSeg display            (muxout,    decoderout);
endmodule
