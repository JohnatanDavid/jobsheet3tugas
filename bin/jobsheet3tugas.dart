import 'dart:io';

int factorial(int n) {
  if (n < 0) throw ArgumentError('Angka tidak boleh negatif');
  return List.generate(n, (i) => i + 1).fold(1, (a, b) => a * b);
}

void main() {
  print('=== Factorial Demo ===');
  stdout.write('Masukkan bilangan >= 0: ');
  final n = int.tryParse(stdin.readLineSync() ?? '');
  if (n == null || n < 0) {
    print('Input tidak valid.');
    return;
  }
  print('$n! = ${factorial(n)}');
}
