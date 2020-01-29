import 'package:equatable/equatable.dart';

class ReksaDanaKuEvent extends Equatable {
  final List mProps;
  ReksaDanaKuEvent([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class GetMyReksaDana extends ReksaDanaKuEvent {}
