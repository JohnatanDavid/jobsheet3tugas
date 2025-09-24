// bin/jobsheet3tugas.dart
import 'dart:io';
import 'dart:math';

int factorial(int n) {
  if (n < 0) return -1;
  int result = 1;
  for (var i = 2; i <= n; i++) result *= i;
  return result;
}

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

/// Game tebak angka
void guessingGame({int maxNumber = 100, int maxAttempts = 7}) {
  final rand = Random();
  final target = rand.nextInt(maxNumber) + 1;
  print('Tebak angka antara 1 dan $maxNumber. Kamu punya $maxAttempts kesempatan.');
  int attempts = 0;

  while (attempts < maxAttempts) {
    stdout.write('Tebakan ke-${attempts + 1}: ');
    final guess = int.tryParse(stdin.readLineSync() ?? '');
    if (guess == null) {
      print('Input tidak valid. Coba lagi.');
      continue;
    }
    attempts++;
    if (guess == target) {
      print('Benar! Kamu menebak dalam $attempts percobaan.');
      return;
    } else if (guess < target) {
      print('Terlalu kecil.');
    } else {
      print('Terlalu besar.');
    }
  }
  print('Kesempatan habis. Jawaban yang benar adalah $target.');
}

void main() {
  print('=== Jobsheet3Tugas - Menu ===');
  print('1) Hitung faktorial');
  print('2) Cek bilangan prima');
  print('3) Game tebak angka');
  stdout.write('Pilih (1/2/3): ');
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
  } else if (choice == '3') {
    guessingGame();
  } else {
    print('Pilihan tidak dikenali.');
  }
}
