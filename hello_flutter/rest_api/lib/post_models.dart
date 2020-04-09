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
}
