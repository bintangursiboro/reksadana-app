import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class Checkout extends StatefulWidget {
  static const PATH = '/checkout';
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout Reksadana',
          style: primaryColorBold(),
        ),
        // bottom: ,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
