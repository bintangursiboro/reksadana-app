import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {
  DashboardEvent([this.mProps = const []]);
  final List mProps;

  @override
  List<Object> get props => this.mProps;
}

class GetProfile extends DashboardEvent {}

class CheckLogin extends DashboardEvent {}

class SetLogout extends DashboardEvent {}
