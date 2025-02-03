# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart:  unhandled exceptions within asynchronous operations. The `bug.dart` file showcases code that makes a network request and includes a `try-catch` block. However, the catch block's `rethrow` statement needs careful consideration to handle errors properly. This is important because asynchronous errors are generally harder to track down.

The `bugSolution.dart` file provides an improved version of the code with better exception handling, including informative error messages and a method for gracefully handling failures.