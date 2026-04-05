module orlyk_comb_logic(x3, x2, x1, y2, y1);
  input x3, x2, x1;
  output y2, y1;
  assign y2 = ~(~(~x3 & x2 & x1) & ~(x3 & ~x2 & x1));
  assign y1 = x1 & ~(~x3 & ~x2) & ~(x3 & x2);
endmodule