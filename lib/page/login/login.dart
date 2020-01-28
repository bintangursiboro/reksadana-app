import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_bloc.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_event.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_state.dart';
import 'package:hoopiper_reksa/page/login/login_view.dart';

class Login extends StatefulWidget {
  static const PATH = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKeyLogin = GlobalKey<FormState>();

  TextEditingController usernameController;
  TextEditingController passwordController;
  LoginBloc _bloc;

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    _bloc = LoginBloc();
    _bloc.add(CheckLogin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: _bloc,
        child: BlocBuilder(
          bloc: _bloc,
          builder: (BuildContext context, LoginState state) {
            return LoginView(
              formKeyLogin: formKeyLogin,
              usernameController: usernameController,
              passwordController: passwordController,
              onTapLogin: onTapLogin,
              isLoading: (state is LoginLoading),
              isError: (state is LoginError),
            );
          },
        ),
        listener: (BuildContext context, LoginState state) {
          if (state is LoginSuccess) {
            _bloc.add(SetLogin());
            Navigator.of(context).pushNamed(Dashboard.PATH);
          }
        },
      ),
    );
  }

  onTapLogin(String userName, String password) {
    if (formKeyLogin.currentState.validate()) {
      _bloc.add(LoginUser(password: password, username: userName));
    }
  }
}
