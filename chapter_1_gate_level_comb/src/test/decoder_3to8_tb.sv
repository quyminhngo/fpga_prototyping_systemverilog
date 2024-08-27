`timescale 1ns / 10ps
module decoder_3to8_tb;
  logic [2:0] a;
  logic en;
  logic [7:0] bcode;

  decoder_3to8 uut (.*);


  initial begin
    en = 1'b0;
    for (int i = 3'b000; i <= 3'b111; i++) begin
      a = i;
      #200;
    end
    en = 1'b1;

    for (int i = 3'b000; i <= 3'b111; i++) begin
      a = i;
      #200;
    end
    $stop;
  end



endmodule
