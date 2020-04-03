import 'package:http/http.dart' as http;

// making a network request 
Future<http.Response> fetchPhotos(http.Client client) async {
  return client.get ('https://jsonplaceholder.typicode.com/photos');
}