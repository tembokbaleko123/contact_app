class MapToList {
  List<Map<String, dynamic>> kontakList = [];

  void tambahKontak(String name, dynamic nomer) {
    Map<String, dynamic> kontak = {
      // 'id': id,
      "Nama": name,
      "No_telp": nomer,
    };
    kontakList.add(kontak);
  }

  List<Map<String, dynamic>> getKontakList() {
    return kontakList;
  }

  void hapusKontak(int id) {
    kontakList.removeAt(id);
  }
}
