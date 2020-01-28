import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/checkout/bloc/checkout_bloc.dart';
import 'package:hoopiper_reksa/page/checkout/bloc/checkout_event.dart';
import 'package:hoopiper_reksa/page/checkout/bloc/checkout_state.dart';
import 'package:hoopiper_reksa/page/checkout/checkout_view.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class Checkout extends StatefulWidget {
  static const PATH = '/checkout';
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  CheckoutBloc _bloc;

  @override
  void initState() {
    _bloc = CheckoutBloc();
    _bloc.add(GetCheckoutList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, CheckoutState state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Checkout Reksadana',
                style: primaryColorBold(),
              ),
              // bottom: ,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: primaryTextColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    onDeleteReksa();
                  },
                ),
              ],
            ),
            body: CheckoutView(
              listItem: (state is CheckoutLoaded) ? state.listCheckout : [],
              totalBeli: (state is CheckoutLoaded) ? state.totalBeli : 0,
            ),
          );
        },
      ),
      listener: (BuildContext context, CheckoutState state) {},
    );
  }

  onDeleteReksa() {}
}
