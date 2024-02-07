import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';

import 'package:dio/dio.dart';

import '../dtos/post_dto.dart';

class PostsDioRepo implements IPostsRepository {
  @override
  Future<List<PostModel>> fetchPosts() async {
    final dio = Dio(
      BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
    );
    try {
      final response = await dio.get('/posts');

      final List<dynamic> jsonList = response.data;
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
