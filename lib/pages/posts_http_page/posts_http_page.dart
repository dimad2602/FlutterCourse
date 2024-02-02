import 'package:curse_app_1/domain/blocs/posts_http/posts_http_bloc.dart';
import 'package:curse_app_1/pages/posts_http_page/posts_error_widget.dart';
import 'package:curse_app_1/pages/posts_http_page/posts_loading_widget.dart';
import 'package:curse_app_1/pages/posts_http_page/posts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/posts_http_repo.dart';

class PostsHttpPage extends StatelessWidget {
  const PostsHttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PostsHttpBloc(PostsHttpRepo())..add(const PostsHttpEvent.started()),
      child: Scaffold(
          appBar: AppBar(),
          body: BlocBuilder<PostsHttpBloc, PostsHttpState>(
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
