module part4(KEY, SW, M);
	
	input [2:0] KEY;
	input [17:0] SW;
	wire [2:0] SW_WIRE;

	muxFiveThreeTimes use1(KEY, SW[17:15], SW[14:12], SW[11:9], 
		SW[8:6], SW[5:3], SW[2:0], SW_WIRE);

	decoder(SW_WIRE, HEX0);

endmodule