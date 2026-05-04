module adder_6bit_ref (
    input [5:0] Ain, Bin,
    input Ci,
    output [5:0] Sout,
    output Co
);
    reg [6:0] temp_sum;

    always @(*) begin
        temp_sum = Ain + Bin + Ci;
    end

    assign Sout = temp_sum[5:0];
    assign Co = temp_sum[6];
endmodule
