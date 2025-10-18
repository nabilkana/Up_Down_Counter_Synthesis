module up_down_counter(clk, rst, up, count);
    input clk, rst, up;
    output reg [7:0] count;

    always @(posedge clk or negedge rst) begin
        if (!rst)
            count <= 0;
        else begin
            if (up)
                count <= count + 1;
            else
                count <= count - 1;
        end
    end
endmodule