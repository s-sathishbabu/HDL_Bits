module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire w1;
wire w2;
wire w4;
wire w3;

    
    and(w1,p2a,p2b);
    and(w2,p2c,p2d);
    and(w3,p1a,p1b,p1c);
    and(w4,p1d,p1e,p1f);
    
    or(p2y,w1,w2);
    or(p1y,w4,w3);
    
endmodule
