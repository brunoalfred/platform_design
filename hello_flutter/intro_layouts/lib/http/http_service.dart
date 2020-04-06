import 'dart:convert';

import 'package:http/http.dart';
import 'package:intro_layouts/http/posts_model.dart';

class HttpService {
  final String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPost() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

        return posts;
    }
  }
}
