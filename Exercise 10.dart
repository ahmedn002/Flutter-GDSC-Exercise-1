void main() {
  // Write a program that takes a list of numbers and makes a new list of only the first and last elements of the given list.

  List<int> numbers = [5, 10, 15, 20, 25];
  
  print(firstAndLast(numbers));
}

List<int> firstAndLast(List<int> numbers) {
  return [numbers[0], numbers[numbers.length-1]];
}