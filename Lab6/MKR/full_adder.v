`timescale 1 ns/1 ps
module full_adder(sum,cout,in1,in2,cin,clk,resetb);
    output sum, cout; //выходные сигналы
    input  in1, in2, cin; //входные сигналы
    input  clk, resetb; //входные сигналы
// объявление типов связей, сигналов и соединений
    wire   sum, cout; //соединение (проводник)
    reg    rin1, rin2, rcin; //переменная (регистр)
    wire   s1, c1, s2, c2;//соединение (проводник)
//процедурный блок - процесс
    always @ (posedge clk or negedge resetb) begin
         if (resetb==1'b0) begin
            rin1 <= 1'b0;  rin2 <= 1'b0;   rcin <= 1'b0; end 
         else begin
            rin1 <= in1;    rin2 <= in2;     rcin <= cin;
         end
    end
//создание экземпляров модулей
    half_adder_gate ha1 (.S(s1), .C(c1), .A(rin1), .B(rin2));
    half_adder_rtl     ha2 (.S(s2), .C(c2), .A(s1),   .B(rcin));
// процедурные присваивания
    assign sum = s2;
    assign cout = c1|c2;
endmodule

