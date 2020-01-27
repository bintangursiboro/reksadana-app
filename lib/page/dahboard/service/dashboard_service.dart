import 'package:hoopiper_reksa/model/model_reksa.dart';
import 'package:hoopiper_reksa/util/di/injector_container.dart';
import 'package:hoopiper_reksa/util/network/network_interface.dart';

class DashboardService {
  NetworkInterface _networkInterface =
      InjectorContainer().getNetworkInterface();

  Future<ReksaCampuran> getReksaCampuran() async {
    return await _networkInterface
        .requestGet(path: 'reksa_campuran')
        .then((response) {
      return ReksaCampuran.fromJson(response.response);
    });
  }

  Future<TopReksa> getTopReksa() async {
    return await _networkInterface
        .requestGet(path: 'top_reksa')
        .then((response) {
      return TopReksa.fromJson(response.response);
    });
  }

  Future<ReksaSaham> getReksaSaham() async {
    return await _networkInterface
        .requestGet(path: 'reksa_saham')
        .then((response) {
      return ReksaSaham.fromJson(response.response);
    });
  }

  Future<ReksaPasarUang> getReksaPasarUang() async {
    return await _networkInterface
        .requestGet(path: 'reksa_pasar_uang')
        .then((response) {
      return ReksaPasarUang.fromJson(response.response);
    });
  }
}
