`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: AND

//////////////////////////////////////////////////////////////////////////////////


module AND(
    input A,
    input B,
    output Y
    );
    assign Y = A & B; 
endmodule