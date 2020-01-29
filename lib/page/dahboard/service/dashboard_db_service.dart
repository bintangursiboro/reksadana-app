import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class DashboardDbService {
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<bool> checkCart() async {
    Database db = await _databaseHelper.database;
    var list = await db.query(DatabaseHelper.tableCheckout);
    if (list.length > 0) {
      return true;
    }
    return false;
  }
}
