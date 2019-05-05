module Comparator(inA0,inA1,inB0,inB1,result);
input [3:0]inA0;
input [3:0]inA1;
input [3:0]inB0;
input [3:0]inB1;
output [2:0]result;
wire [2:0]res0;
wire [2:0]res1;

Comparator4bits SmallBit(inA0,inB0,res0);
Comparator4bits BigBit(inA1,inB1,res1);

assign result[2]=res1[2]|(res1[1]&res0[2]);
assign result[0]=res1[0]|(res1[1]&res0[0]);
assign result[1]=res1[1]&res0[1];

endmodule

