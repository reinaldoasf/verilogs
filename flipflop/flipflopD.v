module flipflopD(D,clk,q,qb);
	input clk;
	input D;
	output q;
	output qb;
	wire a;
	wire b;
	reg q;
	reg qb;
	
	always @(posedge clock)

	nand U0(a,D,clk);
	nand U1(b,not D,clk);
	nand U2(q,a,qb);
	nand U3(qb,b,q);
endmodule
#verilogs
