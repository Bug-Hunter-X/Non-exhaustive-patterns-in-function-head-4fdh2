# Haskell Non-Exhaustive Patterns Bug

This repository demonstrates a common Haskell error: using pattern matching without accounting for all possible cases.  Specifically, the `head` function is applied to an empty list, which leads to a runtime exception.  The solution shows how to handle this situation gracefully using pattern matching or a safer alternative like `maybe`.

The `bug.hs` file contains the buggy code. The `bugSolution.hs` file provides a corrected version.