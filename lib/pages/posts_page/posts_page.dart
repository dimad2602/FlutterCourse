import 'package:curse_app_1/data/repositories/retrofit/posts_retrofit_repo.dart';
import 'package:curse_app_1/pages/posts_page/posts_error_widget.dart';
import 'package:curse_app_1/pages/posts_page/posts_loading_widget.dart';
import 'package:curse_app_1/pages/posts_page/posts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/blocs/posts/posts_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PostsBloc(PostsRetrofitRepo())..add(const PostsEvent.started()),
      child: Scaffold(
          appBar: AppBar(),
          body: BlocBuilder<PostsBloc, PostsState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox.shrink(),
                  error: (state) => PostsErrorWidget(
                        errorMessage: state.errorMessage,
                      ),
                  loading: (_) => const PostsLoadingWidget(),
                  posts: (state) => PostsWidget(
                        postsList: state.postList,
                      ));
            },
          )),
    );
  }
}
