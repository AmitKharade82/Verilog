`timescale 1ns / 1ps

// Module Name: parity_gen

//////////////////////////////////////////////////////////////////////////////////


module parity_gen(
    input [3:0]data_in ,
    output parity_out
    );
    
assign parity_out = (data_in[0]^ data_in[1])^ (data_in[2]^ data_in[3]);

endmodule
