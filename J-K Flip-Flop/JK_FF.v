`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: JK_FF

//////////////////////////////////////////////////////////////////////////////////


module JK_FF(
    input J,
    input K,
    input CLK,
    output reg Q
    );
    
    
always @(posedge CLK)
    begin
    if(K == 1'b0)
       begin
        Q <= 1'b0;
       end
    else if(J == 1'b1)
       begin
        Q <= 1'b1;
       end
    else if(J == 1'b0 & K == 1'b0)
       begin
        Q <= Q;
       end
    else if(J == 1'b1 & K == 1'b1)
       begin
        Q <= ~Q;
       end
    end
endmodule 