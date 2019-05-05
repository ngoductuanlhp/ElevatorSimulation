module Test2(SW,KEY,CLOCK_50,HEX0,HEX1,HEX4,HEX5,LEDG);

input CLOCK_50;

input [7:0]SW;
input [2:0]KEY;

output [6:0]HEX0;
output [6:0]HEX1;
output [6:0]HEX4;
output [6:0]HEX5;

output [0:0]LEDG;

wire [7:0]outRegis;
wire [2:0]result;

wire [3:0]QD;

wire EN;
wire D_U;

wire RCO;
wire [3:0]Stage0,Stage1;

reg [31:0]temp;

always@(posedge CLOCK_50)
	temp<=temp+1;

RegisterMultiInput Register(SW[7:0],RCO,KEY[2],KEY[0],outRegis);

Comparator Comparator(outRegis[3:0],outRegis[7:4],Stage0,Stage1,result);

CircuitA LogicCircuit(result,EN,D_U);

CounterStage CounterStage(temp[25],EN,D_U,Stage0,Stage1);

CounterDelay CounterDelay(temp[24],KEY[1],EN,KEY[0],RCO,QD);

DisplayLED Display(Stage0,Stage1,QD,D_U,HEX0,HEX1,HEX4,HEX5);
assign LEDG[0]=RCO;

endmodule
