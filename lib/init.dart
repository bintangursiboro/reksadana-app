import 'package:flutter/material.dart';
import 'package:hoopiper_reksa/app.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:hoopiper_reksa/util/di/injector_container.dart';

class Init extends StatelessWidget {
  Future init() async {
    InjectorContainer injectorContainer = InjectorContainer();
    injectorContainer.initInjector();
    await DatabaseHelper.instance.database;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: init(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return App();
      },
    );
  }
}
