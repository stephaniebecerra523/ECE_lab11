module ripplecounter(
       input clk,
       input reset,
       output [2:0] stage
   );
       
        t_flipflop tff1(
            .T(1'b1),
            .clk(clk),
            .reset(reset),
            .Q(stage[0]),
            .QNot()
        );
         
        t_flipflop tff2(
              .T(1'b1),
            .clk(stage[0]),
            .reset(reset),
            .Q(stage[1]),
            .QNot()
         );
          
          t_flipflop tff3(
            .T(1'b1),
            .clk(stage[1]),
            .reset(reset),
            .Q(stage[2]),
            .QNot()
         );
         
endmodule
