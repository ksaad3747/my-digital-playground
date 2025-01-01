`timescale 1ns / 1ps
`include "/home/saad/work/sv/my-digital-playground/modules/OR/OR.sv"

module OR_tb;
  localparam REG_WIDTH = 3;
  logic [REG_WIDTH-1:0] a;
  logic [REG_WIDTH-1:0] b;
  logic [REG_WIDTH-1:0] y;

  OR #(
    .REG_WIDTH (REG_WIDTH)
  ) i_OR (
    .a (a),
    .b (b),
    .y (y)
  );

  initial begin
    $display("----------------");
    $display("Time\t a b | y");
    $display("----------------");
    a = 0; b = 0; #10; $display("%0t\t %0b %0b | %0b", $time, a, b, y);
    a = 0; b = 1; #10; $display("%0t\t %0b %0b | %0b", $time, a, b, y);
    a = 1; b = 0; #10; $display("%0t\t %0b %0b | %0b", $time, a, b, y);
    a = 1; b = 1; #10; $display("%0t\t %0b %0b | %0b", $time, a, b, y);
    $display("----------------");
    $finish();
  end

  initial begin
    $dumpfile("OR.vcd");
    $dumpvars(0, OR_tb);
  end

endmodule : OR_tb