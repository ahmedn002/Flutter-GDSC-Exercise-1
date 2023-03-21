import 'dart:io';

void main() {
  stdout.write('Enter a string.\n> ');
  String string = stdin.readLineSync().toString();

  print(reverseString(string));
}

String reverseString(String string) {
  return string.split(' ').reversed.join(' ');
}