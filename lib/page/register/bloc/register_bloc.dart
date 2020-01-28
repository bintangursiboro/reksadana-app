import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/register/bloc/register_event.dart';
import 'package:hoopiper_reksa/page/register/bloc/register_state.dart';
import 'package:hoopiper_reksa/page/register/service/register_service.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  @override
  RegisterState get initialState => RegisterInitial();

  RegisterService _service = RegisterService();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is RegisterUser) {
      await _service.registerUser(event.model);
    }
  }
}
