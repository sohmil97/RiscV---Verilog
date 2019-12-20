module mux(input_data_1, input_data_2, select, output_data);
    parameter n = 64;

	input select;
	input [n - 1 : 0] input_data_1, input_data_2;
	output[n - 1 : 0] output_data;

	assign output_data = select ? input_data_1 : input_data_2;

endmodule