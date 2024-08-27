`timescale 1ns/10ps
module decoder_2to4_tb;

    logic[1:0] a;
    logic[3:0] bcode;
    logic en;
    decoder_2to4 uut (.a(a),.bcode(bcode),.en(en));

    initial begin
        en = 1'b0;
        a = 2'b00;
        #200;
        a = 2'b01;
        #200;
        a = 2'b10;
        #200;
        a = 2'b11;
        #200;
        
        en = 1'b1;
        a = 2'b00;
        #200;
        a = 2'b01;
        #200;
        a = 2'b10;
        #200;
        a = 2'b11;
        #200;

        $stop;
    end
endmodule

