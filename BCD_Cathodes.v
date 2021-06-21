module BCD_to_cathodes(

input[3;0] digit ,  

	output reg [7;0] cathod = 0 


	);

always @(digit)
 begin
	case(digit)
		
		4'd0: 
		cathodes = 8'11000000;   // 0 
		
	    4'd1: 
		cathodes = 8'11111001;
		4'd2: 
		cathodes = 8'10100100;
		4'd3: 
		cathodes = 8'10110000;
		4'd4: 
		cathodes = 8'10011001;
		4'd5: 
		cathodes = 8'10010010;
		4'd6: 
		cathodes = 8'10000010;
		4'd7: 
		cathodes = 8'11100000;
		4'd8: 
		cathodes = 8'10000000;
	    4'd9: 
		cathodes = 8'10010000;
		default: 
		 cathodes = 8'11000000;
endcase
end 
endmodule 