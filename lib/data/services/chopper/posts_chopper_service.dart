import 'package:chopper/chopper.dart';

part 'posts_chopper_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostsChopperService extends ChopperService {
  static PostsChopperService create([ChopperClient? client]) =>
      _$PostsChopperService(client);

  @Get()
  Future<Response> fetchPosts();
}
