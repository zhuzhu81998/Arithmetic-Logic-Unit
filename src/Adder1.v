module Adder1(input a, input b, input ci, output co, output s);

    wire w1, w2, w3;
    xor (w1, a, b);
    and (w2, a, b);
    and(w3, w1, ci);
    or(co, w2, w3);
    xor(s, w1, ci);
endmodule

