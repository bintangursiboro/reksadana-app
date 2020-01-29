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

class RiwayatKeuntunganModel {
  String blnEnam;
  String tahunSatu;
  String tahunDua;
  String tahunTiga;

  RiwayatKeuntunganModel.fromJson(Map<String, dynamic> response) {
    this.blnEnam = response['bln_enam'] ?? '';
    this.tahunSatu = response['tahun_satu'] ?? '';
    this.tahunDua = response['tahun_dua'] ?? '';
    this.tahunTiga = response['tahun_tiga'] ?? '';
  }

  RiwayatKeuntunganModel.initial() {
    this.blnEnam = '';
    this.tahunSatu = '';
    this.tahunDua = '';
    this.tahunTiga = '';
  }
}

class ReksaDana {
  int id;
  String titleReksa;
  String jenis;
  String minPembelian;
  String nextPembelian;
  String tglPeluncuran;
  String danaKelola;
  String hargaUnit;
  bool isGrowth;
  RiwayatKeuntunganModel riwayatKeuntungan;

  ReksaDana.fromJson(Map<String, dynamic> response) {
    this.id = response['id'] ?? 0;
    this.titleReksa = response['title_reksa'] ?? '';
    this.jenis = response['jenis'] ?? '';
    this.minPembelian = response['min_pembelian'] ?? '';
    this.nextPembelian = response['next_pembelian'] ?? '';
    this.danaKelola = response['dana_kelola'] ?? '';
    this.hargaUnit = response['harga_unit'] ?? '';
    this.isGrowth = response['isGrowth'] ?? false;
    this.tglPeluncuran = response['tgl_peluncuran'] ?? '';
    this.riwayatKeuntungan =
        RiwayatKeuntunganModel.fromJson(response['riwayat_keuntungan']) ??
            RiwayatKeuntunganModel.initial();
  }

  ReksaDana.initial() {
    this.id = 0;
    this.titleReksa = '';
    this.jenis = '';
    this.minPembelian = '';
    this.nextPembelian = '';
    this.danaKelola = '';
    this.hargaUnit = '';
    this.isGrowth = false;
    this.riwayatKeuntungan = RiwayatKeuntunganModel.initial();
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

class Profile {
  String name;
  String totalDana;

  Profile.fromJson(Map<String, dynamic> response) {
    this.name = response['name'] ?? '';
    this.totalDana = response['total_dana'] ?? '';
  }

  Profile.error() {
    this.name = 'Terjadi Kesalahan';
    this.totalDana = 'Rp. 0';
  }

  Profile.loading() {
    this.name = 'Loading..';
    this.totalDana = 'Loading..';
  }
}

class ItemBeli {
  String titleReksa;
  String hargaUnit;
  String jenis;
  int jlhBeli;
  int columnId;

  ItemBeli.fromJson(Map<String, dynamic> response) {
    this.jlhBeli = response['jumlahBeli'] ?? 0;
    this.titleReksa = response['titleReksa'] ?? '';
    this.hargaUnit = response['hargaUnit'] ?? '';
    this.jenis = response['jenis'] ?? '';
    this.columnId = response['columnId'] ?? -1;
  }

  static List<ItemBeli> parseList(List<dynamic> response) {
    List<ItemBeli> list = [];

    response.forEach((item) {
      list.add(ItemBeli.fromJson(item));
    });
    return list;
  }
}
