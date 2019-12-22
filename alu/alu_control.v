module ALUControl(ALUOp0, ALUOp1, instruction_part, alu_function);

    input ALUOp0, ALUOp1;
    input [9:0] instruction_part;
    output reg [3:0] alu_function;

    assign important_bits = {ALUOp0, ALUOp1, instruction_part}; 	

    always @ (ALUOp0, ALUOp1, instruction_part) begin
        casex(important_bits)
                12'b00xxxxxxxxxx: ALUFunc=4'b0010; // ADD
                12'bx1xxxxxxxxxx: ALUFunc=4'b0110; // SUB
                12'b1x0000000000: ALUFunc=4'b0010; // ADD
                12'b1x0100000000: ALUFunc=4'b0110; // SUB 
                12'b1x0000000111: ALUFunc=4'b0000; // AND
                12'b1x0000000110: ALUFunc=4'b0001; // OR
            default: alu_function = 4'bz;
        endcase

    end

endmodule
