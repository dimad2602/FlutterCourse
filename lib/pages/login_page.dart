import 'package:curse_app_1/domain/blocs/login/login_block.dart';
import 'package:curse_app_1/domain/blocs/login/login_event.dart';
import 'package:curse_app_1/domain/blocs/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class LoginPage extends StatelessWidget {
  final TextEditingController _loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Example'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is InitialState) {
            return buildInitialUI(context);
          } else if (state is LoginInputState || state is ValidatingState) {
            return buildInputUI(context);
          } else if (state is FailureState) {
            return buildFailureUI(context, state.errorText);
          } else if (state is CompleteState) {
            return buildCompliteUI(context);
          } else {
            return Container(); // Placeholder for other states
          }
        },
      ),
    );
  }

  Widget buildInitialUI(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _loginController,
            decoration: InputDecoration(
              hintText: 'Enter login',
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final login = _loginController.text;
              //BlocProvider.of<LoginBloc>(context).add(LoginChanged(login));
              BlocProvider.of<LoginBloc>(context).add(Validate(login));
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  Widget buildInputUI(BuildContext context) {
    //BlocProvider.of<LoginBloc>(context).add(Validate("aaaaaaaeeeeee"));
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildFailureUI(BuildContext context, String errorText) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login failed: $errorText'),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<LoginBloc>(context).add(LoginRetry());
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget buildCompliteUI(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Done'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<LoginBloc>(context).add(LoginRetry());
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}