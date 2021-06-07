// Module Name: FA_testbench

//////////////////////////////////////////////////////////////////////////////////

module FA_testbench;
    reg a,b,cin;
    wire sum, cout;

    FA dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
     	a = 1'b0; 
	b=1'b0; 
	cin= 1'b0;			//000
     
	#10 cin= 1'b1;			//001
     	#10 b=1'b1;cin= 1'b0;		//010
     	#10 cin= 1'b1; 		        //011
     	#10 a = 1'b1;b=1'b0;cin= 1'b0;  //100
     	#10 cin= 1'b1;			//101
     	#10 b=1'b1; cin= 1'b0;		//110
     	#10 cin= 1'b1;			//111
    end
endmodule
