import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/bloc/dashboard_tab_reksa_event.dart';
import 'package:hoopiper_reksa/page/dahboard/dashboard_tab_reksa/bloc/dashboard_tab_reksa_state.dart';
import 'package:hoopiper_reksa/page/dahboard/service/dashboard_service.dart';

class DashboardTabReksaBloc
    extends Bloc<DashboardTabReksaEvent, DashboardTabReksaState> {
  @override
  DashboardTabReksaState get initialState => DashboardTabReksaInitial();

  DashboardService _service = DashboardService();

  @override
  Stream<DashboardTabReksaState> mapEventToState(
      DashboardTabReksaEvent event) async* {
    yield DashboardTabReksaLoading();
    if (event is GetReksaByCode) {
      try {
        if (event.reksaCode == 0) {
          yield await _service.getReksaSaham().then((onValue) {
            return DashboardTabReksaLoaded(listReksa: onValue.listReksadana);
          });
        } else if (event.reksaCode == 1) {
          yield await _service.getReksaCampuran().then((onValue) {
            return DashboardTabReksaLoaded(listReksa: onValue.listReksadana);
          });
        } else {
          yield await _service.getReksaPasarUang().then((onValue) {
            return DashboardTabReksaLoaded(listReksa: onValue.listReksadana);
          });
        }
      } catch (_) {
        yield DashboardTabReksaError();
      }
    }
  }
}
