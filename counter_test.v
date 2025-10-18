module counter_test;
    reg clk, rst, up;
    wire [7:0] count;

    

    initial begin
        clk = 0;
        rst = 0;
        up = 1;
        #10;
        rst = 1;        
        #100;
        up = 0;        
        #250;
        up = 1;         
    end
up_down_counter counter1(clk, rst, up, count);

    always #5 clk = ~clk;
endmodule
