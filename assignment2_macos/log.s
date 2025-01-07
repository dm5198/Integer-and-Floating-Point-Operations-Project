        .section        __TEXT,__text,regular,pure_instructions
        .globl  _log_2
        .p2align        4, 0x90

        // See the declaration in log.h
        // This function takes one parameter:
        //   -- a 64-bit unsigned long n in the %rdi register
        // It returns the log of n, also as an unsigned long.
        // The return value, being 64 bits, must be placed in
        // the %rax register.
        // Note: if n is zero, then signal an error by
        // putting all one's in the %rax register (this
        // would be -1 if the result was signed).

        // The equivalent C code would be:

        // unsigned long log_2(unsigned long n)
        // {
        //   if (n == 0)
        //     return ((unsigned long) -1);
        //   unsigned long result = 0;
        //   n >>= 1;
        //   while (n != 0) {
        //     result++;
        //     n >>= 1;
        //   }
        //   return result;
        // }    

_log_2:                            

    pushq   %rbp            // save base pointer
    movq    %rsp, %rbp      // set stack pointer to base pointer

    // check if n is zero, if so, put
    // -1 in %rax and jump to DONE
    testq   %rdi, %rdi      // check if n = 0
    jnz     PROCEED         // if not zero, jump to PROCEED
    movq    $-1, %rax       // otherwise, put -1 in %rax
    jmp     DONE            // and jump to DONE

PROCEED:
    xorq    %rax, %rax      // initialize the result (%rax) to 0

LOOP_TOP:
    shrq    $1, %rdi        // shift n right by 1 to divide by 2
    testq   %rdi, %rdi      // compare n to 0
    jz     DONE            // if n = 0, we're done, jump to DONE
    incq    %rax            // otherwise, increment the result
    jmp     LOOP_TOP        // and jump to the top of the loop

DONE:
    popq    %rbp            // restore the base pointer
    retq                    // return from function
