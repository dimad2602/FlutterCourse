import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:curse_app_1/data/dtos/post_dto.dart';
import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:curse_app_1/data/services/chopper/posts_chopper_service.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';

class PostsChopperRepo implements IPostsRepository {
  final chopper = ChopperClient(
      baseUrl: Uri.parse("https://jsonplaceholder.typicode.com"),
      services: [PostsChopperService.create()]);

  @override
  Future<List<PostModel>> fetchPosts() async {
    final postsService = chopper.getService<PostsChopperService>();
    try {
      final response = await postsService.fetchPosts();

      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<PostDto> postDtoList =
          jsonList.map((json) => PostDto.fromJson(json)).toList();
      final List<PostModel> posts =
          postDtoList.map((postDto) => postDto.toDomain()).toList();

      return posts;
    } catch (e) {
      rethrow;
    }
  }
}
