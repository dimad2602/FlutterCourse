import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/repositories/i_posts_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/post_model/post_model.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final IPostsRepository _repository;
  PostsBloc(this._repository) : super(const PostsState.initial()) {
    on<PostsEvent>((event, emit) async {
      await event.map(started: (_) => _started(emit));
    });
  }

  FutureOr<void> _started(Emitter<PostsState> emit) async {
    emit(const PostsState.loading());
    try {
      final posts = await _repository.fetchPosts();
      emit(PostsState.posts(postList: posts));
    } catch (e) {
      emit(const PostsState.error(errorMessage: "Fail to fetch posts"));
    }
  }
}
