`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Module Name: D_FF_TB

//////////////////////////////////////////////////////////////////////////////////


module D_FF_TB;
    reg D;
    reg CLK;
    reg RST;
    wire Q;

D_FF dut (.D(D), .CLK(CLK), .RST(RST), .Q(Q));

initial begin 
    CLK = 1'b0;
    forever #10 CLK = ~CLK;
end 

initial begin 
         RST = 1'b1;  D = 1'b0;
    #100 RST = 1'b0;  D = 1'b1;
    #100 D = 1'b1;
    #100 D = 1'b0;
end
endmodule
