`timescale 1ns / 1ps
`include "/home/saad/work/sv/my-digital-playground/modules/AND/AND.sv"

module AND_tb;
  localparam REG_WIDTH = 3;
  logic [REG_WIDTH-1:0] a;
  logic [REG_WIDTH-1:0] b;
  logic [REG_WIDTH-1:0] y;

  AND #(
    .REG_WIDTH (REG_WIDTH)
  ) i_AND (
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
    $dumpfile("AND.vcd");
    $dumpvars(0, AND_tb);
  end

endmodule : AND_tb