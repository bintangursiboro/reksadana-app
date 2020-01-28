import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([this.mProps = const []]);
  final List mProps;

  @override
  List<Object> get props => this.mProps;
}

class LoginUser extends LoginEvent {
  final String username;
  final String password;

  LoginUser({this.password, this.username}) : super([username, password]);
}

class CheckLogin extends LoginEvent {}

class SetLogin extends LoginEvent {}
