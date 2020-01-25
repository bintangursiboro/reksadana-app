import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.center,
              child: Text(
                'Daftar ke Hoopiper Reksadana',
                style: primaryColorBold(fontSize: 23),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height / 3 +
                  MediaQuery.of(context).size.height / 3,
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
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      labelText: 'Masukkan Username',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Masukkan Password',
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.vpn_key),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
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
    );
  }
}
