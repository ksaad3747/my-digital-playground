`timescale 1ns / 1ps
`include "/home/saad/work/sv/my-digital-playground/modules/NOT/NOT.sv"

module NOT_tb;
  logic a;
  logic y;

  NOT i_NOT (
    .a (a),
    .y (y)
  );

  initial begin
    $display("----------------");
    $display("Time\t a | y");
    $display("----------------");
    a = 0; #10; $display("%0t\t %0b | %0b", $time, a, y);
    a = 1; #10; $display("%0t\t %0b | %0b", $time, a, y);
    $display("----------------");
    $finish();
  end

  initial begin
    $dumpfile("NOT.vcd");
    $dumpvars(0, NOT_tb);
  end

endmodule : NOT_tb