module T_flipflop(T,CLK,Q,notQ);
input T;
input CLK;
output reg Q;
output notQ;

assign notQ=~Q;
always@(posedge CLK)
if(T) Q<=notQ;
else Q<=Q;

endmodule