import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

abstract class CheckoutState extends Equatable {
  final List mProps;
  CheckoutState([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class CheckoutLoading extends CheckoutState {}

class CheckoutLoaded extends CheckoutState {
  final List<ItemBeli> listCheckout;
  final int totalBeli;
  CheckoutLoaded({this.listCheckout, this.totalBeli})
      : super([listCheckout, totalBeli]);
}

class CheckoutError extends CheckoutState {}

class CheckoutInitial extends CheckoutState {}
