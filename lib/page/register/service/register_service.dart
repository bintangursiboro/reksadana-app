import 'package:hoopiper_reksa/model/model_register.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class RegisterService {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<int> registerUser(RegisterModel model) async {
    Database db = await _databaseHelper.database;
    return await db.insert('user', RegisterModel.toMap(model));
  }

  Future<int> fetchUser() async {
    Database db = await _databaseHelper.database;
    var value = await db.query(
      DatabaseHelper.tableUser,
    );
    print(value);
  }
}
