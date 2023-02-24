`timescale 1ns/1ps

initial
 begin
    $dumpfile("mux_2x1.vcd");
    $dumpvars(0,mux_2x1);
 end

module mux_2x1 (x1,x2,s,f);
    input x1 ;
    input x2; 
    input s;
    output f;

//Gate level modeling
    not(sn, s);
    and A0(g0, x1,sn);
    and A1(g1,s,x2);
    or or_0(f,g0,g1);

    //Mathematical modeling of that would be: f = not(s)*x1 + s*x2
endmodule


