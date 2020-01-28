import 'package:equatable/equatable.dart';
import 'package:hoopiper_reksa/model/model_reksa.dart';

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

class BeliReksaDana extends DetailBeliEvent {
  final int jlhBeli;
  final ReksaDana reksaDana;
  BeliReksaDana({
    this.jlhBeli,
    this.reksaDana,
  }) : super([
          jlhBeli,
          reksaDana,
        ]);
}
