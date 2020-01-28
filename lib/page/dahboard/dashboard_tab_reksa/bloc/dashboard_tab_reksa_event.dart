import 'package:equatable/equatable.dart';

abstract class DashboardTabReksaEvent extends Equatable {
  DashboardTabReksaEvent([this.mProps = const []]);
  final List mProps;

  @override
  List<Object> get props => this.mProps;
}

class GetReksaByCode extends DashboardTabReksaEvent {
  final int reksaCode;
  GetReksaByCode({this.reksaCode}) : super([reksaCode]);
}
