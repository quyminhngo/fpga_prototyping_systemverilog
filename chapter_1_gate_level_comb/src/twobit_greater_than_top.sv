module twobit_greater_than_top 
    (
        input logic[3:0] sw,
        output logic led  
    );

    twobit_greater_than twobit_greater_than_unit_1 
        (.a(sw[3:2]),.b(sw[1:0]),.agtb(led));

endmodule