import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/detail_beli/bloc/detail_beli_event.dart';
import 'package:hoopiper_reksa/page/detail_beli/bloc/detail_beli_state.dart';
import 'package:hoopiper_reksa/page/detail_beli/service/detail_beli_service.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';

class DetailBeliBloc extends Bloc<DetailBeliEvent, DetailBeliState> {
  @override
  DetailBeliState get initialState => DetailBeliInitial();

  DetailBeliService _service = DetailBeliService();

  @override
  Stream<DetailBeliState> mapEventToState(DetailBeliEvent event) async* {
    if (event is GetDetailReksa) {
      yield DetailBeliLoading();

      try {
        yield await _service.getDetailReksaDana(id: event.id).then((value) {
          return DetailBeliLoaded(reksaDana: value);
        });
      } on UnexpectedErrorException catch (_) {
        yield DetailBeliError();
      }
    }
  }
}
