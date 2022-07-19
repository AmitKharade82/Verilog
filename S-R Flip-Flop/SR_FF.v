`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Module Name: SR_FF

//////////////////////////////////////////////////////////////////////////////////


module SR_FF(
    input S,
    input R,
    input CLK,
    input RST, 
    output reg Q
    );
    
always @ (posedge (CLK))
        begin 
            if (RST)
                begin
                   Q <= 1'b0;
                end   
            else
                begin
                   if (S != R)
                        begin
                        Q <= S;
                        end 
                   else if (S == 1'b1 && R == 1'b1) 
                        begin 
                        Q <= 1'b0; 
                        end 
                end
    end  
endmodule
