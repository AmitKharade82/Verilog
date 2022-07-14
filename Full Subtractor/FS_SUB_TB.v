`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: FS_SUB_TB

//////////////////////////////////////////////////////////////////////////////////


module FS_SUB_TB;
    reg A;
    reg B;
    reg C;
    wire Diff;
    wire Borrow;
    
FS_SUB dut (.A(A), .B(B), .C(C), .Diff(Diff), .Borrow(Borrow));

initial begin 
    
        A = 1'b0; B=1'b0; C=1'b0;    //000
   #100 A = 1'b0; B=1'b0; C=1'b1;    //001
   #100 A = 1'b0; B=1'b1; C=1'b0;    //010
   #100 A = 1'b0; B=1'b1; C=1'b1;    //011  
   #100 A = 1'b1; B=1'b0; C=1'b0;    //100
   #100 A = 1'b1; B=1'b0; C=1'b1;    //101
   #100 A = 1'b1; B=1'b1; C=1'b0;    //110
   #100 A = 1'b1; B=1'b1; C=1'b1;    //111    
  

end 

endmodule
