`timescale 1ns / 1ps
module add_sub(
input[1:0]a,b,
input m,
output [1:0]sum,car);
wire [1:0]b_xor;
assign b_xor[0] = b[0] ^ m;
assign b_xor[1] = b[1] ^ m;
assign sum[0] = a[0]^b_xor[0]^m;
assign sum[1] = a[1]^b_xor[1]^car[0];
assign car[0] = (a[0]&b_xor[0])|(b_xor[0]&m)|(a[0]&m);
assign car[1] = (a[1]&b_xor[1])|(b_xor[1]&car[0])|(a[1]&car[0]);
endmodule
