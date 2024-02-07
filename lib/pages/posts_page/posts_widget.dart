import 'package:flutter/material.dart';

import '../../models/post_model/post_model.dart';

class PostsWidget extends StatelessWidget {
  final List<PostModel> postsList;
  const PostsWidget({super.key, required this.postsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => Column(
            children: [
              Text('${postsList[index].id} ${postsList[index].title}'),
              Text(postsList[index].body),
              const SizedBox(
                height: 10,
              )
            ],
          )),
      itemCount: postsList.length,
    );
  }
}
