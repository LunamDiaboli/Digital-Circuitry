module adder_6bit_struct (
    input [5:0] Ain, Bin,
    input Ci,
    output [5:0] Sout,
    output Co
);
    wire [4:0] C; // ????????? ????? ???????????

    // ???????? ?'??????? 6 ?????? bitsum
    bitsum bit0(Ain[0], Bin[0], Ci,   Sout[0], C[0]);
    bitsum bit1(Ain[1], Bin[1], C[0], Sout[1], C[1]);
    bitsum bit2(Ain[2], Bin[2], C[1], Sout[2], C[2]);
    bitsum bit3(Ain[3], Bin[3], C[2], Sout[3], C[3]);
    bitsum bit4(Ain[4], Bin[4], C[3], Sout[4], C[4]);
    bitsum bit5(Ain[5], Bin[5], C[4], Sout[5], Co);

endmodule
