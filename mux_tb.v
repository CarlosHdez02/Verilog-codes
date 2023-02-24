`timescale 1ns / 1ns
`include "mux.v"

module mux;
reg f;
wire x1;

mux uut(x1,x2,f,s);

initial begin

    $dumpfile("mux_tb.vcd");
    $dumpvars(0, mux_tb);

    s = 0;
    #20;
    s=1;
    #20;
    s=0;
    #20
    $display("Test complete");
end
endmodule
