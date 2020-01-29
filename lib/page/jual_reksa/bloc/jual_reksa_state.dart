import 'package:equatable/equatable.dart';

abstract class JualReksaState extends Equatable {
  final List mProps;
  JualReksaState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class JualReksaInitial extends JualReksaState {}

class JualReksaLoaded extends JualReksaState {}

class JualReksaLoading extends JualReksaState {}

class JualReksaError extends JualReksaState {}
