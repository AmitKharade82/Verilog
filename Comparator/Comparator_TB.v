`timescale 1ns / 1ps

// Module Name: Comparator_TB
 
//////////////////////////////////////////////////////////////////////////////////


module Comparator_TB;
    reg A;
    reg B;
    wire AeqB;
    wire AgtB;
    wire AltB;

Comparator uut (.A(A), 
                .B(B), 
                .AeqB(AeqB),
                .AgtB(AgtB), 
                .AltB(AltB)); 
                
    initial begin 
    A = 10;
    B = 10;
    #100
    
    A = 15;
    B = 10;
    #100
        
    A = 10;
    B = 15;

    end 
endmodule