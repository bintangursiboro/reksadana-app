import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_event.dart';
import 'package:hoopiper_reksa/page/login/bloc/login_state.dart';
import 'package:hoopiper_reksa/page/login/service/login_service.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  LoginService _service = LoginService();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield LoginLoading();
    if (event is LoginUser) {
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
  }
}
