import 'package:curse_app_1/models/post_model/post_model.dart';

abstract class IPostsRepository {
  Future<List<PostModel>> fetchPosts();
}
