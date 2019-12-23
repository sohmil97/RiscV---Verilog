module instrution_memory(clk, read_address, data_out);
   parameter n = 64;

   input clk;
   input [n - 1 : 0] read_address;
   output [n - 1 : 0] data_out;

   reg [n - 1 : 0] memory [1024 - 1 : 0];

   initial begin
      // for(i=0;i<n;i=i+1)
      // mem[i] <=2'b01;
   end

   assign data_out = memory[read_address];

endmodule;