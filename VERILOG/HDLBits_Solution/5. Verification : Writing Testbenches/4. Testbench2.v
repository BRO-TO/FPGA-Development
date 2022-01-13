module top_module();
    reg clk;
    reg in;
    reg [2:0] s;
    wire out;
    
    q7 dut(clk,in,s,out);
    
    initial begin
        #0 clk = 0;
        forever
            #5 clk = ~clk;
    end
    
    initial begin
        #0  in = 0;
        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #30 in = 0;
    end
    
    initial begin
    	#0  s = 3'd2;
        #10 s = 3'd6;
        #10 s = 3'd2;
        #10 s = 3'd7;
        #10 s = 3'd0;
    end
endmodule
