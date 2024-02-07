import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:curse_app_1/data/services/retrofit/posts_retrofit_service.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';

import 'package:dio/dio.dart';

class PostsRetrofitRepo implements IPostsRepository {
  @override
  Future<List<PostModel>> fetchPosts() async {
    final dio = Dio();
    try {
      final postDto = await RestClient(dio).fetchPosts();
      final List<PostModel> posts =
          postDto.map((postDto) => postDto.toDomain()).toList();

      return posts;
    } catch (e) {
      rethrow;
    }
  }
}
