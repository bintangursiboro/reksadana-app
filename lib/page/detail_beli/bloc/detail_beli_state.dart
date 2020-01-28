import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

abstract class DetailBeliState extends Equatable {
  final List mProps;
  DetailBeliState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class DetailBeliLoading extends DetailBeliState {}

class DetailBeliLoaded extends DetailBeliState {
  final ReksaDana reksaDana;
  DetailBeliLoaded({this.reksaDana}) : super([reksaDana]);
}

class DetailBeliError extends DetailBeliState {}

class DetailBeliInitial extends DetailBeliState {}
