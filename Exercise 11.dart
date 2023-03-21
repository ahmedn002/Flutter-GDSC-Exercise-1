import 'dart:io';

void main() {
  // Write a program that asks the user how many Fibonacci numbers to generate and then generates them.

  stdout.write('Enter the length of the sequence.\n> ');
  int sequenceLength = int.parse(stdin.readLineSync().toString());
  List<int> sequence = [];

  for (int i = 0; i < sequenceLength; i++) {
    sequence.add(fibonacci(i));
  }

  print('The $sequenceLength length Fibonacci sequence is: ${sequence.join(' ')}');
}

int fibonacci(int length) {
  if (length == 0 || length == 1) {
    return length;
  }

  return fibonacci(length-1) + fibonacci(length-2);
}