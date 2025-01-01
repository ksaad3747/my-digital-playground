`timescale 1ns / 1ps
`include "/home/saad/work/sv/my-digital-playground/modules/MUX/MUX.sv"

module MUX_tb;
  localparam  WIDTH = 8;

  logic [WIDTH-1:0] in_b;
  logic [WIDTH-1:0] in_a;
  logic             sel ;
  logic [WIDTH-1:0] out ;

  MUX # (
    .WIDTH (WIDTH)
  )
  i_MUX (
    .in_a (in_a),
    .in_b (in_b),
    .sel  (sel ),
    .out  (out )
  );

  initial begin
    #100;
    $display("--------------------------------");
    $display("Time\t in_a | in_b | sel | out");
    $display("--------------------------------");
    in_a = $urandom(); in_b = $urandom(); sel = 0; #10; $display("%0t\t %4h | %4h | %3b | %3h", $time, in_a, in_b, sel, out);
    in_a = $urandom(); in_b = $urandom(); sel = 1; #10; $display("%0t\t %4h | %4h | %3b | %3h", $time, in_a, in_b, sel, out);
    in_a = $urandom(); in_b = $urandom(); sel = 0; #10; $display("%0t\t %4h | %4h | %3b | %3h", $time, in_a, in_b, sel, out);
    in_a = $urandom(); in_b = $urandom(); sel = 1; #10; $display("%0t\t %4h | %4h | %3b | %3h", $time, in_a, in_b, sel, out);
    $display("--------------------------------");
    $finish();
  end

  initial begin
    $dumpfile("MUX.vcd");
    $dumpvars(0, MUX_tb);
  end

endmodule : MUX_tb