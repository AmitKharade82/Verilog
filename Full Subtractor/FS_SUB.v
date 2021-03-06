`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: FS_SUB

//////////////////////////////////////////////////////////////////////////////////


module FS_SUB(
    input A,
    input B,
    input C,
    output Diff,
    output Borrow
    );
    
    assign Diff = (A ^ B) ^ C,
           Borrow  = (~A & C) | (~A & B) | (B & C);
endmodule
