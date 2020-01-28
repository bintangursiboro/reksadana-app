import 'package:hoopiper_reksa/model/model_register.dart';
import 'package:hoopiper_reksa/util/db/database_helper.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';
import 'package:sqflite/sqlite_api.dart';

class LoginService {
  DatabaseHelper _helper = DatabaseHelper.instance;

  Future<RegisterModel> login({String username, String password}) async {
    Database database = await _helper.database;
    var result = await database.query(DatabaseHelper.tableUser,
        where: 'username = ?', whereArgs: [username]);
    if (result.length > 0) {
      var model = RegisterModel.fromJson(result.first);
      if (model.userName == username && model.password == password) {
        return model;
      }
      throw UnexpectedErrorException();
    }
    throw UnexpectedErrorException();
  }
}
