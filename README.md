# COBOL Division by Zero Bug

This repository demonstrates a common coding error in COBOL: division by zero. The program `bug.cob` takes two integer inputs and attempts to divide them.  If the second input (the divisor) is 0, a runtime error occurs.  The solution, provided in `bugSolution.cob`, implements proper error handling to prevent this.

## How to Reproduce

1. Compile `bug.cob` using a COBOL compiler (like GnuCOBOL).
2. Run the compiled program.
3. Enter 0 as the second input.
4. Observe the runtime error.

## Solution

The `bugSolution.cob` demonstrates how to prevent the error by checking if the divisor is zero before performing the division. If it is zero, an appropriate message is displayed, preventing the program from crashing.