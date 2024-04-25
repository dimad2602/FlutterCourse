import 'package:curse_app_1/data/dtos/post_dto.dart';
import 'package:curse_app_1/data/repositories/posts_dio_repo.dart';
import 'package:curse_app_1/data/services/retrofit/posts_retrofit_service.dart';
import 'package:curse_app_1/models/post_model/post_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRestClient extends Mock implements RestClient {}

void main() {
  group("Posts repository", () {
    test("should return List<PostDto>", () async {
      final postsApi = MockRestClient();
      final repository = PostsDioRepo(postsApi);

      // arrange
      when(() => postsApi.fetchPosts()).thenAnswer((_) async => [
            const PostDto(
              userId: 1,
              id: 1,
              title: '123',
              body: '321',
            ),
            const PostDto(
              userId: 2,
              id: 2,
              title: '567',
              body: '789',
            ),
          ]);
      // act
      final result =await repository.fetchPosts();
      // assert
      expect(result, [
        const PostModel(
          userId: 1,
          id: 1,
          title: '123',
          body: '321',
        ),
        const PostModel(
          userId: 2,
          id: 2,
          title: '567',
          body: '789',
        ),
      ]);
      verify(() => postsApi.fetchPosts());
    });
  });
}
