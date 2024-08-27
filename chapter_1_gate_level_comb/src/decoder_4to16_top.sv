module decoder_4to16_top (
    input  logic [ 4:0] sw,
    output logic [15:0] led
);
  decoder_4to16 decoder_4to16_unit (
      .en(sw[4]),
      .a(sw[3:0]),
      .bcode(led)
  );
endmodule
