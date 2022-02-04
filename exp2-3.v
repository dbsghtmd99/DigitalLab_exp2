module stimcrct;
    reg A, B;
    wire x;
    my_NOR cwd(A, B, x);
    initial begin
        A = 1'b1; B = 1'b1;
        #80
        A = 1'b0; B = 1'b1;
        #80
        A = 1'b0; B = 1'b0;
        #80
        $finish;
    end

endmodule // stimcrct

module my_NOR (A, B, x);
    input A, B;
    output x;

    wire e1, e2, e3;
    nand #10 G1(e1, A, A);
    nand #10 G2(e2, B, B);
    nand #10 G3(e3, e1, e2);
    nand #10 G4(x, e3, e3);
endmodule // my_NOR
