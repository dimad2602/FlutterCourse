import '../../models/post_model/post_model.dart';

abstract class IPostsRepository {
  Future<List<Post>> fetchPosts();
}
