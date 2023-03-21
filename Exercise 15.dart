import 'dart:io';
import 'dart:math';

void main() {
  // Cows and Bulls game.

  const int numberLength = 4, min = 0, max = 10;
  String number = '';
  for (int i = 0; i < numberLength; i++) {
    number += (min + Random().nextInt(max - min)).toString();
  }

  stdout.write('Enter your guess.\n> ');
  String guess = stdin.readLineSync().toString();
  int guessCount = 1, cows = 0, bulls = 0;

  while (guess != number) {
    for (int i = 0; i < numberLength; i++) {
      if (guess[i] == number[i]) {
        cows++;
      } else if (number.contains(guess[i])) {
        bulls++;
      }
    }
    stdout.write('Cows: $cows\n Bulls: $bulls\n> ');
    guess = stdin.readLineSync().toString();
    guessCount++;
    cows = bulls = 0;
  }
  print('Correct. You guessed $guessCount time(s).');
}