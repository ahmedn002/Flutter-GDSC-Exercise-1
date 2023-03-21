void main() {
  // Take two list and write a program that returns a list that contains only the elements that are common between them.
  List<int> firstList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> secondList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> commonList = [];

  for (int number in firstList) {
    if (secondList.contains(number)) {
      commonList.add(number);
    }
  }

  print('Common elements are: ${commonList.join(' ')}');
}