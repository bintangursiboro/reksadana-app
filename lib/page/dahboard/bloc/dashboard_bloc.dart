import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_event.dart';
import 'package:hoopiper_reksa/page/dahboard/bloc/dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => DashboardInitial();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {}
}
