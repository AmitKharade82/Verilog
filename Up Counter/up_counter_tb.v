`timescale 1ns / 1ps

// Module Name: up_counter_tb

//////////////////////////////////////////////////////////////////////////////////


module up_counter_tb;
    reg clk;
    reg rst;
    wire [3:0] count;
    
up_counter dut(clk, rst, count);
    initial begin 
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin
    rst=1;
    #20;
    rst=0;
    end
endmodule
