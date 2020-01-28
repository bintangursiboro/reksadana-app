import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class ListItemCheckout extends StatelessWidget {
  final ItemBeli item;

  ListItemCheckout({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).primaryColor,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        title: Text(
          item.titleReksa,
          style: primaryColorBold(),
        ),
        subtitle: Text(
          'Total Beli: Rp. ${item.jlhBeli}',
          style: primaryColor(),
        ),
        trailing: Text(
          item.hargaUnit,
          style: primaryColor(),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
