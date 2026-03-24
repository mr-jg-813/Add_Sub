`timescale 1ns/1ps

module test_add_sub();

reg [3:0] A;
reg [3:0] B;
reg ctrl;

wire [3:0] O;
wire C;

add_sub dut (
    .A(A),
    .B(B),
    .ctrl(ctrl),
    .O(O),
    .C(C)
);

initial begin

A = 4'b0000;
B = 4'b0000;
ctrl = 0;
#10;

A = 4'b0101;
B = 4'b0011;
#10;

A = 4'b1001;
B = 4'b0010;
#10;

A = 4'b0110;
B = 4'b0011;
ctrl = 1;
#10;

A = 4'b0100;
B = 4'b0111;
#10;

A = 4'b1111;
B = 4'b0001;
#10;

$stop;
end
endmodule
