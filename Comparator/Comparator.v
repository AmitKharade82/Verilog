`timescale 1ns / 1ps
 
// Module Name: Comparator
 
//////////////////////////////////////////////////////////////////////////////////


module Comparator(
    input A,
    input B,
    output reg AeqB,
    output reg AgtB,
    output reg AltB
    );
    always @ (A or B)
    begin 
     if (A==B) 
        begin  AeqB <= 1; AgtB <= 0; AltB <= 0; end
     else if (A>B) 
        begin  AeqB <= 0; AgtB <= 1; AltB <= 0; end
     else if (A<B) 
        begin  AeqB <= 0; AgtB <= 0; AltB <= 1; end
     end
endmodule