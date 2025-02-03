# Missing Specific Error Handling in Asynchronous Operation

This repository demonstrates a common error in Dart asynchronous operations: insufficient error handling.  The `fetchData` function in `bug.dart` demonstrates the issue. It performs a network request and includes a `try-catch` block, but lacks specific error handling for different types of exceptions.  The improved version in `bugSolution.dart` shows how to address this.

## How to reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe the generic error message when the request fails or encounters an exception.
3. Run `bugSolution.dart`. Observe the more informative error messages and how different error types are handled.
