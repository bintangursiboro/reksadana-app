import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/login/login_view.dart';

class Login extends StatefulWidget {
  static const PATH = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginView(),
    );
  }
}
