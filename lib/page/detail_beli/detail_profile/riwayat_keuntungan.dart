import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class RiwayatKeuntungan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: primaryBoxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  '6 Bln',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3.59 %/Thn',
                  style: textStyleBlackBold(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: primaryBoxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  '6 Bln',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3.59 %/Thn',
                  style: textStyleBlackBold(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: primaryBoxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  '6 Bln',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3.59 %/Thn',
                  style: textStyleBlackBold(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: primaryBoxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  '6 Bln',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3.59 %/Thn',
                  style: textStyleBlackBold(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
