module fourbit_greater_than 
    (
        input logic [3:0]a, b,
        output logic agtb
    );

    logic p0,p1,p2,p3;
    twobit_greater_than most_two_bit
         (.a(a[3:2]),.b(b[3:2]),.agtb(p0));
    twobit_greater_than least_two_bit
         (.a(a[1:0]),.b(b[1:0]),.agtb(p1));
    twobit_comparator least_two_bit_eq 
        (.a(a[3:2]),.b(b[3:2]),.aeqb(p2));

    assign p3 = p1 & p2;
    assign agtb = p3 | p0;

endmodule