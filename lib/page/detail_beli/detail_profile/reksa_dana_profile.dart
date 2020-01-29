import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class ReksaDanaProfile extends StatelessWidget {
  final ReksaDana reksaDana;
  final bool isLoading;
  final bool isError;

  ReksaDanaProfile({
    this.isError,
    this.isLoading,
    this.reksaDana,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorPrimaryContainer,
      ),
      child: (isError)
          ? errorWidget
          : (isLoading)
              ? loadingDataWidget
              : Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: colorSecondaryContainer,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            reksaDana.titleReksa ?? '',
                            style: primaryColorBold(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Harga/Unit',
                              style: primaryColorBold(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              reksaDana.hargaUnit ?? '',
                              style: primaryColorBold(fontSize: 25),
                            )
                          ],
                        ),
                        Icon(
                          Icons.trending_up,
                          color: Color(0xFF66ff00),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Keuntungan',
                              style: primaryColorBold(fontSize: 15),
                            ),
                            Text(
                              reksaDana.riwayatKeuntungan.tahunSatu ?? '',
                              style: primaryColorBold(fontSize: 25),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
    );
  }
}
