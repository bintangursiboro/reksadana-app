import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {
  final List mProps;
  RegisterState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class RegisterInitial extends RegisterState {}
