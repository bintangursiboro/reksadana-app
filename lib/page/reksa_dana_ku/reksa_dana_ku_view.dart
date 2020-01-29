import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

class ReksaDanaKuView extends StatelessWidget {
  final bool isLoading;
  final bool isError;
  final List<ItemBeli> lisItem;
  final Function(ItemBeli) onTapItem;

  ReksaDanaKuView({
    this.isLoading,
    this.isError,
    this.lisItem,
    this.onTapItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Reksa Dana Ku'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          itemCount: lisItem.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1b262c),
                  borderRadius: BorderRadius.circular(5.0)),
              margin: EdgeInsetsDirectional.only(bottom: 15, start: 5, end: 5),
              child: GestureDetector(
                onTap: () {
                  onTapItem(lisItem[index]);
                },
                child: ListTile(
                  leading: Container(
                      child: Icon(
                    Icons.trending_up,
                    color: Color(0xFF66ff00),
                  )),
                  title: Text(
                    lisItem[index].titleReksa,
                    style: TextStyle(
                        color: Color(0xFFbbe1fa), fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '7.44%',
                    style: TextStyle(
                      color: Color(0xFFbbe1fa),
                    ),
                  ),
                  trailing: Text(
                    'Rp. ${lisItem[index].jlhBeli}',
                    style: TextStyle(
                        color: Color(0xFFbbe1fa), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
