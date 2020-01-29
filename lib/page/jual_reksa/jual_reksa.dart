import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/page/jual_reksa/bloc/jual_reksa_bloc.dart';
import 'package:hoopiper_reksa/page/jual_reksa/bloc/jual_reksa_event.dart';
import 'package:hoopiper_reksa/page/jual_reksa/bloc/jual_reksa_state.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_bloc.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_event.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class JualReksa extends StatefulWidget {
  JualReksa({this.itemBeli});

  static const PATH = '/jualreksa';
  final ItemBeli itemBeli;

  @override
  _JualReksaState createState() => _JualReksaState();
}

class _JualReksaState extends State<JualReksa> {
  JualReksaBloc _bloc;
  ReksaDanaKuBloc _reksaDanaKuBloc;

  @override
  void initState() {
    _bloc = JualReksaBloc();
    _reksaDanaKuBloc = BlocProvider.of<ReksaDanaKuBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
          bloc: _bloc,
          builder: (BuildContext context, JualReksaState state) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Jual Reksa Dana'),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: <Widget>[
                      Text(widget.itemBeli.titleReksa,
                          style: primaryColorBold(fontSize: 25)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: BorderDirectional(
                                  end: BorderSide(color: primaryTextColor)),
                            ),
                            padding: EdgeInsetsDirectional.only(end: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Jenis Reksa Dana',
                                  style: primaryColorBold(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Harga Unit',
                                  style: primaryColorBold(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Jumlah Beli',
                                  style: primaryColorBold(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.itemBeli.jenis ?? '',
                                  style: primaryColor(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.itemBeli.hargaUnit ?? '',
                                  style: primaryColor(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rp. ${widget.itemBeli.jlhBeli}' ?? '',
                                  style: primaryColor(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: RawMaterialButton(
                          onPressed: () {
                            jualReksaDana(widget.itemBeli.columnId);
                          },
                          child: Text(
                            'Jual',
                            style: textStyleBlackBold(fontSize: 15),
                          ),
                          fillColor: primaryTextColor,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      listener: (BuildContext context, JualReksaState state) {
        if (state is JualReksaLoaded) {
          _reksaDanaKuBloc.add(GetMyReksaDana());
          Navigator.pop(context);
        }
      },
    );
  }

  jualReksaDana(int id) {
    _bloc.add(SellReksaDana(id: id));
  }
}
