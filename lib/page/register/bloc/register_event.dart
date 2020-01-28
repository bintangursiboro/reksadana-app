import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_register.dart';

abstract class RegisterEvent extends Equatable {
  final List mProps;
  RegisterEvent([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class RegisterUser extends RegisterEvent {
  final RegisterModel model;
  RegisterUser({this.model}) : super([model]);
}

class FetchUser extends RegisterEvent {}
