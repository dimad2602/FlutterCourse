import 'package:curse_app_1/pages/calculator_page.dart';
import 'package:curse_app_1/pages/list_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/blocs/list_search2/list_search_bloc.dart';
import 'domain/blocs/login/login_block.dart';
import 'domain/repositories/list_search_repo.dart';
import 'domain/repositories/login_repository.dart';
import 'pages/first_page.dart';
import 'pages/list_without_freezed.dart';
import 'pages/sign_In_page.dart';
import 'pages/login_page_old.dart';
import 'pages/multi_page_list_page.dart';
import 'pages/pagination_list_page.dart';
import 'pages/success_sign_In_page.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) => const FirstPage(),
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
};
