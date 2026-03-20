# Add_Sub
## 🔧 Functionality

This module is a **4-bit Adder-Subtractor** capable of performing both addition and subtraction operations based on a control signal.

* When `ctrl = 0` → Performs **Addition**
* When `ctrl = 1` → Performs **Subtraction**

---

## 🧩 Variants of `add_sub`

The design includes multiple implementations with different behaviors:

### ▶️ `add_sub_clk_cmp`

* Performs addition or subtraction based on `ctrl`
* If the subtraction result is negative (i.e., in 2’s complement form), it converts it to its **actual magnitude**
* Output is updated on every **positive clock edge**
* Suitable for **synchronous designs**

---

### ⚡ `add_sub_cmp`

* Performs addition or subtraction based on `ctrl`
* If the subtraction result is negative, it converts it to its **actual magnitude**
* Produces output **without requiring a clock signal**
* Suitable for **combinational logic designs**

---

