module mux_src1(
  input [31:0] Rn,
  input [31:0] Rs,
  input [31:0] PC_out,
  input [1:0] select,
  output [31:0] out
);

  always @(*)begin

    if(select == 0)
      	out = Rn;
    else if (select == 1)
    	out = Rs;
    else if (select == 2)
        out = PC_out;
    else
      out = 0;

  end

endmodule