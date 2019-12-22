module ALU(input_data_1, input_data_2, control, output_data);
	parameter n = 64;

	input [n-1:0] input_data_1;
	input [n-1:0] input_data_2;
	input [3:0] control;
	output reg [n-1:0] out;

	always @(control)
		case (control)
			4'b0000: output_data <= input_data_1 & input_data_2;
			4'b0001: output_data <= input_data_1 | input_data_2;
			4'b0010: output_data <= input_data_1 + input_data_2;
			4'b0110: output_data <= input_data_1 - input_data_2;
			default: output_data <= 64'h00000000;
		endcase

endmodule
