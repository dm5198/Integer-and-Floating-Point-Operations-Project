# Integer-and-Floating-Point-Operations-Project

# Integer and Floating-Point Operations Project - README

## Project Overview
This project focuses on implementing various low-level operations, including integer arithmetic, bit manipulation, and floating-point arithmetic, without relying on high-level built-in functions. The objective is to gain a deeper understanding of the underlying operations of computers by working directly with binary representations and bitwise operations.

---

## Key Features
1. **Hexadecimal Printing**:
   - A function to print a 32-bit integer in hexadecimal format using only `%c` or `%d` specifiers in `printf`.

2. **Integer Multiplication**:
   - A custom implementation of 32-bit signed integer multiplication using only addition and bit-shifting. The result is a 64-bit signed integer.

3. **Floating-Point Subtraction**:
   - A custom implementation of floating-point subtraction without using the built-in subtraction operator. The function extracts sign, exponent, and mantissa fields, performs calculations manually, and combines the results into the correct floating-point format.

4. **Logarithmic Computation**:
   - A function to compute the base-2 logarithm of an integer using iterative bit-shifting and counting.

---

## Objectives
The primary goals of this project are:
- To practice **bitwise operations** and manipulate binary representations.
- To implement **low-level arithmetic** for integers and floating-point numbers.
- To gain a practical understanding of how computers handle numbers and arithmetic at the binary level.
- To enhance debugging skills in low-level programming.

---

## Implementation Details

### **Core Components**

#### **Hexadecimal Printing (`print_hex`)**:
- Converts a 32-bit integer into its hexadecimal representation.
- Extracts 4-bit groups using masking and shifting and maps them to corresponding hex digits (`0-F`).
- Does not use conditionals (`if` statements) for digit mapping; instead, relies on arithmetic or indexing into an array of characters.

#### **Integer Multiplication (`multiply`)**:
- Multiplies two 32-bit integers by:
  - Extending them to 64 bits.
  - Iteratively adding shifted values of one operand based on the bits of the other operand.
- Handles both positive and negative numbers correctly by sign-extending the operands.

#### **Floating-Point Subtraction (`float_subtract`)**:
- Extracts the **sign**, **exponent**, and **fraction** fields of two floating-point numbers using bitwise operations.
- Aligns the exponents by shifting the mantissas appropriately.
- Performs addition or subtraction on the aligned mantissas.
- Normalizes the result and reassembles the sign, exponent, and mantissa into the final floating-point value.

#### **Logarithmic Computation (`log_2`)**:
- Computes the base-2 logarithm of an unsigned integer by counting the position of the most significant bit set to `1`.
- Returns `-1` if the input is `0`, as the logarithm of `0` is undefined.

---

### **Steps to Run the Program**
1. **Setup**:
   - Ensure the following files are included in your project:
     - `assignment2.c`: Main implementation file.
     - `log.h` and `log.s`: Header and supporting files for the logarithmic function.
     - `makefile`: For compiling the program.
     - `ben2`: Precompiled executable for reference.

2. **Compile the Code**:
   - Use the provided `makefile` to compile the program:
     ```bash
     make
     ```

3. **Run the Program**:
   - Execute the compiled program:
     ```bash
     ./assignment2
     ```

4. **Test the Functions**:
   - Follow the prompts to:
     - Enter an integer for hexadecimal conversion.
     - Input two integers for multiplication.
     - Input two floating-point numbers for subtraction.
     - Input an integer for base-2 logarithm computation.

5. **Compare Results**:
   - Use the precompiled `ben2` executable to verify the correctness of your implementation.

---

### **Example Workflow**

**1. Hexadecimal Conversion**:
Input:
```
Enter a number to print in hex > 255
```
Output:
```
FF
```

**2. Integer Multiplication**:
Input:
```
Enter two integers (to multiply) > 12 13
```
Output:
```
12 * 13 = 156
```

**3. Floating-Point Subtraction**:
Input:
```
Enter two floating-point numbers for the subtraction > 3.5 1.2
```
Output:
```
Computed 3.5 - 1.2 = 2.3
```

**4. Base-2 Logarithm**:
Input:
```
Enter a non-negative integer n to compute the log of > 16
```
Output:
```
Log(16) is 4
```

---

## Notes and Recommendations

- **Code Completion**:
  - Several functions are partially implemented or contain placeholders (`/* FILL THIS IN */`).
  - Complete these sections to enable full functionality.

- **Testing and Debugging**:
  - Test each function incrementally to ensure correctness.
  - Compare outputs with the `ben2` reference executable.

- **Bitwise Operations**:
  - Pay careful attention to masking and shifting to extract specific bits.
  - Use macros (`#define`) for clarity and reuse.

---

## Deliverables
- Submit the completed `assignment2.c` file.
- Ensure the program compiles without errors and passes all test cases.

---

This project provides a hands-on opportunity to explore low-level programming concepts and gain insight into how computers process numbers at the binary level. It reinforces skills in debugging, arithmetic logic, and bitwise manipulation.
