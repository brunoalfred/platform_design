import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  });
  factory Post.fromJson() {
    
  }
}


