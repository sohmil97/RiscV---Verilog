module register_bank(clk, regWrite, read_register1, read_register2, write_register, write_data, read_data1, read_data2);
  parameter n = 64;

  input clk;
  reg [n - 1 : 0] registers[31 : 0];
  input regWrite;
  input [4 : 0] read_register1;
  input [4 : 0] read_register2;
  input [4 : 0] write_register;
  input [n - 1 : 0] write_data;
  output [n - 1 : 0] read_data1;
  output [n - 1 : 0] read_data2;

  assign read_data1 = registers[read_register1];
  assign read_data2 = registers[read_register2];

  
  initial begin
  for(i=0;i<n;i=i+1)
    registers[i] <=2'b01;
  end
  

  always@(posedge clk)
    begin
      if (read_register2)
        registers[write_register] <= write_data;
    end



endmodule;