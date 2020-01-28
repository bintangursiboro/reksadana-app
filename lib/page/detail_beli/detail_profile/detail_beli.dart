import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class DetailBeli extends StatelessWidget {
  final ReksaDana reksaDana;
  final bool isLoading;
  final bool isError;

  DetailBeli({
    this.reksaDana,
    this.isLoading,
    this.isError,
  });

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
                  reksaDana.jenis ?? '',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  reksaDana.minPembelian ?? '',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  reksaDana.nextPembelian ?? '',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  reksaDana.minPembelian ?? '',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  reksaDana.tglPeluncuran ?? '',
                  style: primaryColor(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  reksaDana.danaKelola ?? '',
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
