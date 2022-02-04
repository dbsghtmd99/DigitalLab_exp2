module stimcrct;
    reg [3:0]D;
    wire x;
    my_FUNC cwd(D[3], D[2], D[1], D[0], x);
    initial begin
        D = 4'b1111;
        repeat(16)
        #10 D = D + 1'b1;
    end

endmodule // stimcrct

module my_FUNC(A, B, C, D, x);
    input A, B, C, D;
    output x;

    wire e1, e2;
    nand G1(e1, A, B);
    nand G2(e2, C, D);
    nand G3(x, e1, e2);
endmodule // my_FUNC
