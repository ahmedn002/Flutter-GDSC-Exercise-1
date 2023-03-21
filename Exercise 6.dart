void main() {
  // Write a Dart code that takes a list and makes a new list that has only the even elements of this list in it.

  List<int> numbers = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenNumbers = [];

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  print('Even numbers are: ${evenNumbers.join(' ')}');
}