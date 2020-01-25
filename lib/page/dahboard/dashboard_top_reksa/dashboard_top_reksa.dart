import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/dashboard_top_reksa_view.dart';

class DashboardTopReksa extends StatefulWidget {
  DashboardTopReksa({this.onTapReksa});
  final Function onTapReksa;
  @override
  _DashboardTopReksaState createState() => _DashboardTopReksaState();
}

class _DashboardTopReksaState extends State<DashboardTopReksa> {
  @override
  Widget build(BuildContext context) {
    return DashboardTopReksaView(
      onTapReksa: widget.onTapReksa,
    );
  }
}
