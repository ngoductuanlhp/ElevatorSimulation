module RegisterMultiInput(in,RCO,RESET,LOAD,out);

input [7:0]in;
input RESET,LOAD;
input RCO;

output [7:0]out;

wire [1:0]QC;
wire [7:0]out0,out1,out2,out3;

wire c0,c1,c2,c3,c,clock;

Register_1_demux_4 demux(in,out0,out1,out2,out3,LOAD);

assign c0=(out0[0]|out0[1]|out0[2]|out0[3]|out0[4]|out0[5]|out0[6]|out0[7]);
assign c1=(out1[0]|out1[1]|out1[2]|out1[3]|out1[4]|out1[5]|out1[6]|out1[7]);
assign c2=(out2[0]|out2[1]|out2[2]|out2[3]|out2[4]|out2[5]|out2[6]|out2[7]);
assign c3=(out3[0]|out3[1]|out3[2]|out3[3]|out3[4]|out3[5]|out3[6]|out3[7]);

one_4_mux_1 muxselect(c1,c2,c3,c0,select,c);

assign clock=(RCO&c);
counter2bits Counter(clock,QC);

Octal_4_mux_1 mux(out0,out1,out2,out3,QC,out);

endmodule