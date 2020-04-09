import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;

import 'post_models.dart';

class HttpService {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponce = jsonDecode(response.body);


    }


  }
}
