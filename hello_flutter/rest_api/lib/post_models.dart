import 'package:flutter/foundation.dart';

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post(
      {@required this.id,
      @required this.userId,
      @required this.title,
      @required this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      body: json['body'] as String,
      id: json['id'] as int,
    title: json['title']);
  }
}
