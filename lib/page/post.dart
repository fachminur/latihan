import 'package:flutter/material.dart';
import 'package:hello/api/menu_api.dart';
import 'package:hello/models/menu_model.dart';

class PostsPage extends StatelessWidget {
  final MenuApi httpService = MenuApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Menu_model>> snapshot) {
          if (snapshot.hasData) {
            List<Menu_model> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Menu_model post) => ListTile(
                      title: Text(post.title),
                      subtitle: Text("${post.userId}"),
                      // onTap: () => Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => PostDetail(
                      //       post: post,
                      //     ),
                      //   ),
                      // ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
