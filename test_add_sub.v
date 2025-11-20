`timescale 1ns / 1ps
module test_add_sub();
reg [1:0]a,b;
reg m;
wire [1:0]sum,car;
add_sub yy(.a(a),.b(b),.m(m),.sum(sum),.car(car));
initial begin

#10 a = 2; b=1;m=0;
#10 a = 1; b=3;m=1;
#10 a = 3; b=2;m=0;
#10 a = 3;b=2;m=1;
#200;
$finish;
end
endmodule
