module decoder_2to4_top
    (
        input logic[2:0] sw,
        output logic[3:0] led
    );
    
    decoder_2to4 decoder_2to4_unit (.en(sw[2]),.a(sw[1:0]),.bcode(led));


endmodule
