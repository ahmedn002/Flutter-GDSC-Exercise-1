import 'dart:io';

void main() {
  // Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

  stdout.write('Enter a number.\n> ');
  int number = int.parse(stdin.readLineSync().toString());
  String message = number % 2 == 0 ? "Number is even" : "Number is odd";
  print(message);
}