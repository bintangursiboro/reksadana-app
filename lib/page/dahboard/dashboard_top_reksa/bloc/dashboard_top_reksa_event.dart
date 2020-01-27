import 'package:equatable/equatable.dart';

abstract class DashboardTopReksaEvent extends Equatable {
  final List mProps;
  DashboardTopReksaEvent([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class GetTopReksaList extends DashboardTopReksaEvent {}
