`timescale 1ns / 1ps

// Module Name: counter_TB

//////////////////////////////////////////////////////////////////////////////////


module counter_TB;
    reg clk, rst, ud;
    wire [3:0] count;
    counter dut (clk, ud, rst, count);
    
    initial begin 
        clk = 1;
        forever #5 clk = ~clk;
    end
    
initial begin
        rst = 1'b1; 
        ud = 1'b1;
        #30 rst =1'b0;
        #200 $stop;
        ud = 1'b0; 
        #250 rst = 1'b1;
        #30 $stop;
        end

endmodule

