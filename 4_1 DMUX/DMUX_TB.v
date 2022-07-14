`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: DMUX_TB

//////////////////////////////////////////////////////////////////////////////////


module DMUX_TB;
    reg IN;
    reg [1:0] S;
    wire [3:0] Y;
DMUX dut (.IN(IN), .S(S), .Y(Y));

initial begin
    IN = 1'b0;
    #100
    IN = 1'b1;
end

initial begin
	S = 2'b00;
	#200  S = 2'b01;
	#100  S = 2'b10;
	#100  S = 2'b11;
	#100  $stop;
end
    
endmodule
