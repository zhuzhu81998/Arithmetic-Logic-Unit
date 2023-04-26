module MUX1(input a, input b, input c, output o); //1-bit MUX, c is controlsignal
    //if c=0, then o=a
    wire notc;
    not no_c(notc, c);
    wire and1, and2;
    and and_1(and1, a, notc);
    and and_2(and2, b, c);
    or my_or(o, and1, and2);
endmodule
