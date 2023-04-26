module Mod_Add(input [31:0]A, input [31:0]B, input AluOp1, input AluOp3, output [31:0]result, output carry);
    wire [31:0]negB; //negative B
    assign negB = (~B + 1'b1);
    wire [31:0]inputB; //final B or -B for Adder
    MUX BorNegB(.A(B), .B(negB), .c(AluOp1), .o(inputB));
    wire [31:0]AdderOut; //final Output of the Adder
    Adder32 addo(.A(A), .B(inputB), .result(AdderOut), .carry(carry));
    //now the adding is complete
    //we handle slt now
    wire [31:0]ExtSign;
    assign ExtSign[31:1] = 31'b0;
    assign ExtSign[0] = AdderOut[31]; //the sign of the result
    MUX finalOut(.A(AdderOut), .B(ExtSign), .c(AluOp3), .o(result)); //final output of this module
endmodule
