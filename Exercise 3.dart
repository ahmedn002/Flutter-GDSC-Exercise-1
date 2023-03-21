import 'dart:io';

void main() {
  // Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

  stdout.write('Enter a number.\n> ');
  int number = int.parse(stdin.readLineSync().toString());

  List<int> divisors = [];
  for (int divisor = number; divisor > 0; divisor--) {
    if (number % divisor == 0) {
      divisors.add(divisor);
    }
  }

  print('Divisors are: ${divisors.join(' ')}');
}