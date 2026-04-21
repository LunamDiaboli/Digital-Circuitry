`timescale 1ns / 1ps

module tb_bcd_encoder();
    reg [9:0] x;
    wire [3:0] q;

    bcd_encoder uut (
        .x(x),
        .q(q)
    );

    initial begin
        $display("Input x | Output q (BCD)");
        $display("-----------------------");
        
        x = 10'b0000000001; #10; $display("x0: %b | q: %d", x, q);
        x = 10'b0000000010; #10; $display("x1: %b | q: %d", x, q);
        x = 10'b0000000100; #10; $display("x2: %b | q: %d", x, q);
        x = 10'b0000001000; #10; $display("x3: %b | q: %d", x, q);
        x = 10'b0000010000; #10; $display("x4: %b | q: %d", x, q);
        x = 10'b0000100000; #10; $display("x5: %b | q: %d", x, q);
        x = 10'b0001000000; #10; $display("x6: %b | q: %d", x, q);
        x = 10'b0010000000; #10; $display("x7: %b | q: %d", x, q);
        x = 10'b0100000000; #10; $display("x8: %b | q: %d", x, q);
        x = 10'b1000000000; #10; $display("x9: %b | q: %d", x, q);
        
        $stop;
    end
endmodule
