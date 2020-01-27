import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

abstract class DashboardTopReksaState extends Equatable {
  final List mProps;
  DashboardTopReksaState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class DashboardTopReksaInitial extends DashboardTopReksaState {}

class DashboardTopReksaError extends DashboardTopReksaState {}

class DashboardTopReksaLoading extends DashboardTopReksaState {}

class DashboardTopReksaLoaded extends DashboardTopReksaState {
  final List<ReksaDana> topReksa;
  DashboardTopReksaLoaded({this.topReksa}) : super([topReksa]);
}
