import 'package:flutter/foundation.dart';

class Menu_model {
  final int userId;
  final int id;
  final String title;
  final String body;

  Menu_model({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  });

  factory Menu_model.fromJson(Map<String, dynamic> json) {
    return Menu_model(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
