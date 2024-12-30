# Unhandled Exceptions in Dart Asynchronous Operations

This example demonstrates a common error in Dart: improperly handling exceptions in asynchronous operations using `Future` and `async`/`await`.

The `fetchData` function fetches data from a URL.  The `try-catch` block handles network errors, but crucial error handling is missing.  Simply printing the error to the console isn't sufficient for robust error handling.  For production-level code, this should log the error (preferably to a centralized logging system) and have a mechanism for notifying users and retrying requests (if appropriate). Rethrowing the exception allows higher-level functions to handle it more appropriately.