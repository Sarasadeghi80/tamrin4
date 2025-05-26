`timescale 1ns / 1ps

module Circuit_TB;
    
    reg A, B, C, D;
    wire F1, F2;

    
    main uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .F1(F1),
        .F2(F2)
    );

 
    initial begin
        
        A = 0; B = 0; C = 0; D = 0;
        #500;

        
        A = 0; B = 0; C = 0; D = 0;
        #500;

       
        A = 1; B = 1; C = 0; D = 0;
        #500;

      
        A = 0; B = 0; C = 1; D = 0;
        #500;

     
        A = 0; B = 1; C = 0; D = 0;
        #500;

        
        A = 1; B = 1; C = 1; D = 1;
        #500;

    end
  
endmodule