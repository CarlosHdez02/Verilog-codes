module mux_2x1 (x1,x2,s,f);
    input x1 ;
    input x2; 
    input s;
    output f;

//Gate level modeling
    assign f = ~s & x1 || s & x2;
    

    //Mathematical modeling of that would be: f = not(s)*x1 + s*x2
endmodule


