`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: NAND

//////////////////////////////////////////////////////////////////////////////////


module NAND(
    input A,
    input B,
    output Y
    );
    assign Y = ~(A & B); 
endmodule