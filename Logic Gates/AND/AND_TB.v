`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Module Name: AND_TB

//////////////////////////////////////////////////////////////////////////////////


module AND_TB;
    reg A;
    reg B;
    wire Y;

AND dut (.A(A), .B(B), .Y(Y));

initial begin

         A = 1'b0; B=1'b0;    //00
    #100 A = 1'b0; B=1'b1;    //01
    #100 A = 1'b1; B=1'b0;    //10
    #100 A = 1'b1; B=1'b1;    //11    

end

endmodule
