`timescale lns /lps 
module testbench (

	reg clk = 0 ; //100MHz
	reg[7:0] switch = 0 ;
	reg  [3:0] button= 0;
	output wire [3:0] anode ;
	output wire [7:0] cathode;
	);
top UUT (clk , switch , button , anode , cathodes )

always #5 clk  = ~clk;

	initial  
	begin 
	#100 switch [3:0] = 4 ;
	#1000  switch [7:4] = 7
		#100 button =  1; 

end
endmodule 