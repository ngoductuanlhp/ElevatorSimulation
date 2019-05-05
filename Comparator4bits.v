module Comparator4bits(inA,inB,result);
input [3:0]inA;
input [3:0]inB;
output reg [2:0]result;

 always @* begin
      if (inA>inB) begin
        result=3'b100;
      end
      else if (inA==inB) begin
        result=3'b010;
      end
      else begin
        result=3'b001;
      end
    end
endmodule