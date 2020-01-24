import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {
  DashboardEvent([this.mProps = const []]);
  final List mProps;

  @override
  List<Object> get props => this.mProps;
}
