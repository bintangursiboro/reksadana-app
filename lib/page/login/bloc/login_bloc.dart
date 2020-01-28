import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_event.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_state.dart';
import 'package:hoopiper_reksa/page/login/service/login_service.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';
import 'package:hoopiper_reksa/util/shared_preferences/shared_preferences_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  LoginService _service = LoginService();

  SharedPreferences preferences;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    preferences = await SharedPreferences.getInstance();

    if (event is LoginUser) {
      yield LoginLoading();
      try {
        yield await _service
            .login(username: event.username, password: event.password)
            .then((onValue) {
          return LoginSuccess(registerUser: onValue);
        });
      } on UnexpectedErrorException catch (_) {
        yield LoginError();
      }
    }

    if (event is CheckLogin) {
      try {
        if (preferences.getBool(SharedPreferencesHelper.isLogin)) {
          yield HasLogin();
        } else
          yield LoginInitial();
      } catch (_) {}
    }

    if (event is SetLogin) {
      try {
        await preferences.setBool(SharedPreferencesHelper.isLogin, true);
      } catch (_) {}
    }
  }
}
