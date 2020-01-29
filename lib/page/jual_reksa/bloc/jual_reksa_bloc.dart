import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/jual_reksa/bloc/jual_reksa_event.dart';
import 'package:hoopiper_reksa/page/jual_reksa/bloc/jual_reksa_state.dart';
import 'package:hoopiper_reksa/page/jual_reksa/service/jual_reksa_service.dart';

class JualReksaBloc extends Bloc<JualReksaEvent, JualReksaState> {
  @override
  JualReksaState get initialState => JualReksaInitial();

  @override
  Stream<JualReksaState> mapEventToState(JualReksaEvent event) async* {
    JualReksaService _service = JualReksaService();
    if (event is SellReksaDana) {
      yield JualReksaLoading();

      try {
        yield await _service.checkoutReksa(event.id).then((onValue) {
          return JualReksaLoaded();
        });
      } catch (_) {
        yield JualReksaError();
      }
    }
  }
}
