import 'package:dio/dio.dart';
import 'package:hoopiper_reksa/util/network/network_interface.dart';
import 'package:kiwi/kiwi.dart';

class InjectorContainer {
  initInjector() {
    final Container container = Container();

    //Inject Networking
    container.registerInstance(Dio());
    container.registerFactory((c) => NetworkInterface(c.resolve<Dio>()));
  }

  NetworkInterface getNetworkInterface() {
    final Container container = Container();
    return container.resolve<NetworkInterface>();
  }
}
