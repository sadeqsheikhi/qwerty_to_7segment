`timescale lns /lps 
//counter based

module clock_divider (
	
input wire clk , //100MHz

	output reg divided_clk = 0  //10KHz
	);

localparm div_value = 4999; // 10KHz
//division_value = 100Mhz (2*desired Freq ) -1 



integer counter_value = 0;  //32 bit wide reg bus 

always @(posedge clk) // rising edge 0-1
 begin

 // keep counting until div/value
	if (counter_value == div_value)
	counter_value <= 0; // reset value 

	else 
	counter_value<= counter_value+1 // count up

	end 

		
 // divide clock 
 always@(posedge clk)
	 
	 begin
	 if (counter_value == div_value)
	 divided_clk<= ~divided_clk // flip the signal 
	else 
	divided_clk <= divided_clk// store value 
		
	end
endmodule 