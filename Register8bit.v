module Register8bit(inA,inB,LOAD,RST,outA,outB);
input [3:0]inA;
input [3:0]inB;
input LOAD;
input RST;
output [3:0]outA;
output [3:0]outB;

D_flipflop_RST Bit00(inA[0],LOAD,RST,outA[0]);
D_flipflop_RST Bit01(inA[1],LOAD,RST,outA[1]);
D_flipflop_RST Bit02(inA[2],LOAD,RST,outA[2]);
D_flipflop_RST Bit03(inA[3],LOAD,RST,outA[3]);

D_flipflop_RST Bit10(inB[0],LOAD,RST,outB[0]);
D_flipflop_RST Bit11(inB[1],LOAD,RST,outB[1]);
D_flipflop_RST Bit12(inB[2],LOAD,RST,outB[2]);
D_flipflop_RST Bit13(inB[3],LOAD,RST,outB[3]);

endmodule