import 'dart:io';

void main() {
  // Ask the user for a string and print out whether this string is a palindrome or not.

  stdout.write('Enter a string.\n> ');
  String string = stdin.readLineSync().toString().toLowerCase().replaceAll(RegExp('[^A-Za-z0-9]'), '');

  if (string.split('').reversed.join('') == string) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome');
  }
}