import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/register/register_view.dart';

class Register extends StatefulWidget {
  static const PATH = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namaDepan = TextEditingController();
  TextEditingController namaBelakang = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController verifyController = TextEditingController();
  final registerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterView(
        onTapExit: onTapExit,
        namaDepan: namaDepan,
        namaBelakang: namaBelakang,
        email: email,
        userNameController: userNameController,
        passwordController: passwordController,
        verifyController: verifyController,
        registerKey: registerKey,
        onTapRegister: onTapRegister,
      ),
    );
  }

  onTapRegister(String namaDepan, String namaBelakang, String email,
      String username, String password, String verify) {
    if (registerKey.currentState.validate()) {
      print('register!!');
    }
  }

  onTapExit() {
    Navigator.pop(context);
  }
}
