import 'package:curse_app_1/data/dtos/post_dto.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'posts_retrofit_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/posts')
  Future<List<PostDto>> fetchPosts();
}
