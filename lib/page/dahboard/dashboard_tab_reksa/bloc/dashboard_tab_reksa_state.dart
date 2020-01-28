import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

class DashboardTabReksaState extends Equatable {
  final List mProps;
  DashboardTabReksaState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class DashboardTabReksaInitial extends DashboardTabReksaState {}

class DashboardTabReksaLoading extends DashboardTabReksaState {}

class DashboardTabReksaLoaded extends DashboardTabReksaState {
  final List<ReksaDana> listReksa;
  DashboardTabReksaLoaded({this.listReksa}) : super([listReksa]);
}

class DashboardTabReksaError extends DashboardTabReksaState {}
