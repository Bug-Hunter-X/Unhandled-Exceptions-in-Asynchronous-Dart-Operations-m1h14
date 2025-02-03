```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle HTTP errors explicitly
      throw HttpException('HTTP request failed with status: ${response.statusCode}, body: ${response.body}');
    }
  } on SocketException {
    // Handle network errors
    print('Network error: Could not connect to the server.');
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON parsing error: $e');
  } on HttpException catch (e) {
      print('HTTP Error: $e');
  } catch (e) {
    // Handle any other unexpected errors
    print('An unexpected error occurred: $e');
  }
}
```