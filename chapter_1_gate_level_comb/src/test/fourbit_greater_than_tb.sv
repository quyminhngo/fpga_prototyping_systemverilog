`timescale 1ns/10ps
module fourbit_greater_than_tb;

    logic [3:0] a,b;

    logic agtb;

    fourbit_greater_than uut (.a(a),.b(b),.agtb(agtb));
    initial begin
        for(int i = 4'b0000; i <= 4'b1111; i++) begin
            for(int j = 4'b0000; j <= 4'b1111; j++) begin
                a = i;
                b = j;
                #200;
            end
        end

        $stop;

    end

endmodule