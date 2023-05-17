`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2023 11:19:23 AM
// Design Name: 
// Module Name: address
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



///When bit 3 of the source/destination field is set, indirect addressing is
///specified and the four basic modes become deferred modes. 


////mode 0 => Register
////mode 1 => Register deferred mode I.E LDR/strish kinda mode
////mode 2 => Auto Increment Mode I.E increment the value of regsiter after the operation.
////mode 3 => AUTOINCREMENT DEFERRED MODE
////mode 4 => AUTODECREMENT MODE
////mode 5 => Autodecrement deferred
////mode 6 => Index
////mode 7 => Index deferred


/////If the 3rd bit of mode is 1 then its deferred mode. 
/////

 



module address(
input logic clk,
input logic [16:0] ad,
output logic [16:0] fin
    );
    
logic def;
always_ff @ (posedge clk) begin
if (ad[3]) begin


end
case (ad[5:4])
    2'b00: ;
    2'b01: ;
    2'b10: ;
    2'b11: ;
    default: ;
endcase


end
endmodule
