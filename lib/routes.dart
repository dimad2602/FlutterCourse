import 'package:curse_app_1/data/storage/secure_storage.dart';
import 'package:curse_app_1/domain/blocs/authentication/authentication_bloc.dart';
import 'package:curse_app_1/pages/animated_container_page.dart';
import 'package:curse_app_1/pages/animation_with_intervals.dart';
import 'package:curse_app_1/pages/calculator_page.dart';
import 'package:curse_app_1/pages/custom_animation_page.dart';
import 'package:curse_app_1/pages/firs_open_page.dart';
import 'package:curse_app_1/pages/hero_pages/first_hero_page.dart';
import 'package:curse_app_1/pages/hero_pages/second_hero_page.dart';
import 'package:curse_app_1/pages/image_picker_page.dart';
import 'package:curse_app_1/pages/list_search_page.dart';
import 'package:curse_app_1/pages/Todo_page/todos_page.dart';
import 'package:curse_app_1/pages/location_page.dart';
import 'package:curse_app_1/pages/lottie_page.dart';
import 'package:curse_app_1/pages/platform_calculations_page.dart';
import 'package:curse_app_1/pages/save_user_id_page.dart';
import 'package:curse_app_1/pages/shared_preferences_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/blocs/list_search2/list_search_bloc.dart';
import 'domain/blocs/login/login_block.dart';
import 'data/repositories/list_search_repo.dart';
import 'data/repositories/login_repository.dart';
import 'pages/first_page.dart';
import 'pages/list_without_freezed.dart';
import 'pages/posts_page/posts_page.dart';
import 'pages/sign_In_page.dart';
import 'pages/login_page_old.dart';
import 'pages/multi_page_list_page.dart';
import 'pages/pagination_list_page.dart';
import 'pages/success_sign_in_page.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) =>
      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return state.when(unauthenticated: () {
            return const FirstOpenPage();
          }, authenticated: (user) {
            return const FirstPage();
          });
        },
      ),
  '/CalculatorPage': (BuildContext context) => const CalculatorPage(),
  '/LoginOldPage': (BuildContext context) => BlocProvider(
        create: (context) => LoginBlocOld(LoginRepository()),
        child: LoginPageOld(),
      ),
  '/ListSearchPage': (BuildContext context) => BlocProvider(
        create: (context) => ListSearchBloc(ListSearchRepository()),
        child: ListSearchPage(),
      ),
  '/ListWithOutFreezedPage': (BuildContext context) => ListWithOutFreezedPage(),
  '/MultiPageListPage': (BuildContext context) => const MultiPageListPage(),
  '/PaginationListPage': (BuildContext context) => const PaginationListPage(),
  '/SignInPage': (BuildContext context) => const SignInPage(),
  '/SuccessSignInPage': (BuildContext context) => const SuccessSignInPage(),
  '/PostsPage': (BuildContext context) => const PostsPage(),
  '/SaveUserId': (BuildContext context) => SaveUserIdPage(
        storage: SecureStorage(),
      ),
  '/SharedPreferencesPage': (BuildContext context) =>
      const SharedPreferencesPage(),
  '/TodosPage': (BuildContext context) => const TodosPage(),
  '/ImagePickerPage': (BuildContext context) => const ImagePickerPage(),
  '/LocationPage': (BuildContext context) => const LocationPage(),
  '/PlatformCalculationsPage': (BuildContext context) =>
      const PlatformCalculationsPage(),
  '/AnimatedContainerPage': (BuildContext context) =>
      const AnimatedContainerPage(),
  '/FirstHeroPage': (BuildContext context) => const FirstHeroPage(),
  '/SecondHeroPage': (BuildContext context) => const SecondHeroPage(),
  '/CustomAnimationPage': (BuildContext context) => const CustomAnimationPage(),
  '/AnimationWithIntervalsPage': (BuildContext context) => const AnimationWithIntervalsPage(),
  '/LottiePage': (BuildContext context) => const LottiePage(),
};
