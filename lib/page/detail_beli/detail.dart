import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_event.dart';
import 'package:hoopiper_reksa/page/detail_beli/bloc/detail_beli_bloc.dart';
import 'package:hoopiper_reksa/page/detail_beli/bloc/detail_beli_event.dart';
import 'package:hoopiper_reksa/page/detail_beli/bloc/detail_beli_state.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/detail_beli.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/reksa_dana_profile.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/riwayat_keuntungan.dart';
import 'package:hoopiper_reksa/util/style/style.dart';
import 'package:hoopiper_reksa/util/validator/text_form_field_validator.dart';

class Detail extends StatefulWidget {
  static const PATH = '/detail';
  final int idReksa;

  Detail({this.idReksa});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final jumlahBeliKey = GlobalKey<FormState>();
  DetailBeliBloc _bloc;
  TextEditingController jlhBeliController = TextEditingController();
  DashboardBloc _dashboardBloc;
  ReksaDana reksaDana;

  @override
  void initState() {
    _bloc = DetailBeliBloc();
    _bloc.add(GetDetailReksa(id: widget.idReksa));
    _dashboardBloc = BlocProvider.of<DashboardBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, DetailBeliState state) {
          if (state is DetailBeliLoaded) {
            reksaDana = state.reksaDana;
          }
          return Scaffold(
            body: SafeArea(
              child: Container(
                height: double.infinity,
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ReksaDanaProfile(
                        isError: state is DetailBeliError,
                        isLoading: state is DetailBeliLoading,
                        reksaDana: (state is DetailBeliLoaded)
                            ? state.reksaDana
                            : ReksaDana.initial(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Riwayat Keuntungan',
                          style: primaryColorBold(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Keuntungan per
                      RiwayatKeuntungan(
                        isError: state is DetailBeliError,
                        isLoading: state is DetailBeliLoading,
                        reksaDana: (state is DetailBeliLoaded)
                            ? state.reksaDana
                            : ReksaDana.initial(),
                      ),
                      // detail beli
                      DetailBeli(
                        isError: state is DetailBeliError,
                        isLoading: state is DetailBeliLoading,
                        reksaDana: (state is DetailBeliLoaded)
                            ? state.reksaDana
                            : ReksaDana.initial(),
                      ),
                      //Text Jumlah beli
                      Theme(
                        child: Form(
                          key: jumlahBeliKey,
                          child: TextFormField(
                            controller: jlhBeliController,
                            // inputFormatters: ,
                            style: primaryColor(),
                            keyboardType: TextInputType.number,
                            validator: Validator.validateNumber,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              hintText: 'Jumlah Beli',
                              icon: Icon(
                                Icons.attach_money,
                                color: primaryTextColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: primaryTextColor),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        data: ThemeData(
                          hintColor: primaryTextColor,
                          primaryColor: primaryTextColor,
                          primaryColorDark: primaryTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Container(
                            child: Text(
                              'Beli',
                              style: primaryColorBold(),
                            ),
                          ),
                          color: colorPrimaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {
                            onTapBeli(jlhBeliController.text, reksaDana);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      listener: (BuildContext context, DetailBeliState state) {
        if (state is BeliSuccess) {
          _dashboardBloc.add(GetProfile());
          Navigator.of(context).pop();
        }
      },
    );
  }

  onTapBeli(String jumlahBeli, ReksaDana reksaDana) {
    if (jumlahBeliKey.currentState.validate()) {
      _bloc.add(
          BeliReksaDana(jlhBeli: int.parse(jumlahBeli), reksaDana: reksaDana));
    }
  }
}
