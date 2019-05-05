module counter2bits(clk,Q);
input clk;
output reg [1:0]Q;

initial Q=2'b11;
always@(negedge clk) Q<=Q+1;

endmodule