import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/di/injector_container.dart';
import 'package:hoopiper_reksa/util/exception/unexpected_error_exception.dart';
import 'package:hoopiper_reksa/util/network/network_interface.dart';

class DetailBeliService {
  NetworkInterface _networkInterface =
      InjectorContainer().getNetworkInterface();

  Future<ReksaDana> getDetailReksaDana({int id}) async {
    return await _networkInterface
        .requestGet(path: 'reksa_saham/$id')
        .then((reksaDana) {
      if (reksaDana != null) {
        return ReksaDana.fromJson(reksaDana.response);
      }
      throw UnexpectedErrorException();
    });
  }
}
