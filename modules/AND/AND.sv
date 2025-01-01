module AND # ( 
  parameter REG_WIDTH = 1
) (
  input  logic [REG_WIDTH-1:0] a,
  input  logic [REG_WIDTH-1:0] b,
  output logic [REG_WIDTH-1:0] y
);
  assign y = a & b;
endmodule : AND