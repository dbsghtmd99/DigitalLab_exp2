module stimcrct;
    reg in1, in2;
    wire inh1;
    VrInhibit test (in1, in2, inh1);
    initial begin
        in1 = 1'b0; in2 = 1'b0;
        #50
        in1 = 1'b0; in2 = 1'b1;
        #50
        in1 = 1'b1; in2 = 1'b0;
        #50
        in1 = 1'b1; in2 = 1'b1;
        #50
        $finish;
    end
endmodule

module VrInhibit(in1, in2, inh1);
    input in1, in2;
    output inh1;
    wire e;
    and U1(inh1, in1, e);
    not g2(e, in2);
endmodule // VrIngibit