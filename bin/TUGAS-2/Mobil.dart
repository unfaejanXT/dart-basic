class Mobil {
  var kapasitas;
  var muatan = [];

  // Method untuk menambahkan hewan ke dalam muatan mobil
  void tambahMuatan(Hewan hewan) {
    if (muatan.length < kapasitas) {
      muatan.add(hewan);
    } else {
      print('Mobil sudah penuh!');
    }
  }

  // Method asynchronous untuk menghitung total muatan dengan pengali
  Future<List<int>> totalMuatan(List<int> data, int pengali) async {
    List<int> hasil = [];
    // Melakukan perulangan asynchronous pada list data
    await Future.forEach(data, (int element) async {
      int hasilPerulangan = element * pengali;
      hasil.add(
          hasilPerulangan); // Menambahkan hasil pengalian ke dalam list hasil
    });
    return hasil; // Mengembalikan list hasil pengalian
  }
}

class Hewan {
  var Berat;

  Hewan(this.Berat);
}

void main(List<String> arguments) async {
  var mobil = Mobil();
  mobil.kapasitas = 5; // Kapasitas mobil adalah 5

  var data = [1, 2, 3, 4, 5];
  var pengali = 2;

  // Memanggil totalMuatan dengan data dan pengali yang ditentukan
  List<int> hasil = await mobil.totalMuatan(data, pengali);

  // Mencetak hasil pengalian
  print('Hasil pengalian: $hasil');
}
