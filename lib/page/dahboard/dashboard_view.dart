import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/dashboard_tab_reksa.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/dashboard_top_reksa.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/reksa_dana_ku.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class DashboardView extends StatelessWidget {
  final Function onTapCheckout;
  DashboardView({
    this.onTapCheckout,
    this.onTapReksa,
  });
  final Function onTapReksa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 6),
                height: 370,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: CircleAvatar(
                              radius: 50,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, ReksaDanaKu.PATH);
                            },
                          ),
                          Positioned(
                            child: IconButton(
                              onPressed: () {
                                onTapCheckout();
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: primaryTextColor,
                              ),
                            ),
                            top: 10,
                            right: 10,
                          ),
                          Positioned(
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                            // height: 10,
                            top: 17,
                            right: 17,
                          ),
                        ],
                      ),
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
                        style: primaryColorBold(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 130,
                      color: Theme.of(context).primaryColor,
                      child: DashboardTopReksa(
                        onTapReksa: onTapReksa,
                      ),
                    ),
                  ],
                ),
              ),
              //Tab Bar
              DashboardTabReksa(),
            ],
          ),
        ),
      ),
    );
  }
}
