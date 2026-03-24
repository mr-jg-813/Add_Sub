`timescale 1ns / 1ps

module add_sub(
    input clk,
    input [3:0] A,
    input [3:0] B,
    input ctrl,
    output reg [3:0] O,
    output C
    );
    
wire [3:0]o;
reg [3:0]b;

always@(*) begin
b = B ^ {4{ctrl}};
end

RCA add(.A(A), .B(b), .S(o), .Cin(ctrl), .Cout(C));

always@ (posedge clk) begin
if (ctrl)
    if(C==0) 
        O <= ~o + 1;   // explicit 2's complement
    else
        O <= o;
else 
O <= o;
end
endmodule
