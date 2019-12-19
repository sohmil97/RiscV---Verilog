module clock(clk);
	parameter delay = 800;
	output reg clk;
	always begin
		clk = 1'b1;
		#delay clk = 1'b0;
		#delay;
	end
endmodule