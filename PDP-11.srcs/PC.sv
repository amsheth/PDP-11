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
   input  [18:0] initial_pc,
output logic [18:0] pc
    );
 logic [18:0] init;
always_ff @(posedge clk) begin
 if(initial_pc>=18'o770000||initial_pc<=18'o777)begin
 init<=16'h3000;
 end
 else init<=initial_pc; 
 if (~reset) begin
 pc <= init;
 end
 else if (btn) begin
 pc<=pc+18'h00001;
 end
end
endmodule
