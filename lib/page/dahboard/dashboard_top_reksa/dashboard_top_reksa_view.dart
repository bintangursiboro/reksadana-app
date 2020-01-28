import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class DashboardTopReksaView extends StatelessWidget {
  final Function onTapReksa;
  final List<ReksaDana> topReksa;
  final bool isLoading;
  final bool isError;

  DashboardTopReksaView({
    this.onTapReksa,
    this.topReksa,
    this.isError,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? loadingDataWidget
        : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topReksa.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
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
                            topReksa[index].titleReksa,
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
                                  topReksa[index].riwayatKeuntungan.tahunSatu,
                                  style: TextStyle(
                                      color: Color(0xFFbbe1fa),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            (topReksa[index].isGrowth)
                                ? Icon(
                                    Icons.trending_up,
                                    color: Color(0xFF66ff00),
                                  )
                                : Icon(
                                    Icons.trending_down,
                                    color: Colors.red,
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
                                  topReksa[index].hargaUnit,
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
              );
            },
          );
  }
}
