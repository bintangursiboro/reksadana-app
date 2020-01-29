import 'package:equatable/equatable.dart';

abstract class JualReksaEvent extends Equatable {
  final List mProps;
  JualReksaEvent([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class SellReksaDana extends JualReksaEvent {
  final int id;
  SellReksaDana({this.id}) : super([id]);
}
