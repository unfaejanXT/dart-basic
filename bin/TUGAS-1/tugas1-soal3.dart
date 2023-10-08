void main(List<String> arguments) {
  //Mencetak Faktrial 10
  print("Hasil Dari Faktorial 10 : ${hitungFaktorial(10)}");
  //Mencetak Faktrial 20
  print("Hasil Dari Faktorial 20 : ${hitungFaktorial(20)}");
  //Mencetak Faktrial 30
  print("Hasil Dari Faktorial 30 : ${hitungFaktorial(30)}");
}

//Membuat fungsi hitungFaktorial yang mengembalikan nilai hasil dari faktorial
double hitungFaktorial(double n) {
  if (n == 0) {
    return 1;
  } else {
    return n * hitungFaktorial(n - 1);
  }
}
