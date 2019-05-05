module CounterStageBin(clk,EN,DU,S0,S1);

input clk;
input EN,DU;
reg [6:0]Q;

output [3:0]S0,S1;

initial Q=7'b0000001;
	
always @(posedge clk)
begin
if((EN==0)&&(DU==0)) Q<=Q+1;
if((EN==0)&&(DU==1)) Q<=Q-1;
end
changetoBCD ChangetoBCD(Q[6],Q[5],Q[4],Q[3],Q[2],Q[1],Q[0],S0,S1);

endmodule