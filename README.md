# Add_Sub
=> This is a device which can do both addition and subtraction operations of 4 bits , based on the control signal. if ctrl = 0; addition operation,
if ctrl = 1; subtraction operation.

=> add_sub has multiple types as shown below

--> add_sub_clk_cmp : will add or subtract and if subtracted value is negative or in 2's complement then it will find the actual value and this gives value on every positive clock cycle.

--> add_sub_cmp : will add or subtract and if subtracted value is negative or in 2's complement then it will find the actual value, and this will give output without any clock signal.
