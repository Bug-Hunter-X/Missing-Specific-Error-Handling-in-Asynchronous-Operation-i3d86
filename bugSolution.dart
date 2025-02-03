```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Data fetched successfully');
    } else {
      // Handle specific HTTP error codes
      print('Request failed with status: ${response.statusCode}.  Error: ${response.reasonPhrase}');
      //Example of specific error handling
      if(response.statusCode == 404){
        print("Resource not found.");
      }
    }
  } on SocketException catch (e) {
    // Handle socket exceptions
    print('Network error: $e');
  } on FormatException catch (e) {
    //Handle format exceptions
    print('Data format error: $e');
  } on TimeoutException catch (e) {
    //Handle timeout exceptions
    print('Timeout error: $e');
  } catch (e) {
    // Handle other unexpected exceptions
    print('An unexpected error occurred: $e');
  }
}
```