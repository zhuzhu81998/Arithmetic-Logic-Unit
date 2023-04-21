module Adder32(input [31:0] A, input [31:0] B, output [31:0]result, output carry);
    wire [31:0]w; //for connecting
    //could have used generate but whatever
    Adder1 fa0(.a(A[0]), .b(B[0]), .ci(0), .s(result[0]), .co(w[0]));
    Adder1 fa1(.a(A[1]), .b(B[1]), .ci(w[0]), .s(result[1]), .co(w[1]));
    Adder1 fa2(.a(A[2]), .b(B[2]), .ci(w[1]), .s(result[2]), .co(w[2]));
    Adder1 fa3(.a(A[3]), .b(B[3]), .ci(w[2]), .s(result[3]), .co(w[3]));
    Adder1 fa4(.a(A[4]), .b(B[4]), .ci(w[3]), .s(result[4]), .co(w[4]));
    Adder1 fa5(.a(A[5]), .b(B[5]), .ci(w[4]), .s(result[5]), .co(w[5]));
    Adder1 fa6(.a(A[6]), .b(B[6]), .ci(w[5]), .s(result[6]), .co(w[6]));
    Adder1 fa7(.a(A[7]), .b(B[7]), .ci(w[6]), .s(result[7]), .co(w[7]));
    Adder1 fa8(.a(A[8]), .b(B[8]), .ci(w[7]), .s(result[8]), .co(w[8]));
    Adder1 fa9(.a(A[9]), .b(B[9]), .ci(w[8]), .s(result[9]), .co(w[9]));
    Adder1 fa10(.a(A[10]), .b(B[10]), .ci(w[9]), .s(result[10]), .co(w[10]));
    Adder1 fa11(.a(A[11]), .b(B[11]), .ci(w[10]), .s(result[11]), .co(w[11]));
    Adder1 fa12(.a(A[12]), .b(B[12]), .ci(w[11]), .s(result[12]), .co(w[12]));
    Adder1 fa13(.a(A[13]), .b(B[13]), .ci(w[12]), .s(result[13]), .co(w[13]));
    Adder1 fa14(.a(A[14]), .b(B[14]), .ci(w[13]), .s(result[14]), .co(w[14]));
    Adder1 fa15(.a(A[15]), .b(B[15]), .ci(w[14]), .s(result[15]), .co(w[15]));
    Adder1 fa16(.a(A[16]), .b(B[16]), .ci(w[15]), .s(result[16]), .co(w[16]));
    Adder1 fa17(.a(A[17]), .b(B[17]), .ci(w[16]), .s(result[17]), .co(w[17]));
    Adder1 fa18(.a(A[18]), .b(B[18]), .ci(w[17]), .s(result[18]), .co(w[18]));
    Adder1 fa19(.a(A[19]), .b(B[19]), .ci(w[18]), .s(result[19]), .co(w[19]));
    Adder1 fa20(.a(A[20]), .b(B[20]), .ci(w[19]), .s(result[20]), .co(w[20]));
    Adder1 fa21(.a(A[21]), .b(B[21]), .ci(w[20]), .s(result[21]), .co(w[21]));
    Adder1 fa22(.a(A[22]), .b(B[22]), .ci(w[21]), .s(result[22]), .co(w[22]));
    Adder1 fa23(.a(A[23]), .b(B[23]), .ci(w[22]), .s(result[23]), .co(w[23]));
    Adder1 fa24(.a(A[24]), .b(B[24]), .ci(w[23]), .s(result[24]), .co(w[24]));
    Adder1 fa25(.a(A[25]), .b(B[25]), .ci(w[24]), .s(result[25]), .co(w[25]));
    Adder1 fa26(.a(A[26]), .b(B[26]), .ci(w[25]), .s(result[26]), .co(w[26]));
    Adder1 fa27(.a(A[27]), .b(B[27]), .ci(w[26]), .s(result[27]), .co(w[27]));
    Adder1 fa28(.a(A[28]), .b(B[28]), .ci(w[27]), .s(result[28]), .co(w[28]));
    Adder1 fa29(.a(A[29]), .b(B[29]), .ci(w[28]), .s(result[29]), .co(w[29]));
    Adder1 fa30(.a(A[30]), .b(B[30]), .ci(w[29]), .s(result[30]), .co(w[30]));
    Adder1 fa31(.a(A[31]), .b(B[31]), .ci(w[30]), .s(result[31]), .co(w[31]));
    assign carry = w[31];
endmodule
