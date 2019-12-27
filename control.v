module control(instruction_part, ALUSrc, memToReg, regWrite, memRead, memWrite, branch, ALUOp1, ALUOp0);

    input [6 : 0] instruction_part;
    reg [7:0] value;
    output ALUSrc, memToReg, regWrite, memRead, memWrite, branch, ALUOp1, ALUOp0;

    assign { ALUSrc, memToReg, regWrite, memRead, memWrite, branch, ALUOp1, ALUOp0} = value;  

    always @ (instruction_part) begin
    
        casex(instruction_part)
            7'b0110011: value = 8'b00100010;
            7'b0000011: value = 8'b11110000;
            7'b0100011: value = 8'b1x001000;
            7'b1100011: value = 8'b0x000101;
            7'b0: value = 8'b0;
        endcase

    end

endmodule
