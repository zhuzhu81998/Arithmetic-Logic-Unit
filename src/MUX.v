module MUX(input [31:0]A, input [31:0]B, input c, output [31:0]o);
    assign o = (A & ~c) | (B & c); //a bit cheating, i am too lazy
endmodule