```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Data fetched successfully');
    } else {
      // Error handling missing
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Catching any exception, but not specifying the type
    print('An error occurred: $e');
  }
}
```