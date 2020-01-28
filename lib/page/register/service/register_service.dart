import 'package:hoopiper_reksa/model/model_register.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';
import 'package:sqflite/sqlite_api.dart';

class RegisterService {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  Future<int> registerUser(RegisterModel model) async {
    Database db = await _databaseHelper.database;
    await db.query(DatabaseHelper.tableUser,
        where: 'username = ?', whereArgs: [model.userName]).then((response) {
      if (response.length > 0) {
        throw UnexpectedErrorException();
      }
    });
    return await db.insert('user', RegisterModel.toMap(model));
  }
}
