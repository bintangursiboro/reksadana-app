import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class RegisterView extends StatelessWidget {
  final Function onTapExit;
  RegisterView({this.onTapExit});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Nama Depan',
                        labelText: 'Nama Depan',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Nama Belakang',
                        labelText: 'Nama Belakang',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Email',
                        labelText: 'Email',
                      ),
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
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Verifikasi Password',
                        labelText: 'Verifikasi Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: Theme.of(context).primaryColor,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {},
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
    );
  }
}
