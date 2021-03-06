import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/page/checkout/list_item_checkout.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class CheckoutView extends StatelessWidget {
  final List<ItemBeli> listItem;
  final int totalBeli;
  final Function(List<ItemBeli>) onTapCheckout;

  CheckoutView({
    this.listItem,
    this.totalBeli,
    this.onTapCheckout,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.black87,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: listItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListItemCheckout(
                    item: listItem[index],
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text(
                    'Total: RP. $totalBeli',
                    style: primaryColorBold(),
                  ),
                  Container(
                    width: double.infinity,
                    child: RawMaterialButton(
                      fillColor: primaryTextColor,
                      onPressed: () {
                        onTapCheckout(listItem);
                      },
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
      ),
    );
  }
}
