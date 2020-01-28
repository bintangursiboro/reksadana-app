import 'package:equatable/equatable.dart';

abstract class DetailBeliEvent extends Equatable {
  final List mProps;
  DetailBeliEvent([this.mProps = const []]);

  @override
  List<Object> get props => this.mProps;
}

class GetDetailReksa extends DetailBeliEvent {
  final int id;
  GetDetailReksa({this.id}) : super([id]);
}
