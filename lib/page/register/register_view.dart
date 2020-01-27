import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';
import 'package:hoopiper_reksa/util/validator/text_form_field_validator.dart';

class RegisterView extends StatelessWidget {
  final Function onTapExit;
  final TextEditingController namaDepan;
  final TextEditingController namaBelakang;
  final TextEditingController email;
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  final TextEditingController verifyController;
  final GlobalKey<FormState> registerKey;
  final Function(String, String, String, String, String, String) onTapRegister;

  RegisterView({
    this.onTapExit,
    this.verifyController,
    this.userNameController,
    this.email,
    this.namaBelakang,
    this.namaDepan,
    this.passwordController,
    this.registerKey,
    this.onTapRegister,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Form(
            key: registerKey,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: primaryTextColor,
                    ),
                    onPressed: () {
                      onTapExit();
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  alignment: Alignment.center,
                  child: Text(
                    'Daftar ke Hoopiper Reksadana',
                    style: primaryColorBold(fontSize: 23),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: primaryTextColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Register',
                        style: textStyleBlackBold(fontSize: 25),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: namaDepan,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan Nama Depan',
                          labelText: 'Nama Depan',
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return 'Nama Depan tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: namaBelakang,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan Nama Belakang',
                          labelText: 'Nama Belakang',
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return 'Nama Belakang tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan Email',
                          labelText: 'Email',
                        ),
                        validator: Validator.validateEmail,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Masukkan Username',
                          labelText: 'Username',
                        ),
                        controller: userNameController,
                        validator: (val) {
                          if (val.length == 0) {
                            return 'Username tidak boleh kosong';
                          } else if (val.length < 6) {
                            return 'Username minimal 6 karakter';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Masukkan Password',
                            labelText: 'Password',
                          ),
                          controller: passwordController,
                          obscureText: true,
                          validator: (val) {
                            if (val.length == 0) {
                              return 'Password tidak boleh kosong';
                            } else if (val.length < 6) {
                              return 'Username minimal 6 karakter';
                            } else if (val != verifyController.text) {
                              return 'Password tidak sama';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Verifikasi Password',
                            labelText: 'Verifikasi Password',
                          ),
                          controller: verifyController,
                          obscureText: true,
                          validator: (val) {
                            if (val.length == 0) {
                              return 'Password tidak boleh kosong';
                            } else if (val.length < 6) {
                              return 'Username minimal 6 karakter';
                            } else if (val != passwordController.text) {
                              return 'Password tidak sama';
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: RawMaterialButton(
                          fillColor: Theme.of(context).primaryColor,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            onTapRegister(
                                namaDepan.text,
                                namaBelakang.text,
                                email.text,
                                userNameController.text,
                                passwordController.text,
                                verifyController.text);
                          },
                          child: Text(
                            'Register',
                            style: primaryColorBold(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
