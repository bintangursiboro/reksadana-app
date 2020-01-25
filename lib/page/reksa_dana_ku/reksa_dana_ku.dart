import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/reksa_dana_ku_view.dart';

class ReksaDanaKu extends StatefulWidget {
  static const String PATH = '/reksadanaku';
  @override
  _ReksaDanaKuState createState() => _ReksaDanaKuState();
}

class _ReksaDanaKuState extends State<ReksaDanaKu> {
  @override
  Widget build(BuildContext context) {
    return ReksaDanaKuView();
  }
}
