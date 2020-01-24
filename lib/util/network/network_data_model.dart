class NetworkDataModel {
  Map<String, dynamic> response;
  String error;
  int code;

  NetworkDataModel({
    this.code,
    this.error,
    this.response,
  });
}
