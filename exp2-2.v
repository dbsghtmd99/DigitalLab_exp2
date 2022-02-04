module stimcrct;
    reg A, B, C;
    wire x, y;
    circuit_with_delay cwd(A, B, C, x, y);
    initial begin
        A = 1'b0; B = 1'b0; C = 1'b0;
        #50
        C = 1'b1;
        #50
        B = 1'b1; C = 1'b0;
        #50
        C = 1'b1;
        #50
        A = 1'b1; B = 1'b0; C = 1'b0;
        #50
        C = 1'b1;
        #50
        B = 1'b1; C = 1'b0;
        #50
        C = 1'b1;
        #50
        $finish;
    end

endmodule // stimcrct

module circuit_with_delay(A, B, C, x, y);
    input A, B, C;
    output x, y; 
    wire e;
    or  #30 g1(e, A, B);
    and #20 g3(x, e, y);
    not #10 g2(y, C);
endmodule // circuit_with_delay