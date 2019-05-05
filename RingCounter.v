module RingCounter(count, clk, rst);
  input clk, rst;
  output reg [3:0]count;
  
always @ ( negedge clk, negedge rst )
        begin   
        if ( ~rst )  count=4'b1000; 
          else 
             begin     
            count <= count << 1;    
            count[0] <= count[3]; 
				end
    end 
endmodule