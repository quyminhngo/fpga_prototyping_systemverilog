module onebit_comparator 
    // I/O ports
    (
        input logic i0,
        input logic i1,
        output logic eq   
    );
    // internal signal/bus
        logic p0,p1;
    // architecture
        assign eq = p0 | p1;
        assign p0 = i0 & i1;
        assign p1 = ~i0 & ~i1;

endmodule