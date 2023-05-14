`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2023 08:04:11 PM
// Design Name: 
// Module Name: PC
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


module PC(
input clk, reset,btn,
   input  [15:0] initial_pc,
output logic [15:0] pc
    );
always_ff @(posedge clk) begin
 if (~reset) begin
 pc <= initial_pc;
 end
 else if (pc==16'o17777)begin
 pc<=0;
 end
 else if (btn) begin
 pc<=pc+16'h0001;
 end
end
endmodule
