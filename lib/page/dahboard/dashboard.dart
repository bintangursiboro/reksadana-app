import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/checkout/checkout.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_view.dart';

class Dashboard extends StatefulWidget {
  static const PATH = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DashboardView(
      onTapCheckout: onTapCheckout,
    );
  }

  onTapCheckout() {
    Navigator.pushNamed(context, Checkout.PATH);
  }
}
