module decoder_3to8_top (
    input  logic [3:0] sw,
    output logic [7:0] led

);
  decoder_3to8 decoder_3to8_unit (
      .en(sw[3]),
      .a(sw[2:0]),
      .bcode(led)
  );
endmodule
