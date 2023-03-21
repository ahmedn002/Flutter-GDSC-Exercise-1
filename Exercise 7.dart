import 'dart:io';
import 'dart:math';

void main() {
  // Make a two-player Rock-Paper-Scissors game against computer.

  stdout.write('Choose: [R, P, S]\n> ');
  String playerChoice = stdin.readLineSync().toString();

  List<String> options = ['R', 'P', 'S'];
  final now = DateTime.now();
  int randomNumber = Random(now.millisecondsSinceEpoch).nextInt(3);
  String computerChoice = options[randomNumber];

  Map<String, String> rules = {'R': 'S', 'P': 'R', 'S': 'P'};

  print('Computer\'s choice is $computerChoice');
  if (playerChoice == computerChoice) {
    print('The result is a draw');
  } else if (rules[playerChoice] == computerChoice) {
    print('You won');
  } else {
    print('You lost.');
  }
}