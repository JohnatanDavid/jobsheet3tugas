import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (var i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print('=== Prime Check ===');
  stdout.write('Masukkan bilangan bulat: ');
  final n = int.tryParse(stdin.readLineSync() ?? '');
  if (n == null) {
    print('Input tidak valid.');
    return;
  }
  if (n < 0) {
    print('Tidak bisa cek bilangan negatif.');
    return;
  }
  print(isPrime(n) ? '$n adalah bilangan prima' : '$n bukan bilangan prima');
}
