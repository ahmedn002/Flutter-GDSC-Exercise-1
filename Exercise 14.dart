import 'dart:io';
import 'dart:math';

void main() {
  // Write a password generator in Dart.

  String lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  String upperCase = lowerCase.toUpperCase();
  String numbers = '0123456789';
  String symbols = '!@#\$%^&*()_+-=/\\[],><;~''""{}';
  List<String> pool = [lowerCase, upperCase, numbers, symbols];

  String password = '';

  stdout.write('Enter the password length.\n> ');
  int passwordLength = int.parse(stdin.readLineSync().toString());

  int min = 0, max = 4, randomNumber;
  for (int i = 0; i < passwordLength; i++) {
    randomNumber = min + Random().nextInt(max - min);
    String currentPool = pool[randomNumber];

    max = currentPool.length;
    randomNumber = min + Random().nextInt(max - min);
    password += currentPool[randomNumber];

    max = 4;
  }

  print(password);
}