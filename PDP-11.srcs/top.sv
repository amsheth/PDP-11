`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2023 01:38:08 AM
// Design Name: 
// Module Name: top
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


module top(
      input     clk, 
      input     btn1,btn2,btn3,btn4,rst,start,
      ///////// KEY /////////
      //input    [ 1: 0]   KEY,

      ///////// SW /////////
      input    [ 15: 0]   SW,

      ///////// LEDR /////////
      output   [ 15: 0]   LED,

      ///////// HEX /////////
      output   [ 6: 0]   HEX,
      output   [ 3: 0]   HEXAN
    );
logic     clk;

///////// KEY /////////
logic    btn1,btn2,btn3,btn4,rst,start;

///////// SW /////////
logic    [ 15: 0]   SW;

///////// LEDR /////////
logic   [ 15: 0]   LED;

///////// HEX /////////
logic   [ 6: 0]   HEX;
logic   [ 7: 0]   HEXAN;

endmodule
