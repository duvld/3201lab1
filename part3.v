module decoder(SW, HEX0);

	input [2:0] SW;
	output [6:0] HEX0;
	
	assign SW;
	assign HEX0;
	
	assign HEX0[0] = (~c[2])|c[1]|~c[0]) & (~c[2])|~c[1]|c[0])&(~c[2])|~c[1]|~c[0]);
	assign HEX0[1] = (~c[0]&c[1]&~c[2]) | (~c[0]&c[1]&c[2])|(c[0]&~c[1]&~c[2])|(c[0]&~c[1]&c[2]);
	assign HEX0[2] = (~c[0]&c[1]&~c[2])|(c[0]&~c[1]&~c[2])|(c[0]&~c[1]&c[2]);
	assign HEX0[3] = (~c[2])|c[1]|~c[0]) & (~c[2])|~c[1]|c[0])&(~c[2])|~c[1]|~c[0]);
	assign HEX0[4] = (c[2])|~c[1]|c[0])&(~c[2])|c[1]|~c[0])&(~c[2])|~c[1]|c[0])&(~c[2])|~c[1]|~c[0]);
	assign HEX0[5] = (~c[0]&~c[1]&~c[2])| (~c[0]&~c[1]&c[2])|(c[0]&~c[1]&~c[2]);
	assign HEX0[6] = (~c[0]&~c[1]&~c[2]) | (~c[0]&~c[1]&c[2])|(~c[0]&c[1]&~c[2])|(~c[0]&c[1]&c[2]);
	
endmodule
	

