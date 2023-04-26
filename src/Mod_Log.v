module Mod_Log(input [31:0]A, input [31:0]B, input AluOp0, input AluOp1, output [31:0]result);
    wire [31:0]AorB;
    assign AorB = A | B;
    wire [31:0]norAB;
    assign norAB = ~AorB;
    wire [31:0]firstP; //this is the first part for or and nor
    MUX or_nor(.A(AorB), .B(norAB), .c(AluOp1), .o(firstP));
    
    //"and" and "xor"
    wire [31:0]AandB;
    wire [31:0]AxorB;
    assign AandB = A & B;
    assign AxorB = A ^ B;
    wire [31:0]secondP;
    MUX and_xor(.A(AandB), .B(AxorB), .c(AluOp1), .o(secondP));
    
    //final MUX
    MUX finalOut(.A(secondP), .B(firstP), .c(AluOp0), .o(result));
    //select secondP (and and xor), if AluOp0 == 0
endmodule
