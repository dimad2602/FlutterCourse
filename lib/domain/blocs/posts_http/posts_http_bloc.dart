import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/post_model/post_model.dart';

part 'posts_http_event.dart';
part 'posts_http_state.dart';
part 'posts_http_bloc.freezed.dart';

class PostsHttpBloc extends Bloc<PostsHttpEvent, PostsHttpState> {
  final IPostsRepository _repository;
  PostsHttpBloc(this._repository) : super(const PostsHttpState.initial()) {
    on<PostsHttpEvent>((event, emit) async {
      await event.map(started: (_) => _started(emit));
    });
  }

  FutureOr<void> _started(Emitter<PostsHttpState> emit) async {
    emit(const PostsHttpState.loading());
    try {
      final posts = await _repository.fetchPosts();
      emit(PostsHttpState.posts(postList: posts));
    } catch (e) {
      emit(const PostsHttpState.error(errorMessage: "Fail to fetch posts"));
    }
  }
}
