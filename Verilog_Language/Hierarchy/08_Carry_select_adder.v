module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
   wire w1;
    wire [15:0] w2;
    wire [15:0] w3;
    reg [15:0] w4;
    add16 a1(  a[15:0], b[15:0], 0,  sum[15:0],w1);
    add16 a2(  a[31:16], b[31:16], 0,w2,0);
    add16 a3(  a[31:16], b[31:16], 1'b1,w3,0);
    
    always@(*)
        begin 
            case(w1)
                0:w4=w2;
                1:w4=w3;
                
                default: w4=0;
            endcase  
        end
    assign sum[31:16]=w4;
    assign sum[31:0]={sum[31:16],sum[15:0]}; 
   
endmodule
