import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class CheckoutService {
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<List<ItemBeli>> getAllItemBeli() async {
    Database db = await _databaseHelper.database;

    return await db.query(DatabaseHelper.tableCheckout).then((onValue) {
      print(onValue);
      return ItemBeli.parseList(onValue);
    });
  }
}
