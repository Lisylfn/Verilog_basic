`resetall
`timescale 1ns/1ns

module moore_fsm_2_tb;
    reg Clock, Resetn, w;
    wire z;

    moore_fsm_2 mm2(Clock, Resetn, w, z);
    initial
    begin
      Clock = 0; Resetn = 1; w = 0;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; w = 1;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; w = 0;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; w = 1;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; w = 0;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock;
      #10 Clock = ~Clock; w = 1;
      #10 Clock = ~Clock; Resetn = 0;
      #10 Clock = ~Clock; 
      #10 Clock = ~Clock; 
      #10 Clock = ~Clock; 
    end
endmodule