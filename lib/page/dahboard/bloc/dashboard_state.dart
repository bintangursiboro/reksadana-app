import 'package:equatable/equatable.dart';

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
