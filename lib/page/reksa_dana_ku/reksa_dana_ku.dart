import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/page/jual_reksa/jual_reksa.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_bloc.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_event.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_state.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/reksa_dana_ku_view.dart';

class ReksaDanaKu extends StatefulWidget {
  static const String PATH = '/reksadanaku';
  @override
  _ReksaDanaKuState createState() => _ReksaDanaKuState();
}

class _ReksaDanaKuState extends State<ReksaDanaKu> {
  ReksaDanaKuBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<ReksaDanaKuBloc>(context);
    _bloc.add(GetMyReksaDana());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, ReksaDanaKuState state) {
          return ReksaDanaKuView(
            isError: (state is ReksaDanaKuError),
            isLoading: (state is ReksaDanaKuLoading),
            lisItem: (state is ReksaDanaKuLoaded) ? state.listItemBeli : [],
            onTapItem: onTapItem,
          );
        },
      ),
      listener: (BuildContext context, ReksaDanaKuState state) {},
    );
  }

  onTapItem(ItemBeli itemBeli) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => JualReksa(
              itemBeli: itemBeli,
            )));
  }
}
