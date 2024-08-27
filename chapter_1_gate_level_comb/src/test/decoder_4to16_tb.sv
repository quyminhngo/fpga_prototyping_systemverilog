
`timescale 1ns / 10ps
module decoder_4to16_tb;
  logic [3:0] a;
  logic en;
  logic [15:0] bcode;

  decoder_4to16 uut (.*);


  initial begin
    en = 1'b0;
    for (int i = 4'b0000; i <= 4'b1111; i++) begin
      a = i;
      #200;
    end
    en = 1'b1;

    for (int i = 4'b0000; i <= 4'b1111; i++) begin
      a = i;
      #200;
    end
    $stop;
  end



endmodule
