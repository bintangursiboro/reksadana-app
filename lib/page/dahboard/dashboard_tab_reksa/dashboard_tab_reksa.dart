import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/bloc/dashboard_tab_reksa_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/bloc/dashboard_tab_reksa_event.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/bloc/dashboard_tab_reksa_state.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/dashboard_tab_reksa_view.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail.dart';

class DashboardTabReksa extends StatefulWidget {
  @override
  _DashboardTabReksaState createState() => _DashboardTabReksaState();
}

class _DashboardTabReksaState extends State<DashboardTabReksa> {
  int tabIndex = 0;
  DashboardTabReksaBloc _bloc;
  @override
  void initState() {
    _bloc = DashboardTabReksaBloc();
    _bloc.add(GetReksaByCode(reksaCode: tabIndex));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, DashboardTabReksaState state) {
          return DashboardTabReksaView(
            tabIndex: tabIndex,
            onChangeTab: onChangeTabIndex,
            onTapItem: onTapItem,
            isError: (state is DashboardTabReksaError),
            isLoading: (state is DashboardTabReksaLoading),
            listItem: (state is DashboardTabReksaLoaded) ? state.listReksa : [],
          );
        },
      ),
      listener: (BuildContext context, state) {},
    );
  }

  onTapItem() {
    Navigator.pushNamed(context, Detail.PATH);
  }

  onChangeTabIndex(int index) {
    tabIndex = index;
    _bloc.add(GetReksaByCode(reksaCode: index));
  }
}
