`timescale 1ns / 1ps

// Module Name: Encoder

//////////////////////////////////////////////////////////////////////////////////


module Encoder(
    input [7:0] sel,
    output reg  [2:0] code
    );
    always @ (sel, code)
    begin 
    case(sel)
        8'b00000001 : code <= 3'b000;
        8'b00000010 : code <= 3'b001;
        8'b00000100 : code <= 3'b010;
        8'b00001000 : code <= 3'b011;
        8'b00010000 : code <= 3'b100;
        8'b00100000 : code <= 3'b101;
        8'b01000000 : code <= 3'b110;
        default : code <= 3'b111;
        endcase
    end
endmodule
