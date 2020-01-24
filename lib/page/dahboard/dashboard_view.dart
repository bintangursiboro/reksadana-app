import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/dashboard_tab_reksa.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/dashboard_top_reksa.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 375,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 7,
                ),
                //TODO Change User Name
                Text(
                  'Lohot Siboro',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFbbe1fa),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Rp. 100.000.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004f1c),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Top Reksa',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 130,
                  color: Theme.of(context).primaryColor,
                  child: DashboardTopReksa(),
                ),
              ],
            ),
          ),
          //Tab Bar
          DashboardTabReksa(),
        ],
      ),
    );
  }
}
