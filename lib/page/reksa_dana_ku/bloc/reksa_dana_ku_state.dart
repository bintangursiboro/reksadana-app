import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

abstract class ReksaDanaKuState extends Equatable {
  final List mProps;
  ReksaDanaKuState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class ReksaDanaKuLoaded extends ReksaDanaKuState {
  final List<ItemBeli> listItemBeli;
  ReksaDanaKuLoaded({this.listItemBeli}) : super([listItemBeli]);
}

class ReksaDanaKuLoading extends ReksaDanaKuState {}

class ReksaDanaKuInitial extends ReksaDanaKuState {}

class ReksaDanaKuError extends ReksaDanaKuState {}
