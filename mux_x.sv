module mux_x(
  input [31:0] data_memory,
  input [31:0] RD_data,
  input select,
  output [31:0] out
);

  always @(*)begin

    if(select == 0)
      	out = data_memory;
    else if (select == 1)
    	out = RD_data;
    else
      out = 0;

  end

endmodule