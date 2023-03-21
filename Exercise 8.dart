import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
  //
  // Keep track of how many guesses the user has taken, and when the game ends, print it out.

  final now = DateTime.now();
  int min = 1, max = 100;
  int randomNumber = min + Random(now.millisecondsSinceEpoch).nextInt(max - min);

  stdout.write('Guess the number.\n> ');
  int guessCounter = 1;
  int guess = int.parse(stdin.readLineSync().toString());

  while (guess != randomNumber) {
    if (guess > randomNumber) {
      stdout.write('Too high.\n> ');
    } else {
      stdout.write('Too low.\n> ');
    }
    guessCounter++;
    guess = int.parse(stdin.readLineSync().toString());
  }

  print('Correct. Your number of guesses was $guessCounter guess(es).');
}