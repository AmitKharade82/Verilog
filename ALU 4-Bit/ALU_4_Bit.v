`timescale 1ns / 1ps

// Module Name: ALU_4_Bit

//////////////////////////////////////////////////////////////////////////////////


module ALU_4_Bit(
    input [3:0]a,
    input [3:0]b,
    input [1:0]opcode,
    output reg [4:0]op);
	 
	always @ (opcode, a, b)
        case(opcode)
                    2'd0: op = a + b;
                    2'd1: op = a & b;
                    2'd2: op = a | b;
                    2'd3: op = a ^ b;
        endcase
endmodule

