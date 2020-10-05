import 'dart:convert';

import 'package:hello/models/menu_model.dart';
import 'package:http/http.dart';

class MenuApi {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Menu_model>> getPosts() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Menu_model> posts = body
          .map(
            (dynamic item) => Menu_model.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}
