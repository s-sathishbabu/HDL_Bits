module top_module (input x, input y, output z); wire w1,w2, w3, w4, w5, w6;

top1 ia1 (x, y, w1);
top2 ib1 (x, y, w2);

top1 ia2(x, y, w3);
top2 ib2(x, y, w4);

assign w5 w1w2;
assign w6 w3&w4;
assign z= w5^w6;

endmodule

module top1 (input x, input y, output z);

assign z = (x^y) & x;

endmodule

module top2(input x, input y, output z);

assign z= ~(x^y);

endmodule