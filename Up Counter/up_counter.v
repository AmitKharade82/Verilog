`timescale 1ns / 1ps

// Module Name: up_counter

//////////////////////////////////////////////////////////////////////////////////


module up_counter(
    input clk,
    input rst,
    output [3:0] count
    );
    reg [3:0] up;
    
    always @(posedge clk or posedge rst)
    begin
    if(rst)
     up <= 4'd0;
    else
     up <= up + 4'd1;
    end 
     assign count = up;
endmodule
