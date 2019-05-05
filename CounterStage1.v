module CounterStage1(EN,DU,clk,q,q1);
input EN,DU,clk;

output reg [3:0]q;
output reg [3:0]q1;

	
always @(negedge clk)
begin
	if (EN==0 & DU==0)
		begin
		if (q==4'b1001) q<=4'b0000;
		else  q<=q+1; 
		end
	if (EN==0 & DU==1)
		begin
		if (q==4'b0000) q<=4'b1001;
		else  q<=q-1; 
		end
end

wire CLOCK2;
assign CLOCK2=(~DU&q[3]&q[0])|(DU&~q[0]&~q[1]&~q[2]&~q[3]);
always @(negedge CLOCK2)
begin
	if (EN==0 & DU==0)
		begin
		if (q1==4'b1001) q1<=4'b0000;
		else  q1<=q1+1; 
		end
	if (EN==0 & DU==1)
		begin
		if (q1==4'b0000) q1<=4'b1001;
		else  q1<=q1-1; 
		end
end

endmodule

	