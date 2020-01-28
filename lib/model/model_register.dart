class RegisterModel {
  String namaDepan;
  String namaBelakang;
  String email;
  String userName;
  String password;

  RegisterModel({
    this.password,
    this.userName,
    this.email,
    this.namaBelakang,
    this.namaDepan,
  });

  static Map<String, dynamic> toMap(RegisterModel model) {
    return {
      'namaDepan': model.namaDepan,
      'namaBelakang': model.namaBelakang,
      'email': model.email,
      'username': model.userName,
      'password': model.password,
    };
  }

  RegisterModel.fromJson(Map<String, dynamic> response) {
    this.userName = response['username'] ?? '';
    this.namaBelakang = response['namaBelakang'] ?? '';
    this.namaDepan = response['namaDepan'] ?? '';
    this.password = response['password'] ?? '';
    this.email = response['email'] ?? '';
  }
}
