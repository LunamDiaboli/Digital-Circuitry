module top;
   wire in1, in2, cin;
   wire sum, cout, sumr, coutr;
   reg  clk, resetb;
   full_adder Ufa (.sum(sum), .cout(cout), .in1(in1), .in2(in2), .cin(cin), .clk(clk), .resetb(resetb));
   full_adder_ref Urf (.sum(sumr), .cout(coutr), .in1(in1), .in2(in2), .cin(cin), .clk(clk), .resetb(resetb));
   stimulus    Ust (.out1(in1), .out2(in2), .out3(cin), .clk(clk), .resetb(resetb));
   checker    Uck (.in1(in1), .in2(in2), .cin(cin), .sum(sum), .cout(cout), .clk(clk) , .resetb(resetb));
// генератор синхроимпульсов с периодом 5ns 
initial begin
          clk <= 0;
          forever #5 clk = ~clk;
  end
initial begin
          resetb <= 1'b0;
          #200 resetb <= 1'b1;
  end
  initial begin
          $dumpfile("wave.vcd");
          $dumpvars(1);
          $dumpvars(1, Ufa);
end
endmodule

