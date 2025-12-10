`timescale 1ns/1ps
module counter_register_tb;
reg clk, rst, en;
wire [3:0] count;
counter_register uut(.clk(clk), .rst(rst), .en(en));
initial clk = 0; always #5 clk = ~clk;

initial begin
  rst = 1; en = 0; #10 rst = 0;
  #10 en = 1;
  #100 $finish;
end
endmodule
