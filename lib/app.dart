import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/checkout/checkout.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hoopiper Reksadana',
        routes: {
          Dashboard.PATH: (_) => Dashboard(),
          Checkout.PATH: (_) => Checkout(),
          Detail.PATH: (_) => Detail(),
        },
        home: Dashboard(),
        theme: ThemeData(
          primaryColor: Color(0xFF1b262c),
          accentColor: Color(0xFF0f4c75),
        ),
      ),
      providers: [
        BlocProvider<DashboardBloc>(
          create: (context) => DashboardBloc(),
          child: Dashboard(),
        )
      ],
    );
  }
}
