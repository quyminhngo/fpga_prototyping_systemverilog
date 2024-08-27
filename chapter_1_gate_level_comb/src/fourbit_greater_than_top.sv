module fourbit_greater_than_top 
    (
        input logic[7:0] sw,
        output logic led
    );
    

    fourbit_greater_than fourbit_greater_than_unit 
        (.a(sw[7:4]),.b(sw[3:0]),.agtb(led));
endmodule