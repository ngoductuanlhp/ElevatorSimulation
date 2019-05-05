module D_flipflop_RST(D,CLK,RST,Q);
input D;
input CLK;
input RST;
output reg Q;
always@(negedge CLK or posedge RST)
begin
if(RST) Q<=0;
else
Q<=D;
end

endmodule