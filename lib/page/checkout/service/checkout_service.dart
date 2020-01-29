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

  Future<int> checkoutAllItem(List<ItemBeli> list) async {
    Database db = await _databaseHelper.database;
    list.forEach((item) {
      db.insert(DatabaseHelper.tableMyReksadana, {
        'titleReksa': item.titleReksa,
        'jenis': item.jenis,
        'hargaUnit': item.hargaUnit,
        'jumlahBeli': item.jlhBeli,
      });
    });
    return await db.delete(DatabaseHelper.tableCheckout);
  }

  Future<int> deleteCheckout() async {
    Database db = await _databaseHelper.database;
    return await db.delete(DatabaseHelper.tableCheckout);
  }
}
