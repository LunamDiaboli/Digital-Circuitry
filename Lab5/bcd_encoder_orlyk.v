module bcd_encoder (
    input [9:0] x,
    output [3:0] q
);

    assign q[0] = x[1] | x[3] | x[5] | x[7] | x[9];
    assign q[1] = x[2] | x[3] | x[6] | x[7];
    assign q[2] = x[4] | x[5] | x[6] | x[7];
    assign q[3] = x[8] | x[9];

endmodule
