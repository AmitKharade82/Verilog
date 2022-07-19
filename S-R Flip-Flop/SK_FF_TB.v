`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: SK_FF_TB

//////////////////////////////////////////////////////////////////////////////////


module SK_FF_TB;
    reg S;
    reg R;
    reg CLK;
    reg RST; 
    wire Q;

SR_FF uut (.S(S), .R(R), .CLK(CLK), .RST(RST), .Q(Q));

always begin
    CLK =1'b1;
    forever #10 CLK = ~CLK;
end

initial begin  
    S= 1'b0; R= 1'b0; RST=1'b0;
    #100; S= 1'b1; R= 1'b0; RST=1'b0;
    #100; S= 1'b0; R= 1'b1; 
    #100; S= 1'b1; R=1'b1; 
end 

endmodule 


