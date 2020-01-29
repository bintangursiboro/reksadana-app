import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_event.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/bloc/reksa_dana_ku_state.dart';
import 'package:hoopiper_reksa/page/reksa_dana_ku/service/reksa_dana_ku_service.dart';

class ReksaDanaKuBloc extends Bloc<ReksaDanaKuEvent, ReksaDanaKuState> {
  @override
  ReksaDanaKuState get initialState => ReksaDanaKuInitial();

  ReksaDanaKuService _service = ReksaDanaKuService();

  @override
  Stream<ReksaDanaKuState> mapEventToState(ReksaDanaKuEvent event) async* {
    if (event is GetMyReksaDana) {
      try {
        yield await _service.getAllMyItem().then((response) {
          return ReksaDanaKuLoaded(listItemBeli: response);
        });
      } catch (_) {
        yield ReksaDanaKuError();
      }
    }
  }
}
