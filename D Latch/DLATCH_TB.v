`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Module Name: DLATCH_TB

//////////////////////////////////////////////////////////////////////////////////


module DLATCH_TB;
   reg D;
   reg EN;
   reg RST;
   wire  Q;
   reg [2:0] delay;
   reg [1:0] delay2;
   integer i;
   
DLATCH dut (.D(D), .EN(EN), .RST(RST), .Q(Q));

initial begin
    D = 1'b0;
    EN = 1'b0;
    RST = 1'b0;

    #100 RST =  1'b1;
    
        for (i= 0; i<5; i=i+1)begin 
        delay = $random;
        delay2 = $random;
        #(delay2) EN <= ~EN;
        #(delay) D <= i;
        end 
    end    
endmodule
