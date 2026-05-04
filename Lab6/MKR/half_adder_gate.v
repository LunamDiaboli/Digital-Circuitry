module half_adder_gate (S, C, A, B);
            output S, C;
            input    A, B;
            and UAND (C, A, B);
            xor UXOR (S, A, B);
endmodule

