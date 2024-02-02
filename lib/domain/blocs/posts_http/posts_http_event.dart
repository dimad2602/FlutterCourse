part of 'posts_http_bloc.dart';

@freezed
class PostsHttpEvent with _$PostsHttpEvent {
  const factory PostsHttpEvent.started() = _Started;
}