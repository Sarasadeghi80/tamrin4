`timescale 1ns / 1ps

module Tb;
    reg [3:0] A, B;
    wire A_lt_B, A_gt_B, A_eq_B;
    
   
    Comparator4bit uut (
        .A(A),
        .B(B),
        .A_lt_B(A_lt_B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B)
    );
    
    initial begin
  
     
        A = 4'b0010; B = 4'b0101;  // A=2, B=5 (A < B)
        #10;
        
        A = 4'b1000; B = 4'b0111;  // A=8, B=7 (A > B)
        #10;
        
        A = 4'b1100; B = 4'b1100;  // A=12, B=12 (A == B)
        #10;
        
    end
endmodule