import 'package:flutter/material.dart';
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

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginView(
        formKeyLogin: formKeyLogin,
        usernameController: usernameController,
        passwordController: passwordController,
        onTapLogin: onTapLogin,
      ),
    );
  }

  onTapLogin(String userName, String password) {
    if (formKeyLogin.currentState.validate()) {
      //TODO login Function
      print('LOGINN!');
    }
  }
}
