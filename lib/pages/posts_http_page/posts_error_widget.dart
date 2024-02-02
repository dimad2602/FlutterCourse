import 'package:flutter/material.dart';

class PostsErrorWidget extends StatelessWidget {
  final String errorMessage;
  const PostsErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage, style: const TextStyle(fontSize: 18)),
    );
  }
}
