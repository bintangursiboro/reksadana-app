import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class DetailBeli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border:
                  BorderDirectional(end: BorderSide(color: primaryTextColor)),
            ),
            padding: EdgeInsetsDirectional.only(end: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jenis Reksa Dana',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Minimal Pembelian Awal',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pembelian Selanjutnya',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Minimal Penjualan Kembali',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tanggal Peluncuran',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Dana Kelolaan',
                  style: primaryColorBold(),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pasar Uang',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IDR 100,000.00',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IDR 100,000.00',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IDR 100,000.00',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '11 September 2006',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IDR 406,052,709,096.00',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
