`timescale 1ns / 1ps
module ALU(
input [3:0]a,b,
input [2:0]sel,
output reg [7:0]result);
always@(*) begin
case(sel)
    3'b000: result = a+b;
    3'b001: result = a-b;
    3'b010: result = a<<1;
    3'b011: result= a&b;
    3'b100: result = a|b;
    3'b101: result = ~a;
    3'b110: result = a^b;
    3'b111: result = b>>1;
  endcase 
 end
endmodule
