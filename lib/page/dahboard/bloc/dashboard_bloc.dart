import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_event.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_state.dart';
import 'package:hoopiper_reksa/page/dahboard/service/dashboard_service.dart';
import 'package:hoopiper_reksa/util/shared_preferences/shared_preferences_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => DashboardInitial();

  DashboardService _service = DashboardService();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    yield DashboardLoading();
    if (event is GetProfile) {
      try {
        yield await _service.getProfile().then((response) {
          return DashboardProfileLoaded(profile: response);
        });
      } catch (_) {}
    }

    if (event is CheckLogin) {
      try {
        if (preferences.getBool(SharedPreferencesHelper.isLogin)) {
          yield HasLogout();
        } else
          yield DashboardInitial();
      } catch (_) {}
    }

    if (event is SetLogout) {
      try {
        yield await preferences
            .setBool(SharedPreferencesHelper.isLogin, false)
            .then((onValue) {
          return HasLogout(hasLogin: onValue);
        });
      } catch (_) {}
    }
  }
}
