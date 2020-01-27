import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/dashboard_tab_reksa_view.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail.dart';

class DashboardTabReksa extends StatefulWidget {
  @override
  _DashboardTabReksaState createState() => _DashboardTabReksaState();
}

class _DashboardTabReksaState extends State<DashboardTabReksa> {
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DashboardTabReksaView(
        tabIndex: tabIndex,
        onChangeTab: onChangeTabIndex,
        onTapItem: onTapItem);
  }

  onTapItem() {
    Navigator.pushNamed(context, Detail.PATH);
  }

  onChangeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }
}
