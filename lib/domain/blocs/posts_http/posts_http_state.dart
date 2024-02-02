part of 'posts_http_bloc.dart';

@freezed
class PostsHttpState with _$PostsHttpState {
  const factory PostsHttpState.initial() = _Initial;
  const factory PostsHttpState.error(
    {required String errorMessage,}
  ) = _Error;
  const factory PostsHttpState.loading() = _Loading;
  const factory PostsHttpState.posts({
    required List<Post> postList,
  }) = _Posts;
}
