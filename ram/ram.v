module ram(input [7:0]addr,input [7:0]in,output reg [7:0]out,input r,input w,input en,input clk);

reg[7:0]mem[0:255];

	always @(posedge clk)
begin
	if (en) begin
		if (w&&!r) mem[addr] = in;
		else if (r&&!w) out = mem[addr];
	end
end	
endmodule
