module MUX # ( 
  parameter WIDTH = 8
) (
  input  logic [WIDTH-1:0] in_a,
  input  logic [WIDTH-1:0] in_b,
  input  logic             sel ,
  output logic [WIDTH-1:0] out
);
  assign out = (sel) ? in_b : in_a;
endmodule : MUX