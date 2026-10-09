module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    genvar i;
    
    wire [100:0] c;
    assign c[0] =cin;
    
    generate
        for(i=0;i<100;i=i+1)	begin:genadder
            fa fa100(a[i],b[i],c[i],sum[i], c[i+1]);
            assign cout[i] = c[i+1];    
          end  
        endgenerate 

    endmodule

    module fa(input a,b,cin,output sum,cout);
        assign sum = a^b^cin;
        assign cout = a&b | b&cin | cin&a ;
    endmodule


