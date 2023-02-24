`timescale 1ns/1ps

module tarea(A1,A2,B1,B2,D1,E_out,A_out,B_out,C_out);
    input A1;
    input A2;
    input B1;
    input B2;
    input D1;
    output A_out;
    output B_out;
    output C_out;
    output E_out;

    //Gate lvl modeling

    and A(A_out,A1,A2);
    or B(B_out,B1,B2);
    and C(C_out,~D1,B2);
    or E(E_out,A_out,B_out,C_out);

endmodule

    