// bin/jobsheet3tugas.dart
import 'dart:io';
import 'dart:math';

/// Faktorial
int factorial(int n) {
  if (n < 0) return -1;
  int result = 1;
  for (var i = 2; i <= n; i++) result *= i;
  return result;
}

/// Cek prima (efisien: cek sampai sqrt(n))
bool isPrime(int n) {
  if (n <= 1) return false;
  if (n <= 3) return true;
  if (n % 2 == 0) return false;
  final limit = sqrt(n).toInt();
  for (var i = 3; i <= limit; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print('=== Jobsheet3Tugas - Menu ===');
  print('1) Hitung faktorial');
  print('2) Cek bilangan prima');
  stdout.write('Pilih (1/2): ');
  final choice = stdin.readLineSync();

  if (choice == '1') {
    stdout.write('Masukkan bilangan bulat >= 0: ');
    final n = int.tryParse(stdin.readLineSync() ?? '');
    if (n == null || n < 0) {
      print('Input tidak valid.');
      return;
    }
    print('$n! = ${factorial(n)}');
  } else if (choice == '2') {
    stdout.write('Masukkan bilangan bulat untuk dicek prima: ');
    final n = int.tryParse(stdin.readLineSync() ?? '');
    if (n == null) {
      print('Input tidak valid.');
      return;
    }
    print(n.isNegative ? 'Tidak berlaku untuk bilangan negatif' : (isPrime(n) ? '$n adalah prima' : '$n bukan prima'));
  } else {
    print('Pilihan tidak dikenali.');
  }
}
