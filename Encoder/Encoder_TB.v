`timescale 1ns / 1ps
 
// Module Name: Encoder_TB

//////////////////////////////////////////////////////////////////////////////////


module Encoder_TB;
    reg [7:0] sel;
    wire [2:0] code;
    
Encoder uut (.sel(sel), .code(code));
    initial begin
        sel = 8'b00000001;
        #100
    
        sel = 8'b00000010;
        #100
    
        sel = 8'b00000100;
        #100
    
        sel = 8'b00001000;
        #100
    
        sel = 8'b00010000;
        #100
    
        sel = 8'b00100000;
        #100
    
        sel = 8'b01000000;
        #100
    
        sel = 8'b10000000;
    end     
endmodule
