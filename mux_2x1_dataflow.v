`timescale 1ns/1ps

module mux_2x1_dataflow (
    input x1,x2,s;
    output f;
);
    //Function would be f = not(s)*x1 + s*x2
    //structural modeling
   assign f = ~s & x1 || s & x2;
    
endmodule