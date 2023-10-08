void main(List<String> arguments) {
  //Inisialisasi Variabel
  const double pi = 3.14;
  double jariJari = 7;

  //Menghitung Luas Lingkaran & Keliling Lingkaran
  double kelilingLingkaran = 2 * pi * jariJari;
  double luasLingkaran = pi * jariJari * jariJari;

  //Mencetak Output
  print("Keliling Lingkaran : ${kelilingLingkaran}");
  print("Luas Lingkaran : ${luasLingkaran}");
}
