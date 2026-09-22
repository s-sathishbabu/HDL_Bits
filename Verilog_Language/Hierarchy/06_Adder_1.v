module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2,w3,w4,w5,w6;
    assign w1=a[15:0];
    assign w2=b[15:0];
    assign w3=a[31:16];
    assign w4=b[31:16];
   
    wire w7,cout;
    
    add16 ins1( w1,w2,1'b0,sum[15:0], w7 );
    add16 ins2( w3,w4,w7,sum[31:16] );
    

    


endmodule
