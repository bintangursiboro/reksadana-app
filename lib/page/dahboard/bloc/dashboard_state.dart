import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

class DashboardState extends Equatable {
  final List mProps;
  DashboardState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class DashboardInitial extends DashboardState {}

class DashboardLoaded extends DashboardState {}

class DashboardError extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardProfileLoaded extends DashboardState {
  final Profile profile;
  DashboardProfileLoaded({this.profile}) : super([profile]);
}
