module decoder_3to8 (

    input logic [2:0] a,
    input logic en,
    output logic [7:0] bcode

);


  logic en1, en0;

  decoder_2to4 decoder_2to4_unit_1 (
      .a(a[1:0]),
      .bcode(bcode[7:4]),
      .en(en1)
  );
  decoder_2to4 decoder_2to4_unit_0 (
      .a(a[1:0]),
      .bcode(bcode[3:0]),
      .en(en0)
  );

  assign en1 = en & a[2];

  assign en0 = en & ~a[2];



endmodule

