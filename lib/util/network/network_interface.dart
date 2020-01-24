import 'package:dio/dio.dart';
import 'package:hoopiper_reksa/util/network/network_data_model.dart';

class NetworkInterface {
  final Dio networkInterface;
  NetworkInterface(this.networkInterface);

  Future<NetworkDataModel> requestGet(
      {String path, Map<String, dynamic> queryParameter}) async {
    return await networkInterface
        .get(path, queryParameters: queryParameter)
        .then((response) {
      return NetworkDataModel(
        code: response.statusCode,
        error: '',
        response: response.data,
      );
    });
  }

  Future<NetworkDataModel> requestPost(
      {String path, Map<String, dynamic> queryParameter}) async {
    return await networkInterface
        .post(path, queryParameters: queryParameter)
        .then((response) {
      return NetworkDataModel(
        code: response.statusCode,
        error: '',
        response: response.data,
      );
    });
  }
}
