import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/detail_beli.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/reksa_dana_profile.dart';
import 'package:hoopiper_reksa/page/detail_beli/detail_profile/riwayat_keuntungan.dart';
import 'package:hoopiper_reksa/util/style/style.dart';
import 'package:hoopiper_reksa/util/validator/text_form_field_validator.dart';

class Detail extends StatefulWidget {
  static const PATH = '/detail';
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final jumlahBeliKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            color: Colors.black87,
            child: Column(
              children: <Widget>[
                ReksaDanaProfile(),
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
                RiwayatKeuntungan(),
                // detail beli
                DetailBeli(),
                //Text Jumlah beli
                Theme(
                  child: Form(
                    key: jumlahBeliKey,
                    child: TextFormField(
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
                            borderSide: BorderSide(color: primaryTextColor),
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
                      if (jumlahBeliKey.currentState.validate()) {
                        //TODO Fungsi beli reksa
                        print('BELIKK!');
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
