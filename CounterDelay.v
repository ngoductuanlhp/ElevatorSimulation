module CounterDelay(clk,RESET,ENABLE,LOAD,RCO,QD);
input clk;
input RESET;
input ENABLE;
input LOAD;
output RCO;
output reg [3:0]QD;

assign RCO=~QD[0]&~QD[1]&~QD[2]&~QD[3];

always @(posedge clk or negedge RESET or negedge LOAD)
begin
 
if(RESET==0 || (LOAD==0))
begin 
 QD<=4'b0110;
 end
else if(RCO==0 && (ENABLE==1)) QD<=QD-1;

end
endmodule
