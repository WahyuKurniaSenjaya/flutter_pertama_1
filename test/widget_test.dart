//oop
//class
class Kendaraan {
  String? merk;
  String? nama;
  int? harga;

  //construktor
  Kendaraan(this.merk, this.nama, this.harga);

  //method
  maju(int kecepatan) {
    print(kecepatan.toString() + 'KM/Jam');
  }
}

//Inheritance atau Pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaksimal})
      : super(merk = merk);
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_pertama/main.dart';

void main() {
    print('VARIAN');
    //var
  var mahasiswa = "Wahyu Kurnia"; 
  var umur = "20";

  print(mahasiswa + " Usia = " + umur.toString());

  //string
    print('STRING');
  String mahasiswaString = "WHY";

  print(mahasiswaString);

  //int
    print('INTEGER');
  int semester = 5;

  print(semester);

  //double
    print('DOUBLE');
  double ipk = 3.9;

  print(ipk);

  //boolean
    print('BOOLEAN');
  bool benar = true;
  bool salah = false;
  bool tidakbenar = false;
  bool tidaksalah = true;

  //List
    print('LIST');
  List jurusan = ["Sistem Informasi", "DKV", "Teknik Informatika"];

  print(jurusan);

  //Map
    print('MAP');
  Map kelas = {"Nama": "Wahyu Kurnia", "Kelas": "SI E-Bisnis 5"};

  print(kelas);
  print(kelas['Nama']);

  //Map
    print('MAP STRING DYNAMIC');
  Map<String, dynamic> kelas2 = {
    "Nama": "Wahyu Kurnia",
    "Kelas": "SI E-Bisnis 5",
  };

  print(kelas2);
  print(kelas2["Nama"]);
  print(kelas2["Kelas"]);
}

  //OPERATOR
print('OPERATOR');
  int a, b;
  a = 9;
  b = 7;

  print("a - " + a.toString());
  print("b - " + b.toString());

  print(a + b);
  print(a - b);
  print(a / b);
  print(a * b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);


  // conditional
  print('CONDITIONAL');
  var nilai;
  nilai = 90;

  if (nilai >= 85) {
    print('A');
  } else if (nilai <= 84 && nilai >= 76) {
    print('B');
  } else if (nilai <= 75 && nilai >= 60) {
    print('C');
  } else {
    print('D');
  }

  nilai >= 60 ? print('Lulus') : print('Tidak Lulus');

  //Function
  print('FUNCTION');

  hitungNilai();
  hitungNilai1(75, 90);
  hitungNilai2(mapel1: 70, mapel2: 80);
  hitungNilai3(75, 75, 100);
  hitungNilai4(75, 100);

//Const Final
  //Const
  print('CONST');
  const String mahasiswafk = "Wahyu Kurnia";

  print(mahasiswafk);

  //Final
  print('FINAL');
  final String mahasiswafk1;

  mahasiswafk1 = "Wahyu Kurnia";

  print(mahasiswafk1);

  //Null Safety
  // ? ! Late
  // ? Digunakan pada kondisi boleh null
  // ! Memaksa untuk dijalankan/yakin ada datanya
  // Late Untuk diisi nanti
  print('NULL SAFETY');
  String? jurusan1;

  jurusan1 = "Sistem Informasi";

  print(jurusan1.length);

  late String prodi;

  prodi = "SI";

  print(prodi.length);

  //Perulangan Looping
  print('PERULANGAN LOOPING');
  //For +
  for (int no = 1; no <= 5; no++) {
    print(no);
  }

  //For -
  for (int no = 5; no >= 1; no--) {
    print(no);
  }

  //While
  int no1 = 1;
  int no2 = 2;
  while (no1 <= no2) {
    print(no1);
    no1++;
  }

  //Do While
  int no3 = 1;
  int no4 = 5;
  do {
    print(no3);
    no3++;
  } while (no3 <= no4);
}

//function
//function
hitungNilai() {
  print('Hitung Nilai');
}

//positional argument
hitungNilai1(mapel1, mapel2) {
  print(mapel1 + mapel2);
}

//name argument
hitungNilai2({mapel1, mapel2}) {
  print(mapel1 + mapel2);
}

//optional argument
hitungNilai3(mapel1, mapel2, [mapel3]) {
  if (mapel3 != null) {
    print(mapel1 + mapel2 + mapel3);
  } else {
    print(mapel1 + mapel2);
  }

//void
void hitungNilai4(mapel1, mapel2) {
  print(mapel1 + mapel2);
}

//oop
//class
class Kendaraan {
  String? merk;
  String? nama;
  int? harga;

  //construktor
  Kendaraan(this.merk, this.nama, this.harga);

  //method
  maju(int kecepatan) {
    print(kecepatan.toString() + 'KM/Jam');
  }
}

//Inheritance atau Pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaksimal})
      : super(merk = merk);
}

void main() {
  //Instansiasi
  var k1 = Kendaraan(merk: 'Honda', nama: 'Civic', harga: 500);
  var kecepatan = k1.maju(70);

  k1.merk = 'Honda';
  print(kecepatan);
  print(k1.maju(70));
  print(k1.merk);
  print(k1.nama);
  print(k1.harga);

  var k2 = Kendaraan(merk: 'Mitsubishi', nama: 'ColtDiesel', harga: 700);
  var kecepatan2 = k2.maju(40);
  print(kecepatan2);
  print(k2.maju(40));
  print(k2.merk);
  print(k2.nama);
  print(k2.harga);

  var sedan1 = Sedan(jumlahPintu: 4, kecepatanMaksimal: 140, merk: 'Honda');
  print('---------');
  print(sedan1.jumlahPintu);
  print(sedan1.kecepatanMaksimal);
  print(sedan1.merk);
}
