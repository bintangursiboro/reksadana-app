class ModelReksaDana {}

class ProfileReksaDana {
  String name;
  String totalDana;

  ProfileReksaDana.fromJson(Map<String, dynamic> response) {
    this.name = response['name'] ?? '';
    this.totalDana = response['total_dana'] ?? '';
  }
}

class ReksaCampuran {
  List<ReksaDana> listReksadana;

  ReksaCampuran.fromJson(List<dynamic> response) {
    this.listReksadana = ReksaDana.parseList(response) ?? [];
  }
}

class TopReksa {
  List<ReksaDana> listReksadana;

  TopReksa.fromJson(List<dynamic> response) {
    this.listReksadana = ReksaDana.parseList(response) ?? [];
  }
}

class ReksaSaham {
  List<ReksaDana> listReksadana;

  ReksaSaham.fromJson(List<dynamic> response) {
    this.listReksadana = ReksaDana.parseList(response) ?? [];
  }
}

class ReksaPasarUang {
  List<ReksaDana> listReksadana;

  ReksaPasarUang.fromJson(List<dynamic> response) {
    this.listReksadana = ReksaDana.parseList(response) ?? [];
  }
}

class ReksaDana {
  int id;
  String titleReksa;
  String blnEnam;
  String tahunSatu;
  String tahunDua;
  String tahunTiga;
  String jenis;
  String minPembelian;
  String nextPembelian;
  String tglPeluncuran;
  String danaKelola;
  String hargaUnit;
  bool isGrowth;

  ReksaDana.fromJson(Map<String, dynamic> response) {
    this.id = response['id'] ?? 0;
    this.titleReksa = response['title_reksa'] ?? '';
    this.blnEnam = response['bln_enam'] ?? '';
    this.tahunSatu = response['tahun_satu'] ?? '';
    this.tahunDua = response['tahun_dua'] ?? '';
    this.tahunTiga = response['tahun_tiga'] ?? '';
    this.jenis = response['jenis'] ?? '';
    this.minPembelian = response['min_pembelian'] ?? '';
    this.nextPembelian = response['next_pembelian'] ?? '';
    this.danaKelola = response['dana_kelola'] ?? '';
    this.hargaUnit = response['harga_unit'] ?? '';
    this.isGrowth = response['isGrowth'] ?? '';
  }

  static List<ReksaDana> parseList(List<dynamic> response) {
    List<ReksaDana> list = [];
    if (response != null) {
      response.forEach((item) {
        list.add(ReksaDana.fromJson(item));
      });
      return list;
    }
    return list;
  }
}
