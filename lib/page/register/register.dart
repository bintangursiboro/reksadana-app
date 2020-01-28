import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/model/model_register.dart';
import 'package:hoopiper_reksa/page/register/bloc/register_bloc.dart';
import 'package:hoopiper_reksa/page/register/bloc/register_event.dart';
import 'package:hoopiper_reksa/page/register/bloc/register_state.dart';
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
  RegisterBloc _bloc;

  @override
  void initState() {
    _bloc = RegisterBloc();
    _bloc.add(FetchUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, RegisterState state) {
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
      },
    );
  }

  onTapRegister(String namaDepan, String namaBelakang, String email,
      String username, String password, String verify) {
    if (registerKey.currentState.validate()) {
      print('register!!');
      _bloc.add(
        RegisterUser(
          model: RegisterModel(
            email: email,
            namaBelakang: namaBelakang,
            namaDepan: namaDepan,
            password: password,
            userName: username,
          ),
        ),
      );
    }
  }

  onTapExit() {
    Navigator.pop(context);
  }
}
