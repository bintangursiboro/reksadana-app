import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

abstract class CheckoutEvent extends Equatable {
  final List mProps;
  CheckoutEvent([this.mProps]);

  @override
  List<Object> get props => this.mProps;
}

class GetCheckoutList extends CheckoutEvent {}

class CheckoutNow extends CheckoutEvent {
  final List<ItemBeli> list;
  CheckoutNow({this.list}) : super([list]);
}

class DeleteCheckout extends CheckoutEvent {}
