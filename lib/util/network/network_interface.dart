import 'package:dio/dio.dart';
import 'package:hoopiper_reksa/util/network/network_data_model.dart';

class NetworkInterface {
  final Dio networkInterface;
  NetworkInterface(this.networkInterface);
  final String baseUrl =
      'https://my-json-server.typicode.com/bintangursiboro/fake-reksa/';

  Future<NetworkDataModel> requestGet(
      {String path, Map<String, dynamic> queryParameter}) async {
    print('Called');
    return await networkInterface
        .get('$baseUrl$path', queryParameters: queryParameter)
        .then((response) {
      print('${response.data}');
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
