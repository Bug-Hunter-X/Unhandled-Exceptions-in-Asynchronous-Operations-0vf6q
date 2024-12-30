```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      // ...
    } else {
      // Handle error status codes more robustly
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    //Specifically handle client exceptions (network issues)
    //Log the error or show a user-friendly message
    print('Network error: $e');
    rethrow; //rethrow to let the calling function handle it 
  } on Exception catch (e) {
    // Handle other exceptions
    //Log the error or show a user-friendly message
    print('Error: $e');
    rethrow; //rethrow to let the calling function handle it 
  } catch (e, stackTrace) {
      //handle unexpected errors
      print('Unexpected error: $e
Stacktrace: $stackTrace');
  }
}
```