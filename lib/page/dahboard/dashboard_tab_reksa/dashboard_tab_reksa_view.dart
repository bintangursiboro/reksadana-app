import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class DashboardTabReksaView extends StatelessWidget {
  final TabController tabController;
  DashboardTabReksaView({
    this.tabController,
    this.tabIndex,
    this.onChangeTab,
    this.onTapItem,
    this.listItem,
    this.isLoading,
    this.isError,
  });

  final int tabIndex;
  final Function(int) onChangeTab;
  final Function onTapItem;
  final List<ReksaDana> listItem;
  final bool isLoading;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white70,
          height: 40,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  onChangeTab(0);
                },
                child: Container(
                  child: Text(
                    'Saham',
                    style:
                        (tabIndex == 0) ? primaryColorBold() : primaryColor(),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b262c),
                    border: (tabIndex == 0)
                        ? Border(
                            bottom:
                                BorderSide(color: Color(0xFFbbe1fa), width: 3),
                          )
                        : null,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onChangeTab(1);
                },
                child: Container(
                  child: Text(
                    'Campuran',
                    style:
                        (tabIndex == 1) ? primaryColorBold() : primaryColor(),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b262c),
                    border: (tabIndex == 1)
                        ? Border(
                            bottom:
                                BorderSide(color: Color(0xFFbbe1fa), width: 3),
                          )
                        : null,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onChangeTab(2);
                },
                child: Container(
                  child: Text(
                    'Pasar Uang',
                    style:
                        (tabIndex == 2) ? primaryColorBold() : primaryColor(),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b262c),
                    border: (tabIndex == 2)
                        ? Border(
                            bottom:
                                BorderSide(color: Color(0xFFbbe1fa), width: 3),
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black87,
          height: MediaQuery.of(context).size.height - 40 - 385,
          width: double.infinity,
          child: (isLoading)
              ? loadingDataWidget
              : (isError)
                  ? errorWidget
                  : ListView.builder(
                      itemCount: listItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            onTapItem();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF1b262c),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsetsDirectional.only(
                                bottom: 15, start: 5, end: 5),
                            child: ListTile(
                              leading: Container(
                                  child: Icon(
                                Icons.trending_up,
                                color: Color(0xFF66ff00),
                              )),
                              title: Text(
                                listItem[index].titleReksa,
                                style: TextStyle(
                                    color: Color(0xFFbbe1fa),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                listItem[index].riwayatKeuntungan.tahunSatu,
                                style: TextStyle(
                                  color: Color(0xFFbbe1fa),
                                ),
                              ),
                              trailing: Text(
                                'Nab ${listItem[index].hargaUnit}',
                                style: TextStyle(
                                    color: Color(0xFFbbe1fa),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
        ),
      ],
    );
  }
}
