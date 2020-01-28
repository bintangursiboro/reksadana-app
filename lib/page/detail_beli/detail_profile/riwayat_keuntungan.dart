import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class RiwayatKeuntungan extends StatelessWidget {
  final ReksaDana reksaDana;
  final bool isLoading;
  final bool isError;

  RiwayatKeuntungan({
    this.reksaDana,
    this.isError,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
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
                (isLoading)
                    ? loadingDataWidget
                    : Text(
                        reksaDana.riwayatKeuntungan.blnEnam ?? '',
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
                  '1 Thn',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                (isLoading)
                    ? loadingDataWidget
                    : Text(
                        reksaDana.riwayatKeuntungan.tahunSatu ?? '',
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
                  '2 Thn',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                (isLoading)
                    ? loadingDataWidget
                    : Text(
                        reksaDana.riwayatKeuntungan.tahunDua ?? '',
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
                  '3 Thn',
                  style: textStyleBlackBold(fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  reksaDana.riwayatKeuntungan.tahunTiga ?? '',
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
