
import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/posts.dart';

class PostsDetailPage extends StatelessWidget {
  const PostsDetailPage(this.post);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar를 제목으로
        appBar: AppBar(title: Text('${post.id}' + ', ${post.title}')),
        //body를 내용으
        body: Text(post.body));
  }

  void _backPage(BuildContext context) {
    //context.read<PostBloc>().add(PostAdded());
  }
}
