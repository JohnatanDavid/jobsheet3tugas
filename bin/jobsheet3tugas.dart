import 'dart:io';
import 'dart:math';

void guessingGame({int maxNumber = 50, int maxAttempts = 5}) {
  final target = Random().nextInt(maxNumber) + 1;
  print('Tebak angka 1–$maxNumber. Kamu punya $maxAttempts kesempatan!');

  for (var i = 1; i <= maxAttempts; i++) {
    stdout.write('Tebakan ke-$i: ');
    final guess = int.tryParse(stdin.readLineSync() ?? '');
    if (guess == null) {
      print('Input tidak valid, coba lagi.');
      continue;
    }
    if (guess == target) {
      print('🎉 Benar! Angka yang dicari $target');
      return;
    } else if (guess < target) {
      print('Terlalu kecil.');
    } else {
      print('Terlalu besar.');
    }
  }
  print('😢 Kesempatan habis, jawabannya $target.');
}

void main() {
  guessingGame();
}
