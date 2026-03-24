#  Add_Sub (4-bit Adder–Subtractor)

##  Overview

A simple **4-bit Adder–Subtractor** that performs:

* `A + B` (Addition)
* `A - B` (Subtraction using 2’s complement)

---

##  Control Logic

| `ctrl` | Operation |
| ------ | --------- |
| 0      | A + B     |
| 1      | A - B     |

 Subtraction is done as:
`A + (~B + 1)`

---

##  How the Circuit Works (Simple)

* `B` is XORed with `ctrl`

  * `ctrl=0` → normal B
  * `ctrl=1` → inverted B
* `ctrl` is also given as **carry-in**
* A **4-bit Ripple Carry Adder (RCA)** does the math
* If result is negative → converted to **magnitude** using extra logic
* Output is selected using **MUX**

---

##  Variants

###  `add_sub_clk_cmp` (Clocked Version)

* Uses **clock (clk)**
* Output stored in **register**
* Converts negative results to **positive magnitude**
* Stable & used in **sequential designs**

 Flow:

```
Input → XOR (B) → RCA → Magnitude Fix → Register → Output
```

---

###  `add_sub_cmp` (Combinational Version)

* **No clock**
* Output updates **instantly**
* Also converts negative result to **magnitude**
* Faster but no storage

 Flow:

```
Input → XOR (B) → RCA → Magnitude Fix → Output
```

---

##  Key Blocks

* XOR → for subtraction
* RCA → main adder (4 full adders)
* MUX → selects correct output
* Comparator Logic → fixes negative results
* Register (only in clk version)

---

##  Features

*  Addition & Subtraction in one circuit
*  2’s complement based design
*  Both **combinational + sequential** versions
*  Easy to extend to higher bits
