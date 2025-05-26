`timescale 1ns / 1ps
module FourBitAdder (
    input [3:0] A, B,
    input C_in,
    output [3:0] S,
    output C_out,
    output V
);
    wire [4:0] Sum;
    
    // ?????? ??? ? Carry-out
    assign Sum = A + B + C_in;
    assign S = Sum[3:0];
    assign C_out = Sum[4];
    
    // ?????? Overflow (???? ????? ?????????)
    assign V = (A[3] & B[3] & ~S[3]) | (~A[3] & ~B[3] & S[3]);
endmodule