```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here. 
      // ...
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    //print('Error: $e'); // Avoid printing sensitive data to console
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```