`timescale 1ns / 1ps

// Module Name: ALU_4_Bit_TB

//////////////////////////////////////////////////////////////////////////////////


module ALU_4_Bit_TB;
    reg [3:0]a ;
    reg [3:0]b ;
    reg [1:0]opcode ;
    wire [4:0]op ;

ALU_4_Bit uut (.a(a), .b(b), .opcode(opcode), .op(op));

initial begin
        a=4'b0; b=4'b0; opcode = 2'b0;

        #10 a=4'b0100; b=4'b1101; opcode = 2'b00;
        #10 a=4'b0100; b=4'b1101; opcode = 2'b01;
        #10 a=4'b0100; b=4'b1101; opcode = 2'b10;
        #10 a=4'b0100; b=4'b1101; opcode = 2'b11;
        #10 $stop; 
        end 
endmodule