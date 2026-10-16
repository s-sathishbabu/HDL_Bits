module top_module (
input pla, p1b, p1c, p1d,
output ply,
input p2a, p2b, p2c, p2d,
output p2y);

assign ply= ~(p1a&p1b&p1c&p1d);
assign p2y = ~(p2a&p2b&p2c&p2d);

endmodule