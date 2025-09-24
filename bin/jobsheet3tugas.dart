// bin/jobsheet3tugas.dart
import 'dart:io';

/// Hitung faktorial dengan perulangan (loop)
int factorial(int n) {
  if (n < 0) return -1; // tandai invalid
  int result = 1;
  for (var i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  print('=== Jobsheet3Tugas (Factorial demo) ===');
  stdout.write('Masukkan bilangan bulat >= 0: ');
  final input = stdin.readLineSync();
  final n = int.tryParse(input ?? '');
  if (n == null || n < 0) {
    print('Input tidak valid. Berhenti.');
    return;
  }
  final fact = factorial(n);
  print('$n! = $fact');
}
