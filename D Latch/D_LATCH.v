`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Module Name: D_LATCH

//////////////////////////////////////////////////////////////////////////////////


module DLATCH(
    input D,
    input EN,
    input RST,
    output reg Q
    );
    
always @ (EN or RST or D)
    if (!RST)
        Q = 1'b0;
    else
        if (EN)
            Q = D ;
endmodule
