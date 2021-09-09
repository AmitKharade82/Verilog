`timescale 1ns / 1ps

 
// Module Name: parity_check_tb

//////////////////////////////////////////////////////////////////////////////////


module parity_check_tb;
    reg [3:0] data_in;
    reg parity_bit;
    wire parity_checkbit;
    
parity_check uut (.data_in(data_in), .parity_bit(parity_bit), .parity_checkbit(parity_checkbit));
    
    
    initial begin 
    data_in = 4'b0000;
    parity_bit = 1'b0;
    #10;
                                           
    data_in = 4'b0001;
    parity_bit = 1'b0;
    #10;
                                           
    data_in = 4'b0010;
    parity_bit = 1'b1;
    #10;
                                          
    data_in = 4'b0011;
    parity_bit = 1'b1;
    #10;
                                           
    data_in = 4'b0100;
    parity_bit = 1'b0;
    #10;
                                           
    data_in = 4'b0101;
    parity_bit = 1'b0;
    #10;
                                                   
    data_in = 4'b0110;
    parity_bit = 1'b1;
    #10;
                                                           
    data_in = 4'b0111;
    parity_bit = 1'b1;
    #10;
                                           
    data_in = 4'b1000;
    parity_bit = 1'b0;
    #10;
                                           
    data_in = 4'b1001;
    parity_bit = 1'b0;
    #10;
                                           
    data_in = 4'b1010;
    parity_bit = 1'b1;
    #10;
                                                   
    data_in = 4'b1011;
    parity_bit = 1'b1;
    #10;
                                                           
    data_in = 4'b1100;
    parity_bit = 1'b0;
    #10;
                                                                   
    data_in = 4'b1101;
    parity_bit = 1'b0;
    #10;
                                         
    data_in = 4'b1110;
    parity_bit = 1'b1;
    #10;
                                                   
    data_in = 4'b1111;
    parity_bit = 1'b1;
    #10;
    end
endmodule