import 'dart:convert';

import 'package:curse_app_1/data/dtos/post_dto.dart';
import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';

import 'package:http/http.dart' as http;

class PostsHttpRepo implements IPostsRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    try {
      final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      final response = await http.get(uri);

      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<PostDto> postDtoList =
          jsonList.map((json) => PostDto.fromJson(json)).toList();
      final List<Post> posts =
          postDtoList.map((postDto) => postDto.toDomain()).toList();

      return posts;
    } catch (e) {
      rethrow;
    }
  }
}
