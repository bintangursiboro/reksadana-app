import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/register/register_view.dart';

class Register extends StatefulWidget {
  static const PATH = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RegisterView());
  }
}
