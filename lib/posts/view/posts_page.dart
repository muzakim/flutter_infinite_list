import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/posts.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: PostsList(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {
          _addItem(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addItem(BuildContext context) {
    context.read<PostBloc>().add(PostAdded());
  }
}
