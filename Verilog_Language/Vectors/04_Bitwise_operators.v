module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    wire [2:0] w1;
    wire [2:0] w2;
    
	assign out_or_bitwise= a|b;
    assign out_or_logical= a||b;
  
    assign w1= a[2:0];
    assign w2= b[2:0];
    assign out_not={~w2,~w1};
    
endmodule
