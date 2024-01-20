import 'package:curse_app_1/components/my_text_field.dart';
import 'package:curse_app_1/domain/blocs/sign_in/sign_in_bloc.dart';
import 'package:curse_app_1/domain/repositories/sign_in_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/big_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(SignInRepo()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('SignInPage'),
        ),
        body: BlocConsumer<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state == const SignInState.failure()) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('sta')));
            }
          },
          builder: (context, state) {
            return BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return state.when(initial: () {
                  return buildCompleteUI(context);
                }, loading: () //String email, String password
                    {
                  return circularProgressIndicatorUI();
                }, failure: () {
                  return buildCompleteUI(context);
                }, success: () {
                  WidgetsBinding.instance?.addPostFrameCallback((_) {
                    Navigator.of(context).pushNamed('/SuccessSignInPage');
                  });
                  return const SizedBox.shrink();
                });
              },
            );
          },
        ),
      ),
    );
  }
}

Widget circularProgressIndicatorUI() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildCompleteUI(BuildContext context) {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  return Column(
    children: [
      const SizedBox(
        height: 45,
      ),
      MyTextField(labelText: 'Email', controller: _emailController),
      const SizedBox(
        height: 15,
      ),
      MyTextField(
        labelText: 'password',
        controller: _passwordController,
        hiddenText: true,
      ),
      const SizedBox(
        height: 15,
      ),
      FilledButton(
          onPressed: () {
            context.read<SignInBloc>().add(SignInEvent.signInWithEmail(
                email: _emailController.text,
                password: _passwordController.text));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6750a4),
          ),
          child: const BigText(
            text: "Войти",
            color: Colors.white,
          )),
      const SizedBox(
        height: 15,
      ),
      IconButton(
          color: const Color(0xff6750a4),
          onPressed: () {
            context
                .read<SignInBloc>()
                .add(const SignInEvent.signInWithSocialNetwork());
          },
          icon: const Icon(
            Icons.discord,
            size: 36,
          )), //Icons.reddit
      // if (context.watch<SignInBloc>().state
      //     is FailureState) // проверяем, что текущее состояние - это состояние ошибки
      // const SnackBar(
      //   content:
      //       Text('Ошибка входа!'), // замените этим реальным текстом ошибки
      // ),
    ],
  );
}

Widget buildFailureUI(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BigText(text: 'Sign In failed'),
        const SizedBox(height: 16),
        FilledButton(
            onPressed: () {
              context.read<SignInBloc>().add(const SignInEvent.started());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff6750a4),
            ),
            child: const BigText(
              text: "Retry",
              color: Colors.white,
            )),
      ],
    ),
  );
}

Widget buildSuccessUI(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BigText(text: 'Sign In failed'),
        const SizedBox(height: 16),
        FilledButton(
            onPressed: () {
              context.read<SignInBloc>().add(const SignInEvent.started());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff6750a4),
            ),
            child: const BigText(
              text: "Retry",
              color: Colors.white,
            )),
      ],
    ),
  );
}
