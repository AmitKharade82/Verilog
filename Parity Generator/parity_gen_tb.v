`timescale 1ns / 1ps
 
// Module Name: parity_gen_tb

//////////////////////////////////////////////////////////////////////////////////


module parity_gen_tb;
    reg [3:0]data_in;
    wire parity_out;
    
parity_gen uut (.data_in(data_in), .parity_out(parity_out));

        initial begin 
        data_in = 4'b0000;
        #10;
                                               
        data_in = 4'b0001;
        #10;
                                               
        data_in = 4'b0010;
        #10;
                                              
        data_in = 4'b0011;
        #10;
                                               
        data_in = 4'b0100;
        #10;
                                               
        data_in = 4'b0101;
        #10;
                                                       
        data_in = 4'b0110;
        #10;
                                                               
        data_in = 4'b0111;
        #10;
                                               
        data_in = 4'b1000;
        #10;
                                               
        data_in = 4'b1001;
        #10;
                                               
        data_in = 4'b1010;
        #10;
                                                       
        data_in = 4'b1011;
        #10;
                                                               
        data_in = 4'b1100;
        #10;
                                                                       
        data_in = 4'b1101;
        #10;
                                             
        data_in = 4'b1110;
        #10;
                                                       
        data_in = 4'b1111;
        #10;$stop;
        end
endmodule
