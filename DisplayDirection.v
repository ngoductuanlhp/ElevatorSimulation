module DisplayDirection(inD,outD);
input inD;
output reg [6:0]outD;

always @*
	begin
		case (inD)
		1:outD=7'b1110001;
		0:outD=7'b1001110;
		endcase
		
	end
endmodule
