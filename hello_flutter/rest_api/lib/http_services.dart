import 'dart:html';

import 'package:http/http.dart' as http;

class HttpService {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async{
    http.Response response = await http.get(url);
  }
}