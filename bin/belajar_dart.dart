import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io';

void main(List<String> arguments) {
  print('Hello world: ${belajar_dart.calculate()}!');
  welcome();
  dataTemp();
}

void welcome() {
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}

void dataTemp() {
  stdout.writeln('Selamat datang di kalkulator konversi suhu');
  String valueType = '';
  String valueEnd = '';
  String currentTemp;
  while (valueType == '' || !(valueType == '1' || valueType == '2' || valueType == '3' || valueType == '4')) {
    stdout.write('1. Celsius\n2. Fahrenheit\n3. Reaumur\n4. Kelvin\n');
    stdout.write('Silahkan memilih jenis awal suhu dengan angka 1-4 : ');
    valueType = stdin.readLineSync()!;
  }
  while (valueEnd == '' || !(valueEnd == '1' || valueEnd == '2' || valueEnd == '3' || valueEnd == '4')) {
    stdout.write('1. Celsius\n2. Fahrenheit\n3. Reaumur\n4. Kelvin\n');
    stdout.write('Silahkan memilih jenis akhir suhu dengan angka 1-4 : ');
    valueEnd = stdin.readLineSync()!;
  }
  stdout.write('Suhu sekarang sesuai jenis awal suhu : ');
  currentTemp = stdin.readLineSync()!;
  if (valueType == valueEnd) {
    stdout.writeln('Jenis suhu awal dan suhu akhir anda sama, sehingga tidak perlu konversi : $currentTemp');
  }
}
