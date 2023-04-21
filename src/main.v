module main(input [31:0]A, input [31:0]B, input [3:0]AluOp, output [31:0]result, output flag, output carry);
    wire [31:0]resOfAdd; //result of the arithmetic part;
    Mod_Add AddAndSub(.A(A), .B(B), .AluOp1(AluOp[1]), .AluOp3(AluOp[3]), .result(resOfAdd), .carry(carry));
    //note that carry has no meaning (dont care), if the op is not add
     
    wire [31:0]resOfLog;
    Mod_Log Log(.A(A), .B(B), .AluOp0(AluOp[0]), .AluOp1(AluOp[1]), .result(resOfLog));
    
    //final MUX of the whole ALU
    MUX final(.A(resOfAdd), .B(resOfLog), .c(AluOp[2]), .o(result));
    assign flag = &(~result);
endmodule
