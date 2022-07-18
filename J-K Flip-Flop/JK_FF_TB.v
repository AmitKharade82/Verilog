`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: JK_FF_TB

//////////////////////////////////////////////////////////////////////////////////


module JK_FF_TB;
    reg J;
    reg K;
    reg CLK;
    wire  Q;
    
JK_FF dut (.J(J), .K(K), .CLK(CLK), .Q(Q));

initial begin 
    CLK = 1'b1;
    forever #10 CLK = ~CLK;
end 

initial begin  
    J= 1'b1; K= 1'b0;
    #100; J= 1'b0; K= 1'b1; 
    #100; J= 1'b0; K= 1'b0; 
    #100; J= 1'b1; K=1; 
end 

endmodule 
    