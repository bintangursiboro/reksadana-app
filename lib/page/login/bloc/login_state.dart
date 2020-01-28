import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_register.dart';

class LoginState extends Equatable {
  final List mProps;
  LoginState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  final RegisterModel registerUser;
  LoginSuccess({this.registerUser}) : super([registerUser]);
}

class LoginError extends LoginState {}

class LoginLoading extends LoginState {}

class HasLogin extends LoginState {}
