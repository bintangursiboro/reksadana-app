class Validator {
  static String validateNumber(String value) {
    String pattern = r'^[0-9]*$';
    RegExp patterns = RegExp(pattern);
    if (value.length == 0) {
      return 'Tidak Boleh Kosong';
    } else if (!patterns.hasMatch(value)) {
      return 'Harus Berupa Angka';
    } else if (int.parse(value) < 100000) {
      return 'Minimal pembelian Rp. 100.000';
    }
    return null;
  }

  static String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Tidak Boleh Kosong";
    } else if (!regExp.hasMatch(value)) {
      return "Teks harus berisi alpabet";
    }
    return null;
  }

  static String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email dibutuhkan";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
}
