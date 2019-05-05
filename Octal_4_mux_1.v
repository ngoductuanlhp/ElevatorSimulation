module Octal_4_mux_1(in0,in1,in2,in3,select,out);

input [7:0]in0;
input [7:0]in1;
input [7:0]in2;
input [7:0]in3;

input [1:0]select;

output reg [7:0]out;

always@*
begin
case(select)
2'b00:out=in0;
2'b01:out=in1;
2'b10:out=in2;
2'b11:out=in3;
endcase
end
endmodule

