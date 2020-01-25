import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class ReksaDanaProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorPrimaryContainer,
      ),
      child: Column(
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
                  'Reksa Dana Mega Dana Kas',
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
                    'IDR 1,652.29',
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
                    '7.29% / Thn',
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
