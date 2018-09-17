module tb_ram();
	wire [7:0]out;
	reg [7:0]addr;
	reg [7:0]in;
	reg [7:0]mem[0:255];
	reg r,w,en,clk;

	ram dut(addr,in,out,r,w,en,clk);

	always #5 clk=!clk;

	initial begin
		
		$dumpfile("wave.vcd");
		$dumpvars(0,tb_ram);
		$display("time\t r\t w\t in\t out\t addr\t en\t");
		$monitor("%g\t %b\t %b\t %g\t %g\t %g\t %b\t",$time,r,w,in,out,addr,en);
		clk = 0;
		addr<=8'b10001000;
		in<=8'b11111111;
		#5 r<=0;w<=0;en<=0;
		#5 en<=1;
		#5 w<=1;
		#5 r<=1;
		#5 w<=0;
		#5 en<=0;$finish;
	end
endmodule
