`timescale 1ns / 1ps
  
// Module Name: Decoder_TB

//////////////////////////////////////////////////////////////////////////////////


module Decoder_TB;
    reg [2:0]sel;
    wire [7:0]res;
    
Decoder uut (.res(res), .sel(sel));
             
initial begin 
    sel = 3'b000;
    #100
    
    sel = 3'b001;
    #100
        
    sel = 3'b010;
    #100
            
    sel = 3'b011;
    #100
    
    sel = 3'b100;
    #100
        
    sel = 3'b101;
    #100
    
    sel = 3'b110;
    #100
    
    sel = 3'b111;
        
    end
endmodule
