import 'package:flutter/material.dart';

class DashboardTopReksaView extends StatelessWidget {
  final Function onTapReksa;
  DashboardTopReksaView({this.onTapReksa});
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            onTapReksa();
          },
          child: Card(
            margin: EdgeInsets.only(left: 2.5, right: 2.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              height: 100,
              width: 190,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Capital Monet Market Fund',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFFbbe1fa),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Return',
                            style: TextStyle(
                                color: Color(0xFFbbe1fa),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '7.45%/th',
                            style: TextStyle(
                                color: Color(0xFFbbe1fa),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
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
                            'NAB',
                            style: TextStyle(
                                color: Color(0xFFbbe1fa),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'IDR 1,309.90',
                            style: TextStyle(
                                color: Color(0xFFbbe1fa),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF3282b8),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
