
`timescale 1ns/10ps
module twobit_greater_than_tb;
    logic [1:0] a,b;
    logic agtb;

    twobit_greater_than uut(.a(a),.b(b), .agtb(agtb));

    //test vrctor generator
    initial begin
        a = 2'b00;
        b = 2'b01;
        #200;
        a = 2'b00;
        b = 2'b01;
        #200;
        a = 2'b00;
        b = 2'b10;
        #200;
        a = 2'b00;
        b = 2'b11;
        #200;

        a = 2'b01;
        b = 2'b00;
        #200;
        a = 2'b01;
        b = 2'b01;
        #200;
        a = 2'b01;
        b = 2'b10;
        #200;
        a = 2'b01;
        b = 2'b11;
        #200;

        a = 2'b10;
        b = 2'b00;
        #200;
        a = 2'b10;
        b = 2'b01;
        #200;
        a = 2'b10;
        b = 2'b10;
        #200;
        a = 2'b10;
        b = 2'b11;
        #200;

        a = 2'b11;
        b = 2'b00;
        #200;
        a = 2'b11;
        b = 2'b01;
        #200;
        a = 2'b11;
        b = 2'b10;
        #200;
        a = 2'b11;
        b = 2'b11;
        #200;
        $stop;
    end

endmodule