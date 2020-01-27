import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/page/checkout/list_item_checkout.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class CheckoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.black87,
      child: Column(
        children: <Widget>[
          Container(
            height: 500,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListItemCheckout();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Total: RP. 100.000.000',
                  style: primaryColorBold(),
                ),
                Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: primaryTextColor,
                    onPressed: () {},
                    child: Text(
                      'Checkout Pembayaran',
                      style: textStyleBlackBold(fontSize: 15),
                    ),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
