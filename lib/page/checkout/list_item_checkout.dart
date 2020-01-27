import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/util/style/style.dart';

class ListItemCheckout extends StatelessWidget {
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
          'Reksadana',
          style: primaryColorBold(),
        ),
        subtitle: Text(
          'Total Beli: Rp. 500.000',
          style: primaryColor(),
        ),
        trailing: Text(
          '7.87 % / Thn',
          style: primaryColor(  ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
