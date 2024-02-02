part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;
  const factory PostsState.error(
    {required String errorMessage,}
  ) = _Error;
  const factory PostsState.loading() = _Loading;
  const factory PostsState.posts({
    required List<Post> postList,
  }) = _Posts;
}
