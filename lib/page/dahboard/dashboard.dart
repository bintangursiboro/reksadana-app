import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/page/checkout/checkout.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_event.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_state.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_view.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail.dart';
import 'package:hoopiper_reksa/page/login/login.dart';

class Dashboard extends StatefulWidget {
  static const PATH = '/dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TabController tabController;
  DashboardBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DashboardBloc>(context);
    _bloc.add(GetProfile());
    _bloc.add(CheckLogin());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, DashboardState state) {
          return DashboardView(
            onTapCheckout: onTapCheckout,
            onTapReksa: onTapReksa,
            onTapLogout: onTapLogout,
            profile: (state is DashboardProfileLoaded)
                ? state.profile
                : Profile.loading(),
            isCart:
                (state is DashboardProfileLoaded) ? state.isAnyCheckout : false,
          );
        },
      ),
      listener: (BuildContext context, DashboardState state) {
        if (state is HasLogout) {
          Navigator.popAndPushNamed(context, Login.PATH);
        }
      },
    );
  }

  onTapReksa() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Detail(
              idReksa: 1,
            )));
  }

  onTapCheckout() {
    Navigator.pushNamed(context, Checkout.PATH);
  }

  onTapLogout() {
    _bloc.add(SetLogout());
  }
}
