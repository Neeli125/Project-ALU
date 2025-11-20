`timescale 1ns / 1ps
module alu_test();
reg [3:0] a,b;
reg [2:0] sel;
wire [7:0] result;
ALU yy(.a(a),.b(b),.sel(sel),.result(result));
initial begin
    #10 a = 4'b0011;    // 3
    b = 4'b0010;    // 2
   sel = 3'b000;
  #10 $display("%b  |  %d  +  %d  |  %d  (ADD)", sel, a, b, result);
  // Case 1: SUB
   sel = 3'b001;
   #10 $display("%b  |  %d  -  %d  |  %d  (SUB)", sel, a, b, result);
  // Case 2: MUL
   sel = 3'b010;
   #10 $display("%b  |  %d  *  %d  |  %d  (MUL)", sel, a, b, result);
  // Case 3: AND
   sel = 3'b011;
   #10 $display("%b  |  %d  &  %d  |  %d  (AND)", sel, a, b, result);
  // Case 4: OR
   sel = 3'b100;
   #10 $display("%b  |  %d   | %d  |  %d  (OR)", sel, a, b, result);
   // Case 5: NOT (uses only A)
   sel = 3'b101;
   #10 $display("%b  |  ~%d  | %d | (NOT A)   ", sel, a,result);
   // Case 6: XOR
   sel = 3'b110;
    #10 $display("%b  |  %d  ^  %d  |  %d  (XOR)", sel, a, b, result);
   // Case 7: XNOR
   sel = 3'b111;
     #10 $display("%b  | ~ (%d  ^  %d  )|  %d  (XNOR)", sel, a, b, result);
 #200;
   $finish;
  end
endmodule
