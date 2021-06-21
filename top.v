`timescale lns /lps 
module top (
	input wire clk , //100MHz
	input wire [7:0] switch,
	input wire [3:0] button,
	output wire [3:0] anode ,
	output wire [7:0] cathode
	);
// wrapper for  the clock divider 

wire refreshclock ;
wire [1:0] refreshcounter;
ONE_DIGIT[3;0] ONE_DIGIT;

clock_divider refreshclock_generator  (
	.clock(clk),
	.divided_clk(refreshclock)
	);

// 7 segment controler moudules

refreshcounter  Refreshcounter_wapper (

	.refresh_clock (refresh_clock),

     .refreshcounter (refreshcounter),

	); 

    anode_control  anode_control_wapper (

      .refreshcounter(refreshcounter);
      .anode(anode)
    	);

     BCD_control BCD_control_wapper (

      .digit1(switch[3:0]),

      . digit2(switch[7:4]),
     
      .digit3(button[3:0]),
     
      .digit4(button[3:0]),

      .refreshcounter (refreshcounter),
      .ONE_DIGIT(ONE_DIGIT)
     
);

     BCD_to_cathodes BCD_to_cathodes_wapper (

        .digit(ONE_DIGIT),
        .cathode(cathode),
        


     	)
endmodule