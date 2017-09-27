module mux(s, x, y, m);
	
	input s, x, y;
	output m;

	assign m = (~s & x) | (s & y);

endmodule

module muxFive(s,u,v,w,x,y,z,m);
	
	input u,v,w,x,y,z;
	wire uv, wx, yz, uvwx;  
	input [2:0] s;

	output m;

	//the first 3 uses of the MUX

	mux use1(s[0], u, v, uv);
	mux use2(s[0], w, x, wx);
	mux use3(s[0], y, z, yz);

	//using the outputs of the previous 3 as inputs

	mux use4(s[1] uv, wx, uvwx);

	//the final mux using the output of the previous 1 and yz as input

	mux use5(s[2], uvwx, yz, m);

endmodule

module muxFiveThreeTimes(s,u,v,w,x,y,z,m);

	input [2:0] s,u,v,w,x,y,z;
	output [2:0] m;

	muxFive use1(s,u[0],v[0],w[0],x[0],y[0],z[0],m[0]);
	muxFive use1(s,u[1],v[1],w[1],x[1],y[1],z[1],m[1]);
	muxFive use1(s,u[2],v[2],w[2],x[2],y[2],z[2],m[2]);

endmodule

