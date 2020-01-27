import 'package:flutter/material.dart';

TextStyle primaryColorBold({double fontSize}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
    color: Color(0xFFbbe1fa),
  );
}

TextStyle primaryColor({double fontSize}) {
  return TextStyle(
    fontSize: fontSize,
    color: Color(0xFFbbe1fa),
  );
}

Color primaryTextColor = Color(0xFFbbe1fa);

Color colorPrimaryContainer = Color(0xFF0f4c75);

Color colorSecondaryContainer = Color(0xFF3282b8);

BoxDecoration primaryBoxDecoration = BoxDecoration(
  color: Color(0xFFbbe1fa),
  borderRadius: BorderRadius.circular(5),
);

Color textColorBlack = Color(0xFF1b262c);

TextStyle textStyleBlack({double fontSize}) {
  return TextStyle(
    fontSize: fontSize,
    color: Color(0xFF1b262c),
  );
}

TextStyle textStyleBlackBold({double fontSize}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1b262c),
  );
}

Widget loadingDataWidget = Container(
  alignment: Alignment.center,
  child: Column(
    children: <Widget>[
      CircularProgressIndicator(),
      Text('Memuat Data..'),
    ],
  ),
);

Widget errorWidget = Container(
  alignment: Alignment.center,
  child: Text('Maaf terjadi kesalahan'),
);
