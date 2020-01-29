import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class JualReksaService {
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<int> checkoutReksa(int id) async {
    Database db = await _databaseHelper.database;
    return await db.delete(DatabaseHelper.tableMyReksadana,
        where: 'columnId = ?', whereArgs: [id]);
  }
}
