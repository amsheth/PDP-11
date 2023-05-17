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
      input    clk, 
      input    btn1,btn2,btn3,btn4,rst,start,
      ///////// KEY /////////
      //input    [ 1: 0]   KEY,

      ///////// SW /////////
      input   [ 15: 0]   SW,

      ///////// LEDR /////////
      output logic   [ 15: 0]   LED,

      ///////// HEX /////////
      output logic  [ 6: 0]   HEX,
      output logic  [ 7: 0]   HEXAN
    );

///////// KEY /////////
//logic    btn1,btn2,btn3,btn4,rst,start;
logic[15:0]pc;
logic btn,reset;
//assign LED[13:0]=pc[13:0]; 
//assign LED[15]=btn;
reg clock;
wire [24:0] clkmax;
assign clkmax=25'h0fffff;
reg [24:0] clkdiv;


/////////////////////////// Bus logic //////////////////////////////Page 29 PDP-11 processor handbook pdf
logic BBSY,SACK,BG,INTR,NPR,NPG,SACK;
logic SSYN,MSYN;  /////master user sync
logic [16:0] ISR;
logic [3:0] BR,BG;






always @(posedge clk)
     begin
        if (clkdiv == clkmax)
	  begin
             clock <= ~clock;
             clkdiv <= 0;
	  end
	else
          clkdiv <= clkdiv + 25'b1;
     end
sync s0(.Clk(clock),.d(start),.q(btn));
sync s1(.Clk(clock),.d(rst),.q(reset));
CPU pdp11(.clk(clock),.reset(reset),.initial_pc(SW[15:0]),.pc(pc),.btn(btn));
display_hex disppc(.clk(clk),.reset(1'b0),.hex(pc),.dots(),.sevenseg(HEX),.sevenseg_an(HEXAN[3:0]));
endmodule
