module modulodivider(
       input reset,
       input clk,
       output [2:0] state,
       output mo
  );
     
        wire b0, b1, b2;
        
        wire y0, y1, y2;
        
        wire c0, c1;
        
        wire countReached;
        assign countReached = b2 & ~b1 & b0;
        
        wire d0, d1, d2;
        
        assign d0 = y0 & ~countReached;
        assign d1 = y1 & ~countReached;
         assign d2 = y2 & ~countReached;
         
         wire toggle;
         assign toggle = countReached ^ mo;
         
         
     d_flipflop dff1(
          .D(d0),
          .clk(clk),
          .reset(reset),
          .Q(b0),
          .QNot()
      
     );
     
     d_flipflop dff2(
            .D(d1),
            .clk(clk),
            .reset(reset),
            .Q(b1),
            .QNot()
           
     );
     d_flipflop dff3(
                .D(d2),
                .clk(clk),
                .reset(reset),
                 .Q(b2),
                 .QNot()
     );
     
     full_adder fa1(
             .A(b0),
             .B(1'b1),
             .Cin(1'b0),
             .Y(y0),
             .Cout(c0)
         );
         
         full_adder fa2(
              .A(b1),
              .B(1'b0),
              .Cin(c0),
              .Y(y1),
              .Cout(c1)
            );
            
           full_adder fa3(
                 .A(b2),
                 .B(1'b0),
                 .Cin(c1),
                 .Y(y2),
                 .Cout(c2)
             );
             
            d_flipflop outputDFF(
                   .D(toggle),
                   .clk(clk),
                   .reset(reset),
                   .Q(mo),
                   .QNot()
              );
              
              assign state[0] = b0;
              assign state[1] = b1;
              assign state[2] = b2;
              
     endmodule              
                  
     
  