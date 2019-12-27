module memory(clk, address, write_data, memRead, memWrite, read_data);
	parameter n = 64;

	input  clk;
	input [n - 1 : 0] address;
	input [n - 1 : 0] write_data;
	input memRead;
	input memWrite;

	reg [n - 1 : 0] data[100-1: 0];

	output [n - 1 : 0] read_data;

	assign read_data = data[address];
	
	always @(posedge clk)
		if (memWrite)
			data[address] <= write_data;
			
endmodule;