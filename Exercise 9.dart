void main() {
  // Ask the user for a number and determine whether the number is prime or not.

  for (int number in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]) {
    print('$number is prime? ${isPrime(number)}');
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  bool divisible = false;
  for (int i = number-1; i > 1; i--) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}