import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:curse_app_1/data/services/retrofit/posts_retrofit_service.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';

import '../dtos/post_dto.dart';

class PostsDioRepo implements IPostsRepository {
  final RestClient _apiClient;

  PostsDioRepo(this._apiClient);
  @override
  Future<List<PostModel>> fetchPosts() async {
    //final dio =  Dio(
    //   BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
    // );
    try {
      final response = await _apiClient.fetchPosts(); //await dio.get('/posts');

      // final List<dynamic> jsonList = response.data;
      // final List<PostDto> postDtoList =
      //     jsonList.map((json) => PostDto.fromJson(json)).toList();
      final List<PostModel> posts =
          response.map((postDto) => postDto.toDomain()).toList();
      //postDtoList.map((postDto) => postDto.toDomain()).toList();

      return posts;
    } catch (e) {
      rethrow;
    }
  }
}
