`timescale 1ns / 1ps

// Module Name: counter

//////////////////////////////////////////////////////////////////////////////////


module counter(
    input clk, 
    input rst,
    input ud,
    output reg [3:0] count);
    always @ (posedge clk)
    if (rst)
        count <= 4'b0000;
    else if(ud==1)
        count <= count+1'b1;
    else 
	count <= count -1'b1;
        
endmodule
