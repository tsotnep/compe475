module mux_y(
  input [31:0] Ard,
  input [3:0] jump,
  input select,
  output [31:0] out
);

  always @(*)begin

    if(select == 0)
      	out = Ard;
    else if (select == 1)
    	out = jump;
    else
      out = 0;

  end

endmodule