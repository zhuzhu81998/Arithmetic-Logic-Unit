module Mod_Add(input [31:0]A, input [31:0]B, input AluOp1, input AluOp3, output [31:0]result, output carry);
    wire [31:0]negB; //negative B
    assign negB[30:0] = B[30:0];
    assign negB[31] = ~B[31];
    wire [31:0]inputB; //final B or -B for Adder
    MUX BorNegB(.A(B), .B(negB), .c(AluOp1), .o(inputB));
    wire [31:0]interAdderOutp; //first output of the 32Bit Full Adder Adder32, but not final value
    wire MSB; //to store the most significant bit, which is the sign of the number
    Adder32 addo(.A(A), .B(B), .result(interAdderOutp), .carry(MSB));
    assign carry = interAdderOutp[31];
    wire [31:0]AdderOut; //final Output of the Adder
    assign AdderOut[30:0] = interAdderOutp[30:0];
    assign AdderOut[31] = MSB;
    //now the adding is complete
    //we handle rlt now
    wire [31:0]ExtSign;
    assign ExtSign[31:1] = 31'b0;
    assign ExtSign[0] = MSB; //the sign of the result
    MUX finalOut(.A(AdderOut), .B(ExtSign), .c(AluOp3), .o(result)); //final output of this module
endmodule
