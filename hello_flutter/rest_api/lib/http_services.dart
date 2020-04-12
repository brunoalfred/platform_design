import 'dart:convert';
import 'package:rest_api/post_models.dart';
import 'package:http/http.dart' as http;


class HttpService {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async {
    http.Response response = await http.get(url);
  
    if (response.statusCode == 200) {
      var jsonResponce = jsonDecode(response.body);
      List<Post> _posts =
          jsonResponce.map((json) => Post.fromJson(json)).toList();
      return _posts;
    } else {
      return null;
    }
  }
}
