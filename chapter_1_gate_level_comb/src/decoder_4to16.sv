module decoder_4to16 (
    input logic en,
    input logic [3:0] a,
    output logic [15:0] bcode
);
  logic en3, en2, en1, en0;

  assign en3 = ~a[3] & ~a[2] & en;
  assign en2 = ~a[3] & a[2] & en;
  assign en1 = a[3] & ~a[2] & en;
  assign en0 = a[3] & a[2] & en;

  decoder_2to4 decoder_2to4_unit_3 (
      .en(en3),
      .a(a[1:0]),
      .bcode(bcode[3:0])
  );
  decoder_2to4 decoder_2to4_unit_2 (
      .en(en2),
      .a(a[1:0]),
      .bcode(bcode[7:4])
  );
  decoder_2to4 decoder_2to4_unit_1 (
      .en(en1),
      .a(a[1:0]),
      .bcode(bcode[11:8])
  );
  decoder_2to4 decoder_2to4_unit_0 (
      .en(en0),
      .a(a[1:0]),
      .bcode(bcode[15:12])
  );
endmodule
