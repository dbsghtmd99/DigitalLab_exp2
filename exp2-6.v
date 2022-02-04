module fred_test;
    reg a, b, c;
    wire x;

    fred cwd(a, b, c, x);
    initial begin
        a = 1'b0; b = 1'b0; c = 1'b0;
        #50
        a = 1'b0; b = 1'b0; c = 1'b1;
        #50
        a = 1'b0; b = 1'b1; c = 1'b0;
        #50
        a = 1'b0; b = 1'b1; c = 1'b1;
        #50
        a = 1'b1; b = 1'b0; c = 1'b0;
        #50
        a = 1'b1; b = 1'b0; c = 1'b1;
        #50
        a = 1'b1; b = 1'b1; c = 1'b0;
        #50
        a = 1'b1; b = 1'b1; c = 1'b1;
        #50
        $finish;
    end

endmodule // fred_test

module fred(a, b, c, f);
    output f;
    input a, b, c;
    reg f;
    always@(a or b or c)
        case ({a, b, c})
            3'b000: f = 1'b0;
            3'b001: f = 1'b1;
            3'b010: f = 1'b1;
            3'b011: f = 1'b1;
            3'b100: f = 1'b0;
            3'b101: f = 1'b0;
            3'b110: f = 1'b1;
            3'b111: f = 1'b1;
        endcase

endmodule // fred