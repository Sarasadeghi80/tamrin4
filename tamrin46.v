`timescale 1ns / 1ps

module Tb;
    reg [3:0] A;
    reg [2:0] B;
    wire [6:0] Y;

  
    Multiplier4x3 uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
       
        A = 4'b0101; B = 3'b011; #10;  // 5 * 3 = 15
        A = 4'b1111; B = 3'b101; #10;  // 15 * 5 = 75
        A = 4'b0011; B = 3'b110; #10;  // 3 * 6 = 18

    end
endmodule