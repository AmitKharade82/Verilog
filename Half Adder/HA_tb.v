
// Module Name: HA_tb

//////////////////////////////////////////////////////////////////////////////////


module HA_tb;
    reg a,b;
    wire sum, cout;

    HA dut (.a(a), .b(b), .sum(sum), .cout(cout));

initial begin
         a = 1'b0; b=1'b0;    //00
    
    #100 a = 1'b0; b=1'b1;    //01
    #100 a = 1'b1; b=1'b0;    //10
    #100 a = 1'b1; b=1'b1;    //11
    
end
endmodule