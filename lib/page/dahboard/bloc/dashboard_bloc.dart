import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_event.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_state.dart';
import 'package:hoopiper_reksa/page/dahboard/service/dashboard_service.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => DashboardInitial();

  DashboardService _service = DashboardService();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    yield DashboardLoading();
    if (event is GetProfile) {
      try {
        yield await _service.getProfile().then((response) {
          return DashboardProfileLoaded(profile: response);
        });
      } catch (_) {}
    }
  }
}
