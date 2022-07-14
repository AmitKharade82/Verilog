`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: HS_SUB_TB

//////////////////////////////////////////////////////////////////////////////////


module HS_SUB_TB;
    reg A;
    reg B;
    wire Diff;
    wire Borrow;

HS_SUB dut (.A(A), .B(B), .Diff(Diff), .Borrow(Borrow));

initial begin 
    
        A = 1'b0; B=1'b0;    //00
   #100 A = 1'b0; B=1'b1;    //01
   #100 A = 1'b1; B=1'b0;    //10
   #100 A = 1'b1; B=1'b1;    //11    

end 
 
endmodule
