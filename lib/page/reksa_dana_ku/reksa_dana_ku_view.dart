import 'package:flutter/material.dart';

class ReksaDanaKuView extends StatelessWidget {
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
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1b262c),
                  borderRadius: BorderRadius.circular(5.0)),
              margin: EdgeInsetsDirectional.only(bottom: 15, start: 5, end: 5),
              child: ListTile(
                leading: Container(
                    child: Icon(
                  Icons.trending_up,
                  color: Color(0xFF66ff00),
                )),
                title: Text(
                  'Capital Money Market Fund',
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
                  'Nab IDR 1,310.07',
                  style: TextStyle(
                      color: Color(0xFFbbe1fa), fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
