import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/checkout/checkout.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_view.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail.dart';

class Dashboard extends StatefulWidget {
  static const PATH = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TabController tabController;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DashboardView(
      onTapCheckout: onTapCheckout,
      onTapReksa: onTapReksa,
    );
  }

  onTapReksa() {
    Navigator.pushNamed(context, Detail.PATH);
  }

  onTapCheckout() {
    Navigator.pushNamed(context, Checkout.PATH);
  }
}
