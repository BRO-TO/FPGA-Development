module top_module ();
    
    reg clk;
    reg reset;
    reg t;
    wire q;
    
    tff DUT(clk,reset,t,q);
    
    initial begin 
        clk = 0;
        reset = 0;
        t = 0;
        #20
        reset = 1;
        #20
        reset = 0;   
    end
    
    always begin
        #5 clk = ~clk;
    end
    
    always @(posedge clk) begin
        if (reset) begin
                        t = 0;
        end
        else begin
 		        t = 1;
        end
    end

endmodule
