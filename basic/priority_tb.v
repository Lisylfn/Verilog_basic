`resetall
`timescale 1ns/1ns

module priority_tb;
    reg [3:0] W;
    wire [1:0] Y;
    wire z;

    priority p1(W, Y, z);
    initial
    begin
      W = 0;
      #10 W = 4'b1000;
      #10 W = 4'b0100;
      #10 W = 4'b0010;
      #10 W = 4'b0001;
      #10 W = 4'b1110;
      #10 W = 4'b0101;
      #20 $finish;
    end
endmodule