`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: D_FF

//////////////////////////////////////////////////////////////////////////////////


module D_FF(
    input D,
    input CLK,
    input RST,
    output reg Q
    );
    
always@(posedge CLK) 
    begin
    if(RST == 1)
        Q <= 0;
    else 
        Q <= D;  
    end 
endmodule