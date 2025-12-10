// 4-bit counter and simple register file - counter_register.v
module counter_register (
    input  wire clk,
    input  wire rst,
    input  wire en,
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst) count <= 4'b0000;
    else if (en) count <= count + 1;
end

endmodule

// simple register file example
module regfile4 (
    input wire clk,
    input wire [1:0] ra, rb, rw,
    input wire [3:0] wdata,
    input wire we,
    output reg [3:0] rdata_a,
    output reg [3:0] rdata_b
);
reg [3:0] regs [0:3];

always @(posedge clk) begin
    if (we) regs[rw] <= wdata;
    rdata_a <= regs[ra];
    rdata_b <= regs[rb];
end
endmodule
