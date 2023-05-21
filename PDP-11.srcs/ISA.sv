`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2023 12:59:40 PM
// Design Name: 
// Module Name: ISA
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
//Bit 15 indicates word or byte operation except when used with opcode 6, in which case it indicates an ADD or SUBtract instruction.
//• Bits 14-12 indicate the opcode, which specifies the operation to be
//done.
//• Bits 11-6 indicate the 3-bit addressing mode field and the 3-bit
//general register field. These two fields are referred to as the source
//field.
//• Bits 5-0 indicate the 3-bit addressing mode field and the 3-bit general register field. These two fields are referred to as the destination
//field.
//• Some double-operand instructions (ASH, ASHe, MUL, DIV) must
//have the destination operand only in a register. Bits 15-9 specify the
//opcode. Bits 8-6 specify the destination register. Bits 5-0 contain the
//source field. XOR has a similar format, except that the source is in a
//register specified by bits 8-6, and the destination field is specified by
//bits 5-0. 

module ISA( input clk,
        input logic [18:0] address,
        output out
    );
logic reg1;
always_ff @ (posedge clk)begin
if (address[15:9]==6'o004)begin //JSR
reg1=address[8:6];



end

end 
endmodule
