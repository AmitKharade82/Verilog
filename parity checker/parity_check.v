`timescale 1ns / 1ps

// Module Name: parity_check

//////////////////////////////////////////////////////////////////////////////////


module parity_check(
        input [3:0] data_in,
        input parity_bit,
        output parity_checkbit 
        );
        
assign parity_checkbit = parity_bit ^((data_in[0]^ data_in[1])^ (data_in[2]^ data_in[3]));
                        
endmodule
