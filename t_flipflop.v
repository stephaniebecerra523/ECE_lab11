module t_flipflop(
        input T,
        input clk,
        input reset,
        output Q,
        output QNot
    );
 

     jk_flipflop jkff(
          .J(T),
          .K(T),
          .clk(clk),
          .reset(reset),
          .Q(Q),
          .QNot(QNot)
     );
     endmodule