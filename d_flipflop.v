module d_flipflop(
     input D, clk,
     input reset,
     output reg Q,
     output QNot
  );
    
     initial begin 
          Q <= 0;
       end
      
      always @(posedge clk) begin
       if(reset)
         Q <= 0;
      else
           Q = D;
      end
      assign QNot = ~Q;
 
endmodule
