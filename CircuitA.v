module CircuitA(in,E,DU);
input [2:0]in;
output E;
output DU;

assign E=in[1];
assign DU=in[0];
endmodule