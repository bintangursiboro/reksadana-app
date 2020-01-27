import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/bloc/dashboard_top_reksa_event.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_top_reksa/bloc/dashboard_top_reksa_state.dart';
import 'package:hoopiper_reksa/page/dahboard/service/dashboard_service.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';

class DashboardTopReksaBloc
    extends Bloc<DashboardTopReksaEvent, DashboardTopReksaState> {
  @override
  DashboardTopReksaState get initialState => DashboardTopReksaInitial();

  DashboardService _service = DashboardService();

  @override
  Stream<DashboardTopReksaState> mapEventToState(
      DashboardTopReksaEvent event) async* {
    yield DashboardTopReksaLoading();
    if (event is GetTopReksaList) {
      try {
        yield await _service.getTopReksa().then((model) {
          return DashboardTopReksaLoaded(topReksa: model.listReksadana);
        });
      } on UnexpectedErrorException catch (_) {
        yield DashboardTopReksaError();
      }
    }
  }
}
