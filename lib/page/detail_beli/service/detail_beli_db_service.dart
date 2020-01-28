import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class DetailDbService {
  DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<int> buyAndSaveToDatabase(
      {ReksaDana reksaDana, int jumlahBeli}) async {
    Database db = await _databaseHelper.database;
    return await db.insert(DatabaseHelper.tableCheckout, {
      'titleReksa': reksaDana.titleReksa,
      'jenis': reksaDana.jenis,
      'hargaUnit': reksaDana.hargaUnit,
      'jumlahBeli': jumlahBeli,
    });
  }
}
