import 'package:bloc/bloc.dart';
import 'package:hoopiper_reksa/page/checkout/bloc/checkout_event.dart';
import 'package:hoopiper_reksa/page/checkout/bloc/checkout_state.dart';
import 'package:hoopiper_reksa/page/checkout/service/checkout_service.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  @override
  CheckoutState get initialState => CheckoutInitial();

  CheckoutService _service = CheckoutService();

  @override
  Stream<CheckoutState> mapEventToState(CheckoutEvent event) async* {
    if (event is GetCheckoutList) {
      try {
        int total = 0;
        yield await _service.getAllItemBeli().then((listCheckout) {
          listCheckout.forEach((model) {
            total += model.jlhBeli;
          });
          return CheckoutLoaded(listCheckout: listCheckout, totalBeli: total);
        });
      } catch (_) {
        yield CheckoutError();
      }
    }
    if (event is CheckoutNow) {
      yield await _service.checkoutAllItem(event.list).then((onValue) {
        return CheckoutSuccess();
      });
    }
  }
}
