import 'package:equatable/equatable.dart';

abstract class CheckoutEvent extends Equatable {
  final List mProps;
  CheckoutEvent([this.mProps]);

  @override
  List<Object> get props => this.mProps;
}

class GetCheckoutList extends CheckoutEvent {}
