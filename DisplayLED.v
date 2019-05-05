module DisplayLED(inA0,inA1,inB,inD,outA0,outA1,outB,outD);
input [3:0]inA0;
input [3:0]inA1;
input [3:0]inB;
input inD;

output [6:0]outA0;
output [6:0]outA1;
output [6:0]outB;
output [6:0]outD;

BCD_to_7segment Stage0(inA0,outA0,0);
BCD_to_7segment Stage1(inA1,outA1,0);

BCD_to_7segment Delay(inB,outB,0);
DisplayDirection Direction(inD,outD);

endmodule
