module top(
      input btnU, btnC,
      output [6:0]led
 );
 
        ripplecounter rc(
              .clk(btnC),
              .reset(btnU),
              .stage(led[2:0])
       );
         
         modulodivider md(
               .clk(btnC),
               .reset(btnU),
               .state(led[5:3]),
               .mo(led[6])
         );
         
         endmodule