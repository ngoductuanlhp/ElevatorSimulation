module TestDirection(SW,HEX0);
input [0:0]SW;
output reg [6:0]HEX0;

always @*
	begin
		case (SW[0])
		1:HEX0=7'b1110001;
		0:HEX0=7'b1001110;
		endcase
		
	end
endmodule
