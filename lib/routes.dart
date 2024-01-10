
import 'package:curse_app_1/pages/calculator_page.dart';
import 'package:curse_app_1/pages/list_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/blocs/list_search2/list_search_bloc.dart';
import 'domain/blocs/login/login_block.dart';
import 'domain/repositories/list_search_repo.dart';
import 'domain/repositories/login_repository.dart';
import 'pages/first_page.dart';
import 'pages/login_page.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) => const FirstPage(),
  '/CalculatorPage': (BuildContext context) => const CalculatorPage(),
  '/LoginPage': (BuildContext context) => BlocProvider(
        create: (context) => LoginBloc(LoginRepository()),
        child: LoginPage(),
      ),
  '/ListSearchPage': (BuildContext context) => BlocProvider(
        create: (context) => ListSearchBloc(ListSearchRepository()),
        child: ListSearchPage(),
      ),    
};
