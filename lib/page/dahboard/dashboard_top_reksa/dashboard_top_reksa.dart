import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/bloc/dashboard_top_reksa_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/bloc/dashboard_top_reksa_event.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/bloc/dashboard_top_reksa_state.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/dashboard_top_reksa_view.dart';

class DashboardTopReksa extends StatefulWidget {
  DashboardTopReksa({this.onTapReksa});
  final Function onTapReksa;
  @override
  _DashboardTopReksaState createState() => _DashboardTopReksaState();
}

class _DashboardTopReksaState extends State<DashboardTopReksa> {
  DashboardTopReksaBloc _bloc;

  @override
  void initState() {
    _bloc = DashboardTopReksaBloc();
    _bloc.add(GetTopReksaList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, DashboardTopReksaState state) {
        return DashboardTopReksaView(
          onTapReksa: widget.onTapReksa,
          isError: (state is DashboardTopReksaError),
          isLoading: (state is DashboardTopReksaLoading),
          topReksa: (state is DashboardTopReksaLoaded) ? state.topReksa : [],
        );
      },
    );
  }
}
