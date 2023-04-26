module MUX(input [31:0]A, input [31:0]B, input c, output [31:0]o);
    //if c=0, then o=A
    genvar i;
    generate
        for(i = 0; i < 32; i = i + 1) begin
            MUX1 mux(.a(A[i]), .b(B[i]), .c(c), .o(o[i]));
        end
    endgenerate
endmodule